//
//  detailViewController.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    var name_txt:String = ""
    var image_img:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailName.text = name_txt
        detailImage.image = image_img
    }
}
