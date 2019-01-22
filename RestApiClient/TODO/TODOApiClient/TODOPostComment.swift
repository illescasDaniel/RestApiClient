//
//  TODOPostComment.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 16/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

extension TODOApiClient {
	struct PostComment {
		struct Request: RestApiClientQueryRequest {
			typealias Response = TODOApiClient.PostComment.Response // DATA if it is a binary file
			let resourceName: String = "posts"
			let queryDictionary: [String: Encodable] = [:]
		}
		struct BodyRequest: RestApiClientBodyRequest {
			let title: String
			let body: String
			let userId: Int
		}
		struct Response: RestApiClientResponse {
			let title: String
			let userId: Int
			let body: String
			let id: Int
		}
	}
}
