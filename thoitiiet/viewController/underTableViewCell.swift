//
//  underTableViewCell.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class underTableViewCell: UITableViewCell {
     let image2 : UIImageView = {
        let imageRoom1 = UIImageView()
            imageRoom1.translatesAutoresizingMaskIntoConstraints = false
    //        imageRoom1.contentMode = .scaleAspectFit
            return imageRoom1
        }()
    let labelday: UILabel = {
        let labelRoom = UILabel()
        labelRoom.translatesAutoresizingMaskIntoConstraints = false
        labelRoom.font = .boldSystemFont(ofSize: 20)
        labelRoom.textColor = .black
        return labelRoom
    }()
    let labelTR: UILabel = {
           let labelRoom1 = UILabel()
           labelRoom1.translatesAutoresizingMaskIntoConstraints = false
           labelRoom1.font = .boldSystemFont(ofSize: 20)
           labelRoom1.textColor = .black
           return labelRoom1
       }()
    let labelTD: UILabel = {
           let labelRoom2 = UILabel()
           labelRoom2.translatesAutoresizingMaskIntoConstraints = false
           labelRoom2.font = .boldSystemFont(ofSize: 20)
           labelRoom2.textColor = .black
           return labelRoom2
       }()
    var information : now? {
           didSet {
               if let data = information {
                   image2.image = data.weather
                   labelday.text = data.nextday
                   labelTD.text = data.TD
                   labelTR.text = data.TR
               }
           }
       }
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    func setupLayput() {
        self.addSubview(image2)
        self.addSubview(labelday)
        self.addSubview(labelTR)
        self.addSubview(labelTD)
        
//        image2.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
//        image2.leftAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
//        image2.rightAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
//        image2.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        image2.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        image2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        image2.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.25).isActive = true
        image2.heightAnchor.constraint(equalTo: image2.widthAnchor, multiplier: 1).isActive = true
        
        labelday.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        labelday.leftAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        labelday.rightAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        labelday.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        labelTR.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        labelTR.leftAnchor.constraint(equalTo: self.leadingAnchor, constant: 30).isActive = true
        labelTR.rightAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        labelTR.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        labelTD.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        labelTD.leftAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        labelTD.rightAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        labelTD.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        
        
        
    }

}
