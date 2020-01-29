//
//  MainSceneService.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import Foundation
/*
 Service is jus worker that preparing request and executing it with ApiEngine. Helps to add chaining if needed.
 */

protocol MainSceneServiceInterface {
    
}

class MainSceneService {
    var apiEngine: APIEngineInterface
    
    init(apiEngine: APIEngineInterface) {
        self.apiEngine = apiEngine
    }
}

extension MainSceneService: MainSceneServiceInterface {
    
}
