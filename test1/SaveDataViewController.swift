//
//  SaveDataViewController.swift
//  test1
//
//  Created by 洪宗燦 on 2024/9/16.
//

import UIKit

class SaveDataViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = UserDefaults.standard.string(forKey: "data")
        // Do any additional setup after loading the view.
    }
    

    @IBAction func save(_ sender: UIButton) {
        UserDefaults.standard.set(nameField.text, forKey: "data")
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
