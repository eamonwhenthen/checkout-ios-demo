//
//  Request.swift
//  WhenThen ApplePay Demo
//
//  Created by whenthen on 14.6.2022.
//  Copyright © 2022 WhenThen. All rights reserved.
//

import Foundation
import Apollo
import UIKit

class Request {
    
    static let shared = Request()

    private let apiKey = ""
    private let apiEndpoint = "https://api.sandbox.whenthen.co/api/graphql"

    private(set) lazy var apollo: ApolloClient = {
        
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let idempotencyKey = UUID().uuidString

        let authPayloads = [
            "Authorization": "Bearer \(self.apiKey)",
            "X-Idempotency-Key": idempotencyKey
        ]
        
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = authPayloads
                
        let client = URLSessionClient(sessionConfiguration: configuration, callbackQueue:nil)
        
        let provider = NetworkInterceptorProvider(client:client, store: store)
                
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider as InterceptorProvider, endpointURL: URL(string: self.apiEndpoint)!)
        
        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
    
    
    class NetworkInterceptorProvider: DefaultInterceptorProvider {
        override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
            var interceptors = super.interceptors(for: operation)
            interceptors.insert(CustomInterceptor(), at: 0)
            return interceptors
        }
    }
    
        
   class CustomInterceptor: ApolloInterceptor {

        func interceptAsync<Operation: GraphQLOperation>(
            chain: RequestChain,
            request: HTTPRequest<Operation>,
            response: HTTPResponse<Operation>?,
            completion: @escaping (Swift.Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
            
            chain.proceedAsync(request: request,
                               response: response,
                               completion: completion)
        }
   }
}

