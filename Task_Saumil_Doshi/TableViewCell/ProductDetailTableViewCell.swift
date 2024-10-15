//
//  ProductDetailTableViewCell.swift
//  Task_Saumil_Doshi
//
//  Created by Saumil Doshi on 14/10/24.
//

import UIKit

class ProductDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblCapcity: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var lblGeneration: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var cpuModel: UILabel!
    @IBOutlet weak var lblHardDiskSize: UILabel!
    @IBOutlet weak var lblStrapColor: UILabel!
    @IBOutlet weak var lblCaseSize: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblScreenSize: UILabel!
    
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
