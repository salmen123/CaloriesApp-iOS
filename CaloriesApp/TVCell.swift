//
//  TVCell.swift
//  CaloriesApp
//
//  Created by Med Salmen Saadi on 5/16/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class TVCell: UITableViewCell {
    
    @IBOutlet weak var iv_Image: UIImageView!
    @IBOutlet weak var la_Name: UILabel!
    @IBOutlet weak var la_Des: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
