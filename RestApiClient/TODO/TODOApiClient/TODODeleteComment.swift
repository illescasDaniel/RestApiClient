//
//  TODODeleteComment.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 17/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

extension TODOApiClient {
	struct DeleteComment {
		struct Request: RestApiClientQueryRequest {
			typealias Response = TODOApiClient.DeleteComment.Response
			let resourceName: String = "posts"
			let extraResourcesPath: String
			let queryDictionary: [String: Encodable] = [:]
		}
		struct Response: RestApiClientResponse {}
	}
}
