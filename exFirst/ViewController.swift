//
//  ViewController.swift
//  exFirst
//
//  Created by STC on 11.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var picturesName = ["Food", "Cat", "Forest", "Tree"]
    var descriptions = ["Description","Description","Description","Description"]
    @IBOutlet weak var label: UILabel!
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
        showGallery.image = gallery[index]
        nameField.text = picturesName[index]
        label.text = descriptions[index]
    }
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(identifier: "other") as! OtherViewController
        vc.completionHandler =
        {
            text in self.label.text = text
            self.descriptions[self.index] = text!
        }
        vc.modalPresentationStyle = .fullScreen
        present(vc,animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        
        nameField.isUserInteractionEnabled = false
        
        label.layer.borderColor = UIColor.systemGray5.cgColor
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 10
        label.textAlignment = .left
        label.sizeToFit()
    }
}

