//
//  underTableViewCell.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class underTableViewCell: UITableViewCell {
    
    
    let labelday: UILabel = {
        let labelRoom = UILabel()
        labelRoom.translatesAutoresizingMaskIntoConstraints = false
        labelRoom.font = .boldSystemFont(ofSize: 20)
        labelRoom.textColor = .black
        labelRoom.textAlignment = .center
        labelRoom.text = ""
        return labelRoom
    }()
    
     let image2 : UIImageView = {
        let imageRoom1 = UIImageView()
            imageRoom1.translatesAutoresizingMaskIntoConstraints = false
            imageRoom1.contentMode = .scaleAspectFit
            return imageRoom1
        }()
    
    let labelTR: UILabel = {
           let labelRoom1 = UILabel()
           labelRoom1.translatesAutoresizingMaskIntoConstraints = false
           labelRoom1.font = .boldSystemFont(ofSize: 16)
         
           labelRoom1.text = ""
            labelRoom1.textAlignment = .center
           labelRoom1.textColor = .black
           return labelRoom1
       }()
    let labelTD: UILabel = {
           let labelRoom2 = UILabel()
           labelRoom2.translatesAutoresizingMaskIntoConstraints = false
           labelRoom2.textAlignment = .center
           labelRoom2.font = .boldSystemFont(ofSize: 20)
           labelRoom2.textColor = .gray
           labelRoom2.text = ""
        
           return labelRoom2
       }()
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       setupLayput()
        // Configure the view for the selected state
    }
    func setupLayput() {
        
        self.addSubview(labelday)
       
          labelday.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
          labelday.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
          labelday.widthAnchor.constraint(greaterThanOrEqualToConstant: 20).isActive = true
          labelday.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        
           self.addSubview(labelTR)
          labelTR.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
          labelTR.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
          labelTR.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
          labelTR.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
         self.addSubview(labelTD)
          labelTD.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
          labelTD.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
          labelTD.rightAnchor.constraint(equalTo: labelTR.rightAnchor, constant: -40).isActive = true
          labelTD.widthAnchor.constraint(equalToConstant: 28).isActive = true
        
          self.addSubview(image2)
          image2.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
          image2.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
          image2.heightAnchor.constraint(equalToConstant: 30).isActive = true
          image2.widthAnchor.constraint(equalTo: image2.heightAnchor, multiplier: 1).isActive = true
        }
        
        
        
    }


