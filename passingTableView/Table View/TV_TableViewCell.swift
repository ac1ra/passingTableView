//
//  TV_TableViewCell.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

class TV_TableViewCell: UITableViewCell {

    @IBOutlet weak var label_scnd: UILabel!
    @IBOutlet weak var image_scnd: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
