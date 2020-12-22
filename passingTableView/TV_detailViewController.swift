//
//  TV_detailViewController.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

class TV_detailViewController: UIViewController {

    @IBOutlet weak var label_det: UILabel!
    @IBOutlet weak var image_det: UIImageView!
    
    var str_det: String = ""
    var img_det: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label_det.text = str_det
        image_det.image = img_det
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
