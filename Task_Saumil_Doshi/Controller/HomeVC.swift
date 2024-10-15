//
//  HomeVC.swift
//  Task_Saumil_Doshi
//
//  Created by XcelTec-126 on 12/10/24.
//

import UIKit

class HomeVC: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var tblMobileList: UITableView!
    
    //MARK: - Class Properties
    
    var arrMobileList = [MainModal]()
    
    //MARK: - Life Cycle function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Class Function
    
    func setupUI() {
        self.tblMobileList.register(UINib(nibName: "MobileTableViewCell", bundle: nil), forCellReuseIdentifier: "MobileTableViewCell")
        fetchData()
    }
    
    //MARK: - Action Funtion
    
    //MARK: - Web Service Funtion
    
    func fetchData() {
        
        let urlString = "https://api.restful-api.dev/objects"
        
        NetWorkManager.shared.getData(urlString: urlString) { (result: Result<[MainModal],Error>) in
            switch result {
            case .success(let mainModal):
                DispatchQueue.main.async {
                    self.arrMobileList = mainModal
                    self.tblMobileList.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
}


extension HomeVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMobileList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblMobileList.dequeueReusableCell(withIdentifier: "MobileTableViewCell", for: indexPath) as! MobileTableViewCell
        cell.lblMobileName.text = arrMobileList[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tblMobileList.deselectRow(at: indexPath, animated: true)
    
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductDetailVC") as! ProductDetailVC
        vc.productData = arrMobileList[indexPath.row].data
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

