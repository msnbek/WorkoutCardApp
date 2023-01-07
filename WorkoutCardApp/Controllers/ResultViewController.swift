//
//  ResultViewController.swift
//  WorkoutCardApp
//
//  Created by Mahmut Senbek on 6.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    var selectedImage : UIImage?
    
    var sendImgName = ""
    @IBOutlet weak var imageViewResult: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let image = selectedImage {
            imageViewResult.image = image
            if let imgName = image.imageAsset?.value(forKey: "assetName") {
                var imgNameString : String = imgName as! String
                print(imgNameString)
       sendImgName = imgNameString
                print(sendImgName)
                
            }
            
        
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ExerciseViewController
        destVC.choosenImgName = sendImgName
    }
    

   

}
             
