//
//  OtherViewController.swift
//  exFirst
//
//  Created by STC on 27.02.2024.
//

import UIKit

class OtherViewController: UIViewController {
    
    @IBOutlet weak var field: UITextField!
    
    public var completionHandler: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.textAlignment = .left
        field.contentVerticalAlignment = .top
    }
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
//    
    @IBAction func didTapSave () {
        
        completionHandler?(field.text)
        
        dismiss(animated: true, completion: nil)
    }
}
