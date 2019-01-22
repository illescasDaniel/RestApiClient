//
//  TODOGetComment.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 16/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

extension TODOApiClient {
	struct GetComments {
		struct Request: RestApiClientQueryRequest {
			typealias Response = [TODOApiClient.GetComments.Response]
			let resourceName: String = "comments"
			let postId: Int
			var queryDictionary: [String: Encodable] {
				return ["postId": self.postId]
			}
		}
		struct Response: RestApiClientResponse {
			let postId: Int
			let id: Int
			let name: String
			let email: String
			let body: String
		}
	}
}
