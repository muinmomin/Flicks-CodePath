//
//  MovieCell.swift
//  Flicks
//
//  Created by Muin Momin on 1/24/16.
//  Copyright © 2016 Muin. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 255, green: 215, blue: 0, alpha: 0.3)
        selectedBackgroundView = backgroundView
    }

}
