//
//  TabBarViewController.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 06.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    var persons = Person.getContent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarViewController(wiew: persons)
    }
    

    // MARK: - Navigation
    private func setTabBarViewController(wiew person: [Person]){
        guard let trackListVC = viewControllers?.first as? TrackListTableViewController else {return}
        guard let cellTableVC = viewControllers?.last as? CellTableViewController else {return}
        trackListVC.tracks = persons
        cellTableVC.track = persons
    }
}
