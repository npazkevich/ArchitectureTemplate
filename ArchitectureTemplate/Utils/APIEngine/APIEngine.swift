//
//  APIEngine.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import Foundation

/*
 ApiEngine
    With such architecture in ApiEngine we can use any type of requests,
    parsing any type of response data, change error handling or executing behaviour
    just by creating new classes for interfaces we describe.
    It's also helping us stub and cover it with tests.
    Flow in methods for request executing:
    requestBuilder.buildRequest(...) -> executor.executeRequest(...) ->
    parser.parseData(...) -> errorHandler.checkForError(...)
 */

protocol APIEngineInterface {
    
}

class APIEngine {
    var executor: ExecutorInterface
    var requestBuilder: RequestBuilderInterface
    var parser: ParserInterface
    var errorHandler: ErrorHandlerInterface
    
    init(executor: ExecutorInterface, requestBuilder: RequestBuilderInterface, parser: ParserInterface, errorHandler: ErrorHandlerInterface) {
        self.executor = executor
        self.requestBuilder = requestBuilder
        self.parser = parser
        self.errorHandler = errorHandler
    }
}

extension APIEngine: APIEngineInterface {
    
}
