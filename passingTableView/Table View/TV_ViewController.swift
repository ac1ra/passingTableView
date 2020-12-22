//
//  TV_ViewController.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit
struct city {
    var name: String
    var img: UIImage!
}

class TV_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let cities = [
        city(name: "istanbul", img: UIImage(named: "istanbul")),
        city(name: "kyoto", img: UIImage(named: "kyoto")),
        city(name: "london", img: UIImage(named: "london")),
        city(name: "newyork", img: UIImage(named: "newyork")),
        city(name: "rome", img: UIImage(named: "rome")),
        city(name: "santorini", img: UIImage(named: "santorini")),
        city(name: "sydney", img: UIImage(named: "sydney")),
        city(name: "zurich", img: UIImage(named: "zurich"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_tv", for: indexPath) as! TV_TableViewCell
        cell.label_scnd.text = cities[indexPath.row].name
        cell.image_scnd.image = cities[indexPath.row].img
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "sending_detailVC") as! TV_detailViewController
        
        vc.img_det = cities[indexPath.row].img
        vc.str_det = cities[indexPath.row].name
        
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
