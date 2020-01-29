//
//  AppModulesBuilder.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import UIKit

//Builder is creational pattern implementation used to build modules. Can be replaced with DI frameworks like Swinject, Resolver.

class AppModulesBuilder {
    static func buildMainScene() -> UIViewController {
        let mainSceneController = MainSceneViewController.loadFromNib()
        let interactor = MainSceneInteractor()
        let presenter = MainScenePresenter()
        let mainSceneService = buildMainSceneService()
        
        mainSceneController.interactor = interactor
        
        interactor.presenter = presenter
        interactor.mainSceneService = mainSceneService
        
        return mainSceneController
    }
}

private extension AppModulesBuilder {
    static func buildMainSceneService() -> MainSceneServiceInterface {
        let apiEngine = buildAPIEngine()
        
        let mainSceneService = MainSceneService(apiEngine: apiEngine)
        
        return mainSceneService
    }
    
    static func buildAPIEngine() -> APIEngineInterface {
        let executor = Executor()
        let requestBuilder = RequestBuilder()
        let parser = Parser()
        let errorHandler = ErrorHandler()
        
        let apiEngine = APIEngine(executor: executor,
                                  requestBuilder: requestBuilder,
                                  parser: parser,
                                  errorHandler: errorHandler)
        
        return apiEngine
    }
}
