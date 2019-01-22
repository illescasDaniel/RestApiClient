//
//  TODOClientService.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 22/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

class TODOClientService: RestApiClientCRUDService {
	
	let restApiClient: RestApiClientProtocol = TODOApiClient()
	
	typealias CreateRequestType = TODOApiClient.PostComment.Request
	typealias CreateBodyType = TODOApiClient.PostComment.BodyRequest
	
	typealias ReadRequestType = TODOApiClient.GetComments.Request
	
	typealias UpdateRequestType = TODOApiClient.PutComment.Request
	typealias UpdateBodyType = TODOApiClient.PutComment.BodyRequest
	
	typealias DeleteRequestType = TODOApiClient.DeleteComment.Request
	
	// (optional):
	
	func create(body: CreateBodyType, completionHandler: @escaping (RestApiClient.ResponseType<CreateRequestType.Response>) -> Void) {
		self.restApiClient.fetch(CreateRequestType(),
								 method: .POST, body: body, headers: [.contentType(.applicationJSONIn(.utf8))],
								 completionHandler: completionHandler)
	}
	
	func update(_ request: UpdateRequestType, body: UpdateBodyType, completionHandler: @escaping (RestApiClient.ResponseType<UpdateRequestType.Response>) -> Void) {
		self.restApiClient.fetch(request, method: .PUT, body: body, headers: [.contentType(.applicationJSONIn(.utf8))], completionHandler: completionHandler)
	}
}
