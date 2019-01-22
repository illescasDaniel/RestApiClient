//
//  main.swift
//  RestApiClient
//
//  Created by Daniel Illescas Romero on 16/01/2019.
//  Copyright © 2019 Daniel Illescas Romero. All rights reserved.
//

import Foundation

let todoClientService = TODOClientService()

todoClientService.create(body: TODOClientService.CreateBodyType(title: "Test", body: "bodytest", userId: 1)) { response in
	switch response {
	case .success(let responseData, _):
		print(responseData)
	case .dataResponse(let data):
		print(data)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}

todoClientService.read(TODOClientService.ReadRequestType(postId: 1)) { response in
	switch response {
	case .success(let responseData, _):
		print(responseData)
	case .dataResponse(let data, _):
		print(data)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}

todoClientService.update(TODOClientService.UpdateRequestType(extraResourcesPath: "/1"),
						 body: TODOClientService.UpdateBodyType(id: 3, title: "Test", body: "bodytest", userId: 1)) { response in
	switch response {
	case .success(let responseData, _):
		print(responseData)
	case .dataResponse(let data, _):
		print(data)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}

todoClientService.delete(TODOClientService.DeleteRequestType(extraResourcesPath: "/1")) { response in
	switch response {
	case .success(let responseData, let response):
		print(responseData, response.statusCodeValue)
	case .dataResponse(let data, _):
		print(data)
		print(String.init(data: data, encoding: .utf8)!)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}

/*
// PATCH example
let bodyPatch = TODOApiClient.PatchComment.BodyRequest(title: "Test")
todoApiClient.fetch(TODOApiClient.PatchComment.Request(extraResourcesPath: "/1"),
					method: .PATCH, body: bodyPatch,
					headers: [.ContentType(.applicationJSONIn(.utf8))]) { response in
	switch response {
	case .success(let responseData, let response):
		print(responseData, response.statusCodeValue)
	case .dataResponse(let data, _):
		print(data)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}
*/
while true {}

