//
//  MainSceneInteractor.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import Foundation

/*
 Interactor is receiving messages from view controller, process them and messaging to presenter.
 It's the place for all business logic in module
 */

protocol MainSceneInput: class {
    
}

protocol MainSceneOuput: class {
    
}

protocol MainSceneInteractorInterface {
    
}

class MainSceneInteractor {
    //Entry an ouput point for main scene, unused in this example
    weak var input: MainSceneInput?
    weak var ouput: MainSceneOuput?
    
    var presenter: MainScenePresenterInterface?
    var mainSceneService: MainSceneServiceInterface?
}


extension MainSceneInteractor: MainSceneInteractorInterface {
    
}
