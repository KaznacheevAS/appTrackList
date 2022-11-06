//
//  ViewController.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 02.11.2022.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var track = Person.getContent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = ""
        
    }


}

