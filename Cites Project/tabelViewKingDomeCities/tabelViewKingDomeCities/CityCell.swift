//
//  CityCell.swift
//  tabelViewKingDomeCities
//
//  Created by MARAM on 22/04/1443 AH.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var cityImageView: UIImageView!
    
    @IBOutlet weak var cityNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
