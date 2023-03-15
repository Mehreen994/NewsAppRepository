//
//  regionCustomTableViewCell.swift
//  NewsApp
//
//  Created by Mehreen Kanwal on 18.02.23.
//

import UIKit

class regionCustomTableViewCell: UITableViewCell {
    @IBOutlet var tickImageView : UIImageView!
    @IBOutlet var regionCellLabel : UILabel!
    
    var identifier = "regionCustomTableViewCell"
    var nib = UINib(nibName: "regionCustomTableViewCell", bundle: nil)

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
