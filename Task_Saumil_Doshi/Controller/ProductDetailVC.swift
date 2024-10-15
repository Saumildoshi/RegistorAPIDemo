//
//  ProductDetailVC.swift
//  Task_Saumil_Doshi
//
//  Created by Saumil Doshi on 14/10/24.
//

import UIKit

class ProductDetailVC: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblCapacity: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblGeneration: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblCpuModal: UILabel!
    @IBOutlet weak var lblHardDiskSize: UILabel!
    @IBOutlet weak var lblStrapColor: UILabel!
    @IBOutlet weak var lblCaseSize: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblScreenSize: UILabel!
    @IBOutlet weak var lblCapacityGB: UILabel!
    
    
    
    
    //MARK: - Class Properties
    
    var productData: ProductData?
    
    //MARK: - Life Cycle function

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Class Function
    
    func setupUI() {
        
        if let colorData = self.productData?.color {
            self.lblColor.isHidden = false
            self.lblColor.text = "Color: \(colorData)"
        }
        
        if let colorData = self.productData?.colorAlternate {
            self.lblColor.isHidden = false
            self.lblColor.text = "Color: \(colorData)"
        }
        
        if let capacityGBData = self.productData?.capacityGB {
            self.lblCapacityGB.isHidden = false
            self.lblCapacityGB.text = "Capacity GB: \(String(capacityGBData))"
        }
        
        if let capacityGBData = self.productData?.capacityAlternate {
            self.lblCapacityGB.isHidden = false
            self.lblCapacityGB.text = "Capacity GB: \(String(capacityGBData))"
        }
        
        if let capaCityData = self.productData?.capacity {
            self.lblCapacity.isHidden = false
            self.lblCapacity.text = "Capacity: \(capaCityData)"
        }
        
        if let prizeData = self.productData?.price {
            self.lblPrice.isHidden = false
            self.lblPrice.text = "Price: \(String(prizeData))"
        }
        
        if let prizeData = self.productData?.priceAlternate {
            self.lblPrice.isHidden = false
            self.lblPrice.text = "Price: \(String(prizeData))"
        }
        
        if let generationData = self.productData?.generation {
            self.lblGeneration.isHidden = false
            self.lblGeneration.text = "Generation: \(generationData)"
        }
        
        if let generationData = self.productData?.generationAlternate {
            self.lblGeneration.isHidden = false
            self.lblGeneration.text = "Generation: \(generationData)"
        }
        
        if let yearData = self.productData?.year {
            self.lblYear.isHidden = false
            self.lblYear.text = "Year: \(yearData)"
        }
        if let cpuModalData = self.productData?.cpuModel {
            self.lblCpuModal.isHidden = false
            self.lblCpuModal.text = "CPUModal: \(cpuModalData)"
        }
        
        if let hardDiskSizeData = self.productData?.hardDiskSize {
            self.lblHardDiskSize.isHidden = false
            self.lblHardDiskSize.text = "HardDiskSize: \(hardDiskSizeData)"
        }
        
        if let hardDiskSizeData = self.productData?.screenSize {
            self.lblHardDiskSize.isHidden = false
            self.lblHardDiskSize.text = "HardDiskSize: \(hardDiskSizeData)"
        }
        
        if let strapColorData = self.productData?.strapColour {
            self.lblStrapColor.isHidden = false
            self.lblStrapColor.text = "Strap Color : \(strapColorData)"
        }
        
        if let caseSizeData = self.productData?.caseSize {
            self.lblCaseSize.isHidden = false
            self.lblCaseSize.text = "Case Size : \(caseSizeData)"
        }
        
        if let descriptionData = self.productData?.description {
            self.lblDescription.isHidden = false
            self.lblDescription.text = "Case Size : \(descriptionData)"
        }
        
        if let descriptionData = self.productData?.descriptionAlternate {
            self.lblDescription.isHidden = false
            self.lblDescription.text = "Case Size : \(descriptionData)"
        }
        
    }
    
    //MARK: - Action Funtion
    
    
    //MARK: - Web Service Funtion
    
    
}
