//
//  HomeTableViewController.swift
//  JeudeMimeApp
//
//  Created by Admin on 27/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    @IBOutlet weak var Player2NameTextField: UITextField!
    @IBOutlet weak var Player1NameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.string(forKey: "PLAYER1")
        UserDefaults.standard.string(forKey: "PLAYER2")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func OnStartButtonTouched(_ sender: UIButton) {
        if let player1Name = Player1NameTextField.text {
            UserDefaults.standard.setValue(player1Name, forKey: "PLAYER1")
        }else{
            UserDefaults.standard.setValue("JOUEUR1", forKey: "PLAYER1")
        }
        
        if let player2Name = Player2NameTextField.text {
            UserDefaults.standard.setValue(player2Name, forKey: "PLAYER2")
        }else{
            UserDefaults.standard.setValue("JOUEUR2", forKey: "PLAYER2")
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

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
