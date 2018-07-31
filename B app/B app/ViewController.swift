//
//  ViewController.swift
//  B app
//
//  Created by Ruby on 2018/7/30.
//  Copyright © 2018年 Ruby Yao. All rights reserved.
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
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var questionImage: UIImageView!
    @IBAction func answerButton(_ sender: Any) {
        
        func revealAnswer() {
            newsImage.isHidden = false
            questionImage.isHidden = true
            print("Answer is revealed")
        }
        func hideQuestion() {
            newsImage.isHidden = true
            questionImage.isHidden = false
            print("Question Mark is hidden")
        }
        func printMessages() {
            print("the answer is news")
        }
        //newsImage.isHiidden = false
        if (questionImage.isHidden == false) {
            hideQuestion()
          
          
        }
        else if (newsImage.isHidden == false) {
            revealAnswer()
         
        }
        //revealAnswer()
        //questionImage.isHidden = true
        //hideQuestion()
        print("Show picture!")
        
    }
    
    
}

