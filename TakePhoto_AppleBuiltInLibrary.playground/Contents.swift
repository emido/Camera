//: Playground - noun: a place where people can play

import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    
    var imageView: UIImageView?
    
    func takePhoto()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false  // Cannot crop the image
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    // MARK: Delegate Methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageView?.contentMode = .scaleToFill
            imageView?.image = pickedImage
        }
        
        picker.dismiss(animated: true, completion: nil)
        
    }
}


