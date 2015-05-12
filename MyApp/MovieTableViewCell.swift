//
//  MovieTableViewCell.swift
//  MyApp
//
//  Created by Audrey Li on 5/12/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit
import ALFramework

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var voteAverageLabel: UILabel!
    @IBOutlet weak var voteCountLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!

    
    func configCells(item: Movie) {
        self.loadInfo(item.asJSON())
        ALUtils.getImageFromURLAndSave(item.getPosterURL(), localName: "\(item.id)") { (image) -> Void in
            self.posterImageView.image = image
        }
        
    }

}
