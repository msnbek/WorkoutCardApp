//
//  ResultViewController.swift
//  WorkoutCardApp
//
//  Created by Mahmut Senbek on 6.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    var selectedImage : UIImage?
    @IBOutlet weak var imageViewResult: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let image = selectedImage {
            imageViewResult.image = image
        }
    }
    

   

}
