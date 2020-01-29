//
//  ViewController.swift
//  ArchitectureTemplate
//
//  Created by Mikita Patskevich on 1/29/20.
//  Copyright © 2020 Nikita Patskevich. All rights reserved.
//

import UIKit

/*
 View controller holds displaying logic and receiving user actions. Receive messages from presenter and send messages to interactor.
 */

protocol MainSceneViewInterface: class {
    
}

class MainSceneViewController: UIViewController {
    var interactor: MainSceneInteractorInterface?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

