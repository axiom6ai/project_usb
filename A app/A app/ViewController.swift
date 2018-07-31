//
//  ViewController.swift
//  A app
//
//  Created by Ruby on 2018/7/23.
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
    var topButtonPressed = 0
    var bottomButtonPressed = 0
    @IBAction func topButtonPressed(_ sender: Any) {
        topButtonPressed = topButtonPressed + 1
        topLabelPressed.text = String(topButtonPressed)
    }
    @IBAction func bottomButtonPressed(_ sender: Any) {
        bottomButtonPressed = bottomButtonPressed + 1
        bottomLabelPressed.text = String(bottomButtonPressed)
           }
    @IBAction func resetButtonPressed(_ sender: Any) {
        topButtonPressed = 0
        bottomButtonPressed = 0
        topLabelPressed.text = "0"
        bottomLabelPressed.text = "0"
    }
    @IBAction func musicSwichPressed(_ sender: Any) {
        if self.audioPlayer.isOn {
            playSound(named: self.audioPlayer)
        } else {
            self.audioPlayer?.prepareToPlay
        }
        
    }
    
    @IBOutlet weak var bottomLabelPressed: UILabel!
    @IBOutlet weak var topLabelPressed: UILabel!
    var audioPlayer: AVAudioPlayer?
    func playSound(named soundName: String) {
        let fileUrl = Bundle.main.url(forResource: "mp3", withExtension: "mp3", subdirectory: nil, localization: nil)
        self.audioPlayer = try!
            audioPlayer(contentsOf: fileUrl!)
        if (self.audioPlayer! = nil) {
            self.audioPlayer?.prepareToPlay()
        }
    }
}
    



