//
//  ViewController.swift
//  SuperSenha
//
//  Copyright © 2020 Ivan Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    @IBOutlet weak var swCaptitalLetters: UISwitch!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordViewController
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCaptitalLetters.isOn
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        
        view.endEditing(true)
    }
    
    @IBAction func check(){
        if(swLetters.isOn || swNumbers.isOn || swCaptitalLetters.isOn || swSpecialCharacters.isOn){
            button.isEnabled = true
            button.alpha=1
        }else{
            button.isEnabled = false
            button.alpha=0.1
        }
    }
}

