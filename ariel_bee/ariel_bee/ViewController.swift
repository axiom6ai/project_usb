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
                
                usbImage.isHidden = true
                questionImage.isHidden = false
                print ("Show picture!")
                
            }
            else{
                print ("Current Value is:  ", x)
            }
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var usbImage: UIImageView!
    
    func showImage () {
        
        usbImage.isHidden = false
        questionImage.isHidden = true
        print ("answer is presented")
        
    }
    
    func hideImage () {
        
        usbImage.isHidden = true
        questionImage.isHidden = false
        print ("answer is now hidden")
    }
  
    @IBAction func answerButtonPress(_ sender: Any) {
        
        if (usbImage.isHidden == true) {
            showImage()
            
        }
            
        else if (questionImage.isHidden == true) {
            hideImage()
            
        }
        
    }
    



}
