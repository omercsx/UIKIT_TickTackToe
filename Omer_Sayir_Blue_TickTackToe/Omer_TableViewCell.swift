//
//  Omer_TableViewCell.swift
//  Omer_Sayir_Blue_TickTackToe
//
//  Created by Omer Cagri Sayir on 24.09.2024.
//

import UIKit

class Omer_TableViewCell: UITableViewCell {
    // MARK: - Outlets

    @IBOutlet var winLossImage: UIImageView!
    @IBOutlet var whoWon: UILabel!
    @IBOutlet var dateTimeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
