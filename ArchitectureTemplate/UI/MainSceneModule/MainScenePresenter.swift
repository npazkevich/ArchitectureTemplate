//
//  MainScenePresenter.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import Foundation

/*
 Presenter receiving messages from interactor, process and converts data to display model
 and messaging to view controller
 */

protocol MainScenePresenterInterface {
    
}

class MainScenePresenter {
    weak var view: MainSceneViewInterface?
}

extension MainScenePresenter: MainScenePresenterInterface {
    
}
