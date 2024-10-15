//
//  MobileTableViewCell.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

class MobileTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMobileName: UILabel!
    
    
    @IBOutlet weak var lblColor: UILabel!
    
    
    @IBOutlet weak var lblOpacity: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
