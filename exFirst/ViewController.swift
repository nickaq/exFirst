//
//  ViewController.swift
//  exFirst
//
//  Created by STC on 11.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
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
    }
    
    @IBAction func saveEditButton(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        // Do any additional setup after loading the view.
    }


}

