//
//  TV_ViewController.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

class TV_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arrayName_scnd:[String] = ["istanbul","kyoto","london","newyork","rome","santorini","sydney","zurich"]
    var arrayImage_scnd:[UIImage?] = [UIImage(named: "istanbul"),UIImage(named: "kyoto"),UIImage(named: "london"),UIImage(named: "newyork"),UIImage(named: "rome"),UIImage(named: "santorini"),UIImage(named: "sydney"),UIImage(named: "zurich")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName_scnd.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_tv", for: indexPath) as! TV_TableViewCell
        cell.label_scnd.text = arrayName_scnd[indexPath.row]
        cell.image_scnd.image = arrayImage_scnd[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "sending_detailVC") as! TV_detailViewController
        
        vc.img_det = arrayImage_scnd[indexPath.row]
        vc.str_det = arrayName_scnd[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "cell_tv" {
//            let tableView = UITableView()
//            let indexPaths = tableView.indexPathsForSelectedRows!
//            let indexPath = indexPaths[0] as NSIndexPath
//            let vc_2 = segue.destination as! TV_detailViewController
//
//            vc_2.img_det = arrayImage_scnd[indexPath.row]
//            vc_2.str_det = arrayName_scnd[indexPath.row]
//        }
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
