//
//  ViewController.swift
//  WhenThen ApplePay Demo
//
//  Created by whenthen on 14.6.2022.
//  Copyright © 2022 WhenThen. All rights reserved.
//

import Foundation
import UIKit
import PassKit

class ViewController: UIViewController {
    
    let flowId = ""

    static let supportedNetworks: [PKPaymentNetwork] = [
        .amex,
        .discover,
        .masterCard,
        .visa
    ]
    
    private var paymentRequest : PKPaymentRequest = {
    
        // Create a payment request.
        let paymentRequest = PKPaymentRequest()
        
        paymentRequest.merchantIdentifier = ""
        paymentRequest.merchantCapabilities = .capability3DS
        paymentRequest.countryCode = "US"
        paymentRequest.currencyCode = "USD"
        paymentRequest.supportedNetworks = supportedNetworks
        paymentRequest.shippingType = .delivery
        
        if #available(iOS 15.0, *) {
         #if !os(watchOS)
            paymentRequest.supportsCouponCode = true
         #endif
        } else {
            // Fallback on earlier versions
        }
                
        return paymentRequest;
    }()
    
    // Data Setup
    struct Shoe {
        var name: String
        var price: Double
    }
    
    let shoeData = [
        Shoe(name: "Nike Air Force 1 LV8", price: 110.00),
        Shoe(name: "Adidas Ultra Boost", price: 139.99),
        Shoe(name: "Jordan Retro", price: 190.00),
        Shoe(name: "New Balance Classic", price: 90.00)
    ]
    
    // Storyboard outlets
    @IBOutlet weak var shoePickerView: UIPickerView!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    @IBAction func buyShoeTapped(_ sender: UIButton) {
        
        // Display the payment sheet.
        let paymentController = PKPaymentAuthorizationViewController(paymentRequest: paymentRequest)
        if paymentController != nil {
            paymentController!.delegate = self
            present(paymentController!, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoePickerView.delegate = self
        shoePickerView.dataSource = self
        
        //set default cart item
        paymentRequest.paymentSummaryItems = [PKPaymentSummaryItem(label: shoeData[0].name, amount: NSDecimalNumber(value: shoeData[0].price))]
    }
    
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate, PKPaymentAuthorizationViewControllerDelegate  {
    
    func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
        
    func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void) {
        
        // Perform basic validation on the provided contact information.
        let errors = [Error]()
        
        var token = fromBase64(word: payment.token.paymentData.base64EncodedString())
        token = "{ \"paymentData\": \(token) }" //wrap token in paymentData object

        //let token = readLocalFile(forName: "ApplePayToken")!; //use local token
        
        //build the graphql request with token
        let authorizeInput = AuthorisedPaymentInput(
                        orderId: "xxxxx-orderId",
                        flowId: self.flowId,
                        paymentMethod: PaymentMethodDtoInput(
                            type: "APPLE_PAY",
                            walletToken: token)
                        )
        
        Request.shared.apollo.perform(
              mutation: AuthorizePaymentMutation( authorisePayment: authorizeInput)){ result in
              switch result {
                 case .success(let graphQLResult):
                        if let paymentResult = graphQLResult.data?.authorizePayment { //reflect payment success
                            if [.succeeded, .authorised].contains(paymentResult.status) {
                                completion(PKPaymentAuthorizationResult(status: .success, errors: nil))
                            }
                            print(paymentResult)
                        }
                        
                        if graphQLResult.errors != nil { //reflect api errors
                            print(graphQLResult.errors as Any)
                            completion(PKPaymentAuthorizationResult(status: .failure, errors: errors))
                        }
                  break
                case .failure(let error): //reflect network errors
                   print("Request failed! Error: \(error)")
                   completion(PKPaymentAuthorizationResult(status: .failure, errors: errors))
                  break
                }
            }
    }

    
    // MARK: - Pickerview update
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return shoeData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return shoeData[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let priceString = String(format: "%.02f", shoeData[row].price)
        priceLabel.text = "Price = $\(priceString)"
        paymentRequest.paymentSummaryItems = [PKPaymentSummaryItem(label: shoeData[row].name, amount: NSDecimalNumber(value: shoeData[row].price))]
    }
    
    // MARK: - Helper functions
    //for testing hardcoded token
    private func readLocalFile(forName name: String) -> String? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return String(data: jsonData, encoding: .utf8)!
            }
        } catch {
            print(error)
        }
        return nil
    }
    
    func fromBase64(word: String ) -> String {
        let base64Decode = Data(base64Encoded: word)!
        return String(data: base64Decode, encoding: .utf8)!
    }
    
}
