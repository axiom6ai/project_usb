//
//  ViewController.swift
//  QUIZ APP
//
//  Created by Ruby on 2018/8/2.
//  Copyright © 2018年 Ruby Yao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ButtonA: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    @IBOutlet weak var ButtonC: UIButton!
    let feedbackGenerator = UINotificationFeedbackGenerator()
    
    
    var answer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons: [UIButton] = [ButtonA, ButtonB, ButtonC]
        for button in buttons {
            configureButton(Button: button)
        }
        answer = (ButtonA.titleLabel?.text)!
        
    }
    @IBAction func alphabetButtton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Yes", message: "You're right!", preferredStyle: .alert)
        UIView.animate(withDuration: 0.1){
            sender.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }
        UIView.animate(withDuration: 0.1, delay: 0.1, options: UIViewAnimationOptions.allowUserInteraction, animations: {
            sender.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
        {(completed) in
            if(sender == self.ButtonA){
                self.feedbackGenerator.notificationOccurred(.success)
                alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
                self.present(alert, animated: true, completion: nil)
                print("Correct Answer")
            }else{
                self.feedbackGenerator.notificationOccurred(.error)
                alert.addAction(UIAlertAction(title: "continue", style: .default, handler: { _ in
                    NSLog("The \"continue\" alert occured.")
                }))
                alert.title = "No"
                alert.message = "You're wrong!"
                self.present(alert, animated: true, completion: nil)
                print("You are wrong")
                
            }
            
        }
        
    }
    
    func configureButton(Button: UIButton){
        Button.layer.cornerRadius = Button.frame.size.height/2
        Button.layer.borderWidth = 0
        Button.layer.borderColor = UIColor.blue.cgColor
    }

    
}





