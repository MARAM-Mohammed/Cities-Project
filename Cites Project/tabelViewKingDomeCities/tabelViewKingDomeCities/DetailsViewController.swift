//
//  DetailsViewController.swift
//  tabelViewKingDomeCities
//
//  Created by MARAM on 22/04/1443 AH.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var cityDetailsLabel: UILabel!
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    var city: City!
    override func viewDidLoad() {
        super.viewDidLoad()

        cityNameLabel.text = city.name
        cityImageView.image = city.image
        cityDetailsLabel.text = city.desc
        
    }
    

   

}
