//
//  ViewController.swift
//  ariel_bee
//
//  Created by sweetiewill on 7/26/18.
//  Copyright © 2018 axiom6ai. All rights reserved.
//
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for x in 0 ... 6 {
            if (x == 6){
                print ("Current Value is:  ", x)
                
                bed.isHidden = true
                questionmark.isHidden = false
                print ("Show picture!")
                
            }
            else{
                print ("Current Value is:  ", x)
            }
        }
    }

    @IBAction func Answer(_ sender: Any) {
        //usbImage.isHidden = false
        revealAnswer()
        //questionImage.isHidden = true
        hideQuestion()
    }
    
    func revealAnswer(){
        bed.isHidden = false
    }
    
    func hideQuestion() {
        questionmark.isHidden = true
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var questionmark: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var bed: UIImageView!
   
    @IBOutlet weak var falseResponse: UIImageView!

    @IBAction func submit(_ sender: Any) {
        
        resultLabel.text = ""
        print ("USER HAS PRESSED ENTER")
        let input = self.inputTextField.text
        print ("The Text Entered is", input!)
        
        
        if (input == ("bed") || input == ("Bed") || input == ("BED")){
            print ("YOU HAVE ENTERED CORRECTLY", input!)
            bed.isHidden = false
            falseResponse.isHidden = true
            questionmark.isHidden = true
        
        }
        
        else{
            print ("YOU HAVE ENTERED INCORRECTLY")
            print ("YOUR RESPONSE OF: ", input! ," IS INCORRECT")
            
            bed.isHidden = true
            falseResponse.isHidden = false
            questionmark.isHidden = true
            
        }
    }

}





