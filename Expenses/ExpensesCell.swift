//
//  ExpensesCell.swift
//  Expenses
//
//  Created by Brock Gibson on 1/22/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import UIKit

class ExpensesCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
