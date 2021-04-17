//
//  FuentesTableViewCell.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class FuentesTableViewCell: UITableViewCell {

    @IBOutlet weak var lNombre: UILabel!
    @IBOutlet weak var lAyuda: UILabel!
    @IBOutlet weak var lLink: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
