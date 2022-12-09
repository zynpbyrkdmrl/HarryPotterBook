//
//  ViewController.swift
//  HarryPotterBook
//
//  Created by Zeynep Bayrak Demirel on 9.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    var HarryPotterArray = [HarryPotter] ()
    var chosenHarryPotter : HarryPotter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        
        let Harry = HarryPotter(nameX: "Harry Potter", ageX: "15", imageX: UIImage(named: "harry")!)
        let Hermione = HarryPotter(nameX: "Hermione Granger", ageX: "14", imageX: UIImage(named: "hermione")!)
        let Ron = HarryPotter(nameX: "Ron Weasley", ageX: "15", imageX: UIImage(named: "ron")!)
        let Dumbledore = HarryPotter(nameX: "Albus Dumbledore", ageX: "66", imageX: UIImage(named: "dumbledore")!)
        let Snape = HarryPotter(nameX: "Severus Snape", ageX: "48", imageX: UIImage(named: "snape")!)

        HarryPotterArray.append(Harry)
        HarryPotterArray.append(Hermione)
        HarryPotterArray.append(Ron)
        HarryPotterArray.append(Dumbledore)
        HarryPotterArray.append(Snape)

        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HarryPotterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = HarryPotterArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenHarryPotter = HarryPotterArray [indexPath.row]
        self.performSegue(withIdentifier: "toDetailVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailVC
            destinationVC.secilenHarryPotter = chosenHarryPotter
        }
    }
    
}

