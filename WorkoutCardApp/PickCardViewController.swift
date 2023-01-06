//
//  ViewController.swift
//  WorkoutCardApp
//
//  Created by Mahmut Senbek on 6.01.2023.
//

import UIKit

class PickCardViewController: UIViewController {
    var imageArray = Images.imagesCard
    var imageChoosen : UIImage?
     var timer = Timer()
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var restartButtonUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageView.addGestureRecognizer(gestureRecognizer)
        imageView.image = Images.imagesCard.first
    }
    @objc func imageTapped() {
 timerFunc()
        
        
        
    }
    @objc func timing() {
     
        imageView.image = imageArray.randomElement() ?? UIImage(named: "AS")
        
    }

    @IBAction func finishButton(_ sender: UIButton) {
        timer.invalidate()
        restartButtonUIButton.isUserInteractionEnabled = true
        imageView.isUserInteractionEnabled = true
        
        imageChoosen = imageView.image
        print(imageChoosen)
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        print("test")
        
    }
    
    @IBAction func restartButton(_ sender: UIButton) {
        timerFunc()
        restartButtonUIButton.isUserInteractionEnabled = false
        
    }
    
    func timerFunc() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timing), userInfo: nil, repeats: true)
        imageView.isUserInteractionEnabled = false
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let destinationVC = segue.destination as! ResultViewController
        destinationVC.selectedImage = imageChoosen
        
            
    }
    
    
}

