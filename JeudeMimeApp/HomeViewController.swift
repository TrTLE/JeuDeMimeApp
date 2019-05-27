//
//  HomeViewController.swift
//  JeudeMimeApp
//
//  Created by Admin on 27/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import Foundation

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var Player2NameTextField: UITextField!
    @IBOutlet weak var Player1NameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set("JOUEUR1",forKey: "PLAYER1")
        UserDefaults.standard.set("JOUEUR2",forKey: "PLAYER2")
        Player1NameTextField.text?.removeAll()
        Player2NameTextField.text?.removeAll()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func OnStartButtonTouched(_ sender: UIButton) {
        if let player1Name = Player1NameTextField.text {
            UserDefaults.standard.set(player1Name, forKey: "PLAYER1")
        }
        
        if let player2Name = Player2NameTextField.text {
            UserDefaults.standard.set(player2Name, forKey: "PLAYER2")
        }
    }
}
