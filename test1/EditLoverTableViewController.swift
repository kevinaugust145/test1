//
//  EditLoverTableViewController.swift
//  test1
//
//  Created by 洪宗燦 on 2024/9/16.
//

import UIKit

class EditLoverTableViewController: UITableViewController {

    
    var lover: Lover?

    @IBOutlet weak var innerBeautySwitch: UISwitch!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var starTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = nameTextField.text ?? ""
        let star = starTextField.text ?? ""
        let weight = Double( weightTextField.text!) ?? 0
        let innerBeauty = innerBeautySwitch.isOn
        lover = Lover(name: name, star: star, age: weight, innerBeauty: innerBeauty)
    }
//    override func shouldPerformSegue(withIdentifier unwindToLover: String, sender: Any?) -> Bool {
//        if nameTextField.text?.isEmpty == false ,
//           starTextField.text?.isEmpty == false ,
//           weightTextField.text?.isEmpty == false {
//            return true
//        } else {
//            let alertController = UIAlertController(title: "error", message: "input error", preferredStyle: .alert)
//            alertController.addAction(UIAlertAction( title : "OK" , style : .default) )
//            present(alertController, animated: true)
//            return false
//        }
//           
//    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
//#Preview {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    let controller = storyboard.instantiateInitialViewController()!
//    
//    return controller
//}
