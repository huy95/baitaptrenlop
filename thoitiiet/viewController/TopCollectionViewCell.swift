//
//  TopCollectionViewCell.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
    let hourr : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .systemIndigo
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        return label
        
    }()
    let image1 : UIImageView = {
    let label1 = UIImageView()
    label1.translatesAutoresizingMaskIntoConstraints = false
    return label1
        
    }()
    let T : UILabel = {
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = ""
        label2.textColor = .systemIndigo
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 14)
        return label2
        
    }()
//    var infor : now? {
//        didSet {
//            if let data = infor {
//                hourr.text = data.hour
////                image1.image = data.weather
//                T.text = data.T
//            }
//        }
//    }
    override init(frame: CGRect) {
      super.init(frame: frame)
      self.layer.cornerRadius = 16
     
      setupLayout()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
      func setupLayout() {
        self.addSubview(hourr)
//        self.addSubview(image1)
        self.addSubview(T)
        
//      hourr.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
//      hourr.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
//      hourr.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
//      hourr.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
        hourr.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        hourr.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 14).isActive = true
        hourr.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        hourr.rightAnchor.constraint(equalTo: self.rightAnchor, constant:
        20).isActive = true
        
//        image1.topAnchor.constraint(equalTo: hourr.topAnchor, constant: 5).isActive = true
//        image1.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 14).isActive = true
//        image1.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
//        image1.rightAnchor.constraint(equalTo: self.rightAnchor, constant:
//              0).isActive = true
        
        T.topAnchor.constraint(equalTo: T.topAnchor, constant: 5).isActive = true
        T.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 14).isActive = true
        T.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        T.rightAnchor.constraint(equalTo: self.rightAnchor, constant:
              0).isActive = true
        
        
    }
}
