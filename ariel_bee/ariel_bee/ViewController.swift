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
                
                
                
                teapot.isHidden = true
                
                question.isHidden = false
                
                print ("Show picture!")
                
                
                
            }
                
            else{
                
                print ("Current Value is:  ", x)
                
            }
            
        }
        
    }
    
    
    
    
    
    
    @IBAction func Answer(_ sender: Any) {
    
    
        if (question.isHidden == false){
            
            revealAnswer()
            
            
            
        }
            
        else if (teapot.isHidden == false){
            
            hideQuestion()
            
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    func revealAnswer(){
        
        teapot.isHidden = false
        
        question.isHidden = true
        
    }
    
    
    
    func hideQuestion(){
        
        teapot.isHidden = true
        
        question.isHidden = false
        
    }
    
    
    
    
    
   
    @IBOutlet weak var question: UIImageView!
    
    
    
    
    @IBOutlet weak var teapot: UIImageView!
    
    
    
    
    
    
    
}


