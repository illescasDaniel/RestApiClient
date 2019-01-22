//
//  TODOPutComment.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 17/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

extension TODOApiClient {
	struct PutComment {
		struct Request: RestApiClientQueryRequest {
			typealias Response = TODOApiClient.PutComment.Response
			let resourceName: String = "posts"
			let extraResourcesPath: String
			let queryDictionary: [String: Encodable] = [:]
		}
		struct BodyRequest: RestApiClientBodyRequest {
			let id: Int
			let title: String
			let body: String
			let userId: Int
		}
		struct Response: RestApiClientResponse {
			let id: Int
			let title: String
			let body: String
			let userId: Int
		}
	}
}
