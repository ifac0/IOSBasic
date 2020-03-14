//
//  PasswordViewController.swift
//  SuperSenha
//
//  Copyright © 2020 Ivan Costa. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        
        self.passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useSpecialCharacters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialLetters: useSpecialCharacters)
        
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func gerarNovamente(_ sender: Any) {
        
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        
        self.passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useSpecialCharacters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialLetters: useSpecialCharacters)
        
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }
}
