//
//  ViewController.swift
//  FoodManagement2021
//
//  Created by CNTT on 4/16/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //MARK: properties
    
    @IBOutlet weak var editMealName: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editMealName.delegate = self
    }

    //MARK: TextField's Delegated Functions
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let mealName = textField.text {
            print("Doan xem mon gi: \(mealName)")
    }
}
    //MARK: Image processing
    
    @IBAction func imageProcessing(_ sender: UITapGestureRecognizer) {
        //Hide the keybord
        editMealName.resignFirstResponder()
        //get image from photo library
        let imagePicker = UIImagePickerController()
        //Config the image source
        imagePicker.sourceType = .photoLibrary
        //Delegation
        imagePicker.delegate = self
        //Show the image picker
        present(imagePicker, animated: true, completion: nil)
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageView.image = selectedImage
            //Hide the image Picker controller
            dismiss(animated: true, completion: nil)
        }
    }
    
}
