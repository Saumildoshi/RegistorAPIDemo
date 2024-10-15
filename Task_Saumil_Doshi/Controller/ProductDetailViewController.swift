//
//  ProductDetailViewController.swift
//  Task_Saumil_Doshi
//
//  Created by Saumil Doshi on 14/10/24.
//

import UIKit

class ProductDetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var tblDetailList: UITableView!
    
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
        self.tblDetailList.register(UINib(nibName: "MobileTableViewCell", bundle: nil), forCellReuseIdentifier: "MobileTableViewCell")
    }
    
    //MARK: - Action Funtion
    
    //MARK: - Web Service Funtion
    

}

//extension ProductDetailViewController: UITableViewDelegate,UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return productData?
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//    
//    
//}
