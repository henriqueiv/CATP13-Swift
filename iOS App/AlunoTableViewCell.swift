//
//  AlunocellTableViewCell.swift
//  CATP13-Swift
//
//  Created by Txai Wieser on 16/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class AlunoTableViewCell: UITableViewCell {

    
    @IBOutlet var codLabel: UILabel!
    @IBOutlet var nomeLabel: UILabel!
    @IBOutlet var nivelLabel: UILabel!
    @IBOutlet var dataLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
