//
//  TrackListTableViewController.swift
//  TrackList
//
//  Created by Anton Kaznacheev on 02.11.2022.
//

import UIKit

class TrackListTableViewController: UITableViewController {

    var tracks: [Person] = []

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tracks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTrack", for: indexPath)
        let trackIndex = tracks[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = trackIndex.descriptor
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewVC = segue.destination as? ViewController else { return }
        guard let trackIndexVC = tableView.indexPathForSelectedRow else { return }
        let indexTrack = tracks[trackIndexVC.row]
        viewVC.track = indexTrack
    }
}
