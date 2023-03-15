//
//  RegionalDataController.swift
//  NewsApp
//
//  Created by Mehreen Kanwal on 20.02.23.
//

import UIKit

class RegionalDataController: UIViewController {
    @IBOutlet var imageview : UIImageView!
    @IBOutlet var Mylabel : UILabel!

    var image = UIImage()
    var regionName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Mylabel.text = regionName
        self.navigationItem.setHidesBackButton(true, animated: true)

    }
  
}

