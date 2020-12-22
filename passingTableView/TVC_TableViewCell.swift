//
//  TVC_TableViewCell.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

class TVC_TableViewCell: UITableViewCell {

    @IBOutlet weak var TVC_label: UILabel!
    @IBOutlet weak var TVC_image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
