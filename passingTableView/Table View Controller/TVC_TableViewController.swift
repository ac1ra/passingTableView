//
//  TVC_TableViewController.swift
//  passingTableView
//
//  Created by ac1ra on 21.12.2020.
//

import UIKit

struct city_2 {
    var name: String
    var img: UIImage!
}

class TVC_TableViewController: UITableViewController {

    let citites = [
        city_2(name:"istanbul", img: UIImage(named:"istanbul")),
        city_2(name:"kyoto", img: UIImage(named:"kyoto")),
        city_2(name:"london", img: UIImage(named:"london")),
        city_2(name:"newyork", img: UIImage(named:"newyork")),
        city_2(name:"rome", img: UIImage(named:"rome")),
        city_2(name:"santorini", img: UIImage(named:"santorini")),
        city_2(name:"sydney", img: UIImage(named:"sydney")),
        city_2(name:"zurich", img: UIImage(named:"zurich"))
    ]
    
//    var arrayName:[String] = ["istanbul","kyoto","london","newyork","rome","santorini","sydney","zurich"]
//    var arrayImage:[UIImage?] = [UIImage(named: "istanbul"),UIImage(named: "kyoto"),UIImage(named: "london"),UIImage(named: "newyork"),UIImage(named: "rome"),UIImage(named: "santorini"),UIImage(named: "sydney"),UIImage(named: "zurich")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return citites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TVC_TableViewCell

        // Configure the cell...
        cell.TVC_label.text = citites[indexPath.row].name
        cell.TVC_image.image = citites[indexPath.row].img

        return cell
    }

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "sendVC", sender: nil)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendVC" {
            let indexPaths = self.tableView!.indexPathsForSelectedRows!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let vc = segue.destination as! detailViewController
            vc.image_img = self.citites[indexPath.row].img
            vc.name_txt = self.citites[indexPath.row].name
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
