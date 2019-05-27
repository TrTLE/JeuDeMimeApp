//
//  ViewController.swift
//  JeudeMimeApp
//
//  Created by Admin on 27/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var game:CoreJeuDeMime = CoreJeuDeMime()
    private var nbMatchesToPlay: Int = 1
    @IBOutlet weak var ui_NbMatchesStepper: UIStepper!
    @IBOutlet weak var ui_playerToPlay: UILabel!
    @IBOutlet weak var ui_NbMatchesLabel: UILabel!
    @IBOutlet weak var ui_nbMatchesToPlay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }

    private func updateDisplay(){
        ui_playerToPlay.text = "A \(game.getPlayerToPlay().toString()) DE JOUER"
        ui_NbMatchesStepper.value = 1.0
        ui_nbMatchesToPlay.text = "1"
        ui_NbMatchesLabel.text = String.init(game.getNbMatchesleft())
        nbMatchesToPlay = 1
    }
    
    //AJOUTER LA GESTION DU NOMBRE D'ALLUMETTE SI RESTE 3 2 ALLUMETTES
    @IBAction func nbMatchesStepperTouched(_ sender: UIStepper) {
        let nb: Int = Int.init(ui_NbMatchesStepper.value)
        if game.canPlay(pNb: nb){
            ui_nbMatchesToPlay.text = String.init(nb)
            nbMatchesToPlay = nb
        }
    }
    
    @IBAction func PlayButtonTouched(_ sender: UIButton) {
        game.takeMatches(pNb: nbMatchesToPlay)
        updateDisplay()
    
        //Afficher le gagnant et proposer de re jouer
        if game.gameEnd() {
            //Afficher une pop-up avec le Gagnant et demander si nouvelle partie
            let AlertVC = UIAlertController(title: "FIN DE PARTIE", message: "BRAVO \(game.getPlayerToPlay().toString()) A GAGNÉ", preferredStyle: .alert)
            
            //Ajouter le code du rejouer... Recommencer avec les mêmes joueurs
            let RestartAction = UIAlertAction(title: "REJOUER", style: .default)
            
            AlertVC.addAction(RestartAction)
            
            //COMMENT OUVRIR UNE VIEW EN UTILISANT DU CODE
            //              OU
            //COMMENT UTILISER E CODE DU BOUTON RETOUR PRÉSENT DANS LE NAVIGATIONITEM
            let StopAction = UIAlertAction(title: "TERMINÉ", style: .cancel) { (_) in
                self.dismiss(animated: true, completion: nil)
            }
            
            //Terminer la partie et revenir à l'écran d'acceuil
            AlertVC.addAction(StopAction)
            
            present(AlertVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func TestDismissButtonTouched(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    //EXEMPLE D'UTILISATION DES ALERTS
    
    /*
     @IBAction func addButtonTouched(_ sender: Any) {
        let alertVC = UIAlertController(title: "Nouveau personnage", message: "Ajouter un nouveau personnage", preferredStyle: .alert)
     
        alertVC.addTextField{ (characterTextField) in
            characterTextField.placeholder = "Personnage"
        }
        alertVC.addTextField { (showTextField) in
            showTextField.placeholder = "Série"
        }
     
        let okAction = UIAlertAction(title: "Ajouter", style: .default) { (_) in
            if let characterName = alertVC.textFields?[0].text,
                characterName.count > 0,
                let showName = alertVC.textFields?[1].text,
                showName.count > 0
            {
                self.characterList.append(TVCharacter(name: characterName, show: showName))
                self.tableView.insertRows(at: [IndexPath(row: self.characterList.count-1, section: 0)], with: .automatic)
            }
     
        }
        alertVC.addAction(okAction)
     
        alertVC.addAction(UIAlertAction(title: "Annuler", style: .cancel, handler: nil))
     
        present(alertVC, animated: true, completion: nil)
     
    }
    */
}

