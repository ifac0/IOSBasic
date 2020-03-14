//
//  Tela2ViewController.swift
//  MyHelloWorld
//
//  Created by aluno on 28/02/20.
//  Copyright © 2020 Cesar School. All rights reserved.
//

import UIKit

class Tela2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("-->> Tela2ViewController::viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("-->> Tela2ViewController::viewWillAppear()")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("-->> Tela2ViewController::viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("-->> Tela2ViewController::viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("-->> Tela2ViewController::viewDidDisappear()")
    }

}
