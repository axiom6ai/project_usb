//
//  ViewController.swift
//  The little joke and the quiz
//
//  Created by Eric刘 on 2018/7/27.
//  Copyright © 2018年 Eric刘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var pandaImage: UIImageView!
    
    
        
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func answerButton(_ sender: Any) {
        revealAnswer()
        hideQuestion()
        print("show picture")
    }

func revealAnswer() {
    pandaImage.isHidden = false
    }
    
    
func hideQuestion() {
    questionImage.isHidden = true
    }

    
func printMessages() {
    print("say hello to eric")
    }
}
