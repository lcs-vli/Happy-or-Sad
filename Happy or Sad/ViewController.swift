//
//  ViewController.swift
//  Happy or Sad
//
//  Created by Li, Muchen on 2019-11-18.
//  Copyright © 2019 Li, Muchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    //Outlets
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputReselt: UILabel!
    
    //MARK: Function (make things happen)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //analyze the text
    @IBAction func analyzeText(_ sender: Any) {
        
        //guard against input
        guard let phraseInput = inputField.text, !phraseInput.isEmpty else {
            outputReselt.text = "Please enter a value please"
            return
        }
        
        //make sure the input is not too long
        if phraseInput.count > 255 {
            outputReselt.text = "Please enter a phare with 255 character or less"
            return
        }
    }
    
}

