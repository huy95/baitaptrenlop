//
//  TopCollectionViewCell.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
    
    let cellView: UIView = {
      let view = UIView()
      view.translatesAutoresizingMaskIntoConstraints = false
      return view
    }()
    
    let hourr: UILabel = {
      let label = UILabel()
      // cho phép layout code
      label.translatesAutoresizingMaskIntoConstraints = false
      // text trống
      label.text = ""
      label.textColor = .white
      // chữ trong label chuyển ra giữa
      label.textAlignment = .center
      // font = system phong và size 16
      label.font = .systemFont(ofSize: 16)
      return label
    }()
    
    let image1: UIImageView = {
      let imageView = UIImageView()
      imageView.translatesAutoresizingMaskIntoConstraints = false
      imageView.image = UIImage(named: "  ")
      // tuỳ chỉnh ảnh scaleFill
      imageView.contentMode = .scaleAspectFit
      return imageView
    }()
    
    let T: UILabel = {
      let label = UILabel()
      label.translatesAutoresizingMaskIntoConstraints = false
      label.text = ""
      label.textAlignment = .center
      label.textColor = .white
      label.font = .systemFont(ofSize: 20)
      return label
    }()
//    let hourr : UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = ""
//        label.textColor = .white
//        label.textAlignment = .center
//        label.font = .systemFont(ofSize: 14)
//        return label
//
//    }()
//    let image1 : UIImageView = {
//    let label1 = UIImageView()
//    label1.translatesAutoresizingMaskIntoConstraints = false
//    return label1
//
//    }()
//    let T : UILabel = {
//
//        let label2 = UILabel()
//        label2.translatesAutoresizingMaskIntoConstraints = false
//        label2.text = ""
//        label2.textColor = .systemIndigo
//        label2.textAlignment = .center
//        label2.font = .systemFont(ofSize: 14)
//        return label2
//
//    }()
    var infor : Now? {
        didSet {
            if let infor = infor {
                hourr.text = infor.hour
                image1.image = UIImage(named: infor.weather)
                T.text = infor.T
            }
        }
    }
    override init(frame: CGRect) {
      super.init(frame: frame)
      self.layer.cornerRadius = 16
      setupLayout()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
      func setupLayout() {
        self.addSubview(cellView)
        cellView.addSubview(hourr)
        cellView.addSubview(image1)
        cellView.addSubview(T)
        
        cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
          cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
          cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
          cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
          
          hourr.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
          hourr.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0).isActive = true
          hourr.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: 0).isActive = true
          hourr.heightAnchor.constraint(equalToConstant: 16).isActive = true
          
          image1.bottomAnchor.constraint(equalTo: hourr.bottomAnchor, constant: 30).isActive = true
          image1.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 0).isActive = true
          image1.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: 0).isActive = true
          image1.heightAnchor.constraint(equalToConstant: 20).isActive = true
          
          T.widthAnchor.constraint(equalTo: cellView.widthAnchor, multiplier: 0.5).isActive = true
          T.heightAnchor.constraint(equalTo: T.widthAnchor, multiplier: 1).isActive = true
          T.centerXAnchor.constraint(equalTo: cellView.centerXAnchor, constant: 0).isActive = true
          T.centerYAnchor.constraint(equalTo: cellView.centerYAnchor, constant: 0).isActive = true
        }
        
    }

