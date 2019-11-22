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
    var phraseInput = ""
    
    //MARK: Function (make things happen)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //analyze the text
    @IBAction func analyzeText(_ sender: Any) {
        
        //clear out the ourput label from the last time
        outputReselt.text = ""
        
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
        
        //give output
        analyze()
    }
    
    func analyze()  {
        
        //set happy and sad values
        var happyValue = 0
        var sadValue = 0
        
        //determine the number of sad and happy emoji
        for character in phraseInput {
            
            switch character{
            case "😀","😄","☺️","🙂":
                 happyValue += 1
            case "😔","😕","🙁","☹️":
                sadValue += 1
            default:
                happyValue += 0
            }
            
        }
        
        //compare the number of sad and happy emoji
        if happyValue > sadValue{
            outputReselt.text = "Happy"
        }else if happyValue < sadValue{
            outputReselt.text = "Sad"
        }else if happyValue == sadValue && happyValue != 0 && sadValue != 0{
            outputReselt.text = "unsure"
        }else if happyValue == 0 && sadValue == 0{
            outputReselt.text = "none"
        }
        
    }
        
        
    
}

