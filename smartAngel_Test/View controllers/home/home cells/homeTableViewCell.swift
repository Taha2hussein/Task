//
//  homeTableViewCell.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
import IBAnimatable
import Kingfisher
protocol newCell : class{
    func reuseNewCell(_ cell : homeTableViewCell, _ new: NewModel ,_ indexPath:IndexPath)
}

class homeTableViewCell: UITableViewCell {
    @IBOutlet weak var userDate: UILabel!
    
    @IBOutlet weak var userDescribtion: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: AnimatableImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension homeTableViewCell  :newCell{
    func reuseNewCell(_ cell: homeTableViewCell, _ new: NewModel,_ indexPath:IndexPath) {
        self.userName.text = new.articles[indexPath.row].title
        self.userDescribtion.text = new.articles[indexPath.row].articleDescription
        if let url =  new.articles[indexPath.row].urlToImage as? String{
        self.setImage(url)
        }
    }
    func setImage(_ url : String){
        let url = URL(string: url)
        self.userImage.kf.setImage(with: url)
     
    }
    
    
}
