//
//  ExerciseViewController.swift
//  WorkoutCardApp
//
//  Created by Mahmut Senbek on 7.01.2023.
//

import UIKit
import AVFoundation


class ExerciseViewController: UIViewController {

    var totalTime = 15
    var passedTime = 0
    var choosenImgName = ""
    var player : AVAudioPlayer!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0
        
        detailLabel.text = "You gonna do \(choosenImgName) exercise. Based on rules."
       
    }
    @objc func timeFunc() {
        passedTime += 1
        timeLabel.text = String(passedTime)
        
        if passedTime > totalTime {
            
         
            
            timer.invalidate()
            
            passedTime = 0
            playSound()
            timeLabel.text = "Time's Up! Well done. Visit later again for pick a new card."
        }else {
            
            let progressBarCalc = Float(passedTime) / Float(totalTime)
            print(progressBarCalc)
            progressBar.progress = progressBarCalc
        }
   
       
        
    }
    

    @IBAction func startExercise(_ sender: UIButton) {
        
        timeProgress()
    }
    
    func timeProgress() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunc), userInfo: nil, repeats: true)
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    
}
