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
        //revealAnswer()
        // Do any additional setup after loading the view, typically from a nib.
        
        //printMessages()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var usbImage: UIImageView!
    
    @IBAction func answerButton(_ sender: Any) {
        
        //usbImage.isHidden = false
        revealAnswer()
        //questionImage.isHidden = true
        hideQuestion()
        print ("Show picture!")
        
    }
    
    func revealAnswer() {
        usbImage.isHidden = false
        print("Answer is revealed")
    }
    
    func hideQuestion() {
        questionImage.isHidden = true
        print("Question Mark is hidden")
    }
    
    func printMessages(){
        print("say hi to joe")
    }
    

}

