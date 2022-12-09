//
//  DetailVC.swift
//  HarryPotterBook
//
//  Created by Zeynep Bayrak Demirel on 9.12.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var agelabel: UILabel!
    
    var secilenHarryPotter : HarryPotter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        namelabel.text = secilenHarryPotter?.name
        agelabel.text = secilenHarryPotter?.age
        imageview.image = secilenHarryPotter?.image
        
        
        
    }
    

    

}
