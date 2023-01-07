//
//  UIImage + Ex.swift
//  WorkoutCardApp
//
//  Created by Mahmut Senbek on 6.01.2023.
//

import UIKit


extension UIImage {
var containBundle : Bundle? {
  imageAsset?.value(forKey: "containingBundle") as? Bundle
}
var assetName: String? {
  imageAsset?.value(forKey: "assetName") as? String
}

}
