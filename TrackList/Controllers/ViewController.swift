//
//  ViewController.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 02.11.2022.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var phoneLabel: UILabel!
    
    var track: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = track?.descriptor
        phoneLabel.text = "Phone: \(track.phone)"
    }
}

