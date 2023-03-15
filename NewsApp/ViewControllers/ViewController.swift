//
//  ViewController.swift
//  NewsApp
//
//  Created by Mehreen Kanwal on 16.02.23.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet var regionTableView : UITableView!
    @IBOutlet var bestatigenButton : UIButton!
    @IBOutlet var crossButton : UIButton!
    var myindex :Int!
    var myCell : regionCustomTableViewCell!
    var isCheck : Bool = false
   

    override func viewDidLoad() {
        super.viewDidLoad()
        App.modelsController.gettingModels()
        print(App.modelsController.freiburgModel.name)
        regionTableView.delegate = self
        regionTableView.dataSource = self
        regionTableView.reloadData()
        regionTableView.layer.cornerRadius = 15
        regionTableView.register(App.regionalTableviewCellObject.nib, forCellReuseIdentifier: App.regionalTableviewCellObject.identifier)
        self.allButtonsStyle(button: bestatigenButton,cornerRadius:10)
        self.allButtonsStyle(button: crossButton, cornerRadius:crossButton.frame.size.height/2)
       

        
        
    }

    func allButtonsStyle(button:UIButton,cornerRadius : CGFloat){
        button.layer.cornerRadius = cornerRadius
        button.clipsToBounds = true
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        App.modelsController.models.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = regionTableView.dequeueReusableCell(withIdentifier: App.regionalTableviewCellObject.identifier, for: indexPath) as? regionCustomTableViewCell {
           
            cell.selectionStyle = .none
            cell.regionCellLabel.text = "\(App.modelsController.models[indexPath.row].name)"
            myCell = cell
           

            
        return cell
        }
       return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        regionTableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        let cell = regionTableView.cellForRow(at: indexPath) as? regionCustomTableViewCell
        if isCheck == false {
            isCheck = true
            cell?.regionCellLabel.textColor = .black
            App.modelsController.baseUrl = App.modelsController.models[indexPath.row].baseUrl
            print(App.modelsController.models[indexPath.row].name)
            App.modelsController.requestForMenus()
            print("****** Data for Articles *******")
            App.modelsController.requestForRessorts()
            if let vc = storyboard?.instantiateViewController(withIdentifier: "RegionalDataController") as? RegionalDataController {
            self.navigationController?.pushViewController(vc, animated:true)
                vc.regionName = App.modelsController.models[indexPath.row].name
            }
        }
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        regionTableView.cellForRow(at: indexPath)?.accessoryType = .none
        isCheck = false
        let cell = regionTableView.cellForRow(at: indexPath) as? regionCustomTableViewCell
        cell?.regionCellLabel.textColor = .systemGray
    }
    
}

