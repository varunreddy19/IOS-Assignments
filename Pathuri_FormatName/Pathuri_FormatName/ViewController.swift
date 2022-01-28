//
//  ViewController.swift
//  Pathuri_FormatName
//
//  Created by Pathuri,Varun Reddy on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fullname = "Details \r\rFull Name: "
        fullname = fullname + lastNameTextField.text! + ", " + firstNameTextField.text!
        fullNameLabel.text = fullname
        
        let lastinitial = lastNameTextField.text![lastNameTextField.text!.startIndex]
        let firstinitial = firstNameTextField.text![firstNameTextField.text!.startIndex]
        initialsLabel.text = "Initials: \(lastinitial)\(firstinitial)"
        
        
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text=""
        lastNameTextField.text=""
        fullNameLabel.text=""
        initialsLabel.text=""
        firstNameTextField.becomeFirstResponder()
    }
}

