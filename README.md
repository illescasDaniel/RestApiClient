# RestApiClient

A simple way to create an API client service to retrieve or manage remote data.

Create a CRUD client service implementing `RestApiClientCRUDService` by specifying some associated types that you must create first:
```swift
associatedtype CreateRequestType: RestApiClientQueryRequest
associatedtype CreateBodyType: RestApiClientBodyRequest

associatedtype ReadRequestType: RestApiClientQueryRequest

associatedtype UpdateRequestType: RestApiClientQueryRequest
associatedtype UpdateBodyType: RestApiClientBodyRequest

associatedtype DeleteRequestType: RestApiClientQueryRequest
```

Once you do that, you can start retrieving data from the endpoints:
````swift
let todoClientService = TODOClientService()

let createBody = TODOClientService.CreateBodyType(title: "Test", body: "bodytest", userId: 1)
todoClientService.create(body: createBody) { response in
	switch response {
	case .success(let responseData, _):
		print(responseData)
	case .dataResponse(let data):
		print(data)
	case .error(let message, let response, _):
		print(message, response ?? "")
	}
}

// ...
```
