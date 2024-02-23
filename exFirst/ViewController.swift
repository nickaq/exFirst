//
//  ViewController.swift
//  exFirst
//
//  Created by STC on 11.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var picturesName = ["Food", "Cat", "Forest", "Tree"]
    var descriptions = ["Description", "Description","Description","Description"]
    
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var nameField: UITextField!
    var gallery = [#imageLiteral(resourceName: "duy.jpeg"),#imageLiteral(resourceName: "pervaya.jpeg"),#imageLiteral(resourceName: "tretya.jpeg"),#imageLiteral(resourceName: "tree.jpeg")]
    @IBOutlet weak var showGallery: UIImageView!
    var index = 0
    @IBAction func nextButton(_ sender: UIButton) {
        index += 1
        if index >= gallery.count {
            index = 0
        }
        updateImage()
    }
    
    @IBAction func prevButton(_ sender: UIButton) {
        index -= 1
        if index < 0 {
            index = gallery.count - 1
        }
        updateImage()
    }
    func updateImage(){
        let imageName = gallery[index]
        showGallery.image = imageName
        nameField.text = picturesName[index]
        descriptionField.text = descriptions[index]
    }
    
    @IBAction func saveEditButton(_ sender: UIButton) {
        descriptionField.isEditable = !descriptionField.isEditable
        if descriptionField.isEditable {
            descriptionField.becomeFirstResponder()
        }else{
            descriptionField.resignFirstResponder()
        }
        descriptions[index] = descriptionField.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameField.resignFirstResponder()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        
        descriptionField.isEditable = false
        descriptionField.layer.borderWidth = 1.0
        descriptionField.layer.borderColor = UIColor.systemGray5.cgColor
        descriptionField.layer.cornerRadius = 10
        
    }


}

