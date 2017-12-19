//
//  PontosTuristicosTableViewCell.swift
//  PontosTuristicos
//
//  Created by Usuário Convidado on 19/12/17.
//  Copyright © 2017 br.com.camila.fiap. All rights reserved.
//

import UIKit

class PontosTuristicosTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
