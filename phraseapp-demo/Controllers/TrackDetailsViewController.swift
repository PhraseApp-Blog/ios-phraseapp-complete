//
//  TrackDetailsViewController.swift
//  phraseapp-demo
//
//  Created by Mohammad Ashour on 2019-05-25.
//  Copyright © 2019 Mohammad Ashour. All rights reserved.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var copyrightLabel: UILabel!
    
    var track: Track?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let track = track {
            trackNameLabel.text = track.trackName
        
            artistNameLabel.text = track.artistName
        
            releaseDateLabel.text = track.releaseDate
            
            copyrightLabel.text = getCopyrighText(artistName: track.artistName)
        }
    }
    
    func setup(with track: Track) {
        self.track = track
    }
    
    fileprivate func getCopyrighText(artistName: String) -> String {
        let format = NSLocalizedString("copyright", comment: "")
        
        let currentYear = "\(Calendar.current.component(.year, from: Date()))"
        
        return String.localizedStringWithFormat(format, currentYear, artistName)
    }

}
