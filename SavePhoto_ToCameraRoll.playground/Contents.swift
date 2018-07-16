//: Playground - noun: a place where people can play

import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    
    var takenPhoto: UIImage?
    
    func savePhoto()
    {
        let imageData = UIImagePNGRepresentation(takenPhoto!)
        let compressedImage =  UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedImage!, nil, nil, nil)
        
        let alert = UIAlertController(title: "Saved Successfully", message: "Photo saved to camera roll, check it out!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)

    }
    
    
    
}