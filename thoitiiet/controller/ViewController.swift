//
//  ViewController.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView: UIImageView = {
        let label = UIImageView()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.image = UIImage(named: "nen1" )
        return label
      }()
    let mainTop : UIView = {
          let maintop = UIView()
          maintop.translatesAutoresizingMaskIntoConstraints = false
          return maintop
      }()
    
    var Hanoi : UILabel = {
          let teest1 = UILabel()
           teest1.translatesAutoresizingMaskIntoConstraints = false
//           teest1.backgroundColor = .black
           teest1.text = "Hà Nội"
         teest1.textColor = .white
         teest1.textAlignment = .center
           teest1.font = .boldSystemFont(ofSize: 50)
           return teest1
       }()
    var MuaNhe : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "Mưa Bay"
            teest.font = .boldSystemFont(ofSize: 20)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    var T24 : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "24º"
            teest.font = .boldSystemFont(ofSize: 80)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    var Homnay : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "Hôm Nay"
            teest.font = .boldSystemFont(ofSize: 16)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    var ThuSau : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "Thứ Sáu"
            teest.font = .boldSystemFont(ofSize: 16)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    
    var T23 : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "23"
            teest.font = .boldSystemFont(ofSize: 16)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    var T20 : UILabel = {
           let teest = UILabel()
            teest.translatesAutoresizingMaskIntoConstraints = false
    //        teest.backgroundColor = .black
            teest.text = "20"
            teest.font = .boldSystemFont(ofSize: 16)
            teest.textColor = .white
        teest.textAlignment = .center
            return teest
        }()
    
//
    let TopMainColectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = UIView()
        // dang ki cell
        collectionView.register(TopCollectionViewCell.self, forCellWithReuseIdentifier: "CollectionCell")
        return collectionView
    }()
    
    let underMainTableView : UITableView = {
        let maiView = UITableView ()
        maiView.translatesAutoresizingMaskIntoConstraints = false
        maiView.backgroundView = UIView()
//        maiView.backgroundColor = .clear
        maiView.backgroundView = UIView()
        maiView.register(underTableViewCell.self, forCellReuseIdentifier: "tableCell1")

        return maiView
    }()
    var day : [Now] = []
    var time : [Time] = []
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        setdata()
        setupLayout()
        setupColectionView()
        setupTableView()
    }
    func setdata(){
        let day1 =   Now(hour: "now", weather: "nang", T: "24")
        
         let   day2 =  Now(hour: "17:53", weather: "nang", T: "23")
         let    day3 = Now(hour: "18", weather: "nang", T: "22")
         let   day4 =  Now(hour: "19", weather: "mua", T: "22")
         let   day5 =  Now(hour: "20", weather: "mua", T: "22")
         let    day6 = Now(hour: "21", weather: "mua", T: "23")
         let    day7 = Now(hour: "22", weather: "may", T: "23")
        day = [day1, day2, day3, day4, day5, day6, day7]
         
        let time1 = Time(nextday: "Monday", weather: "mua", TR: "12", TD: "22")
        let time2 = Time(nextday: "Tueday", weather: "nang", TR: "12", TD: "22")
        let time3 = Time(nextday: "Monday", weather: "mua", TR: "12", TD: "22")
        let time4 = Time(nextday: "Monday", weather: "may", TR: "12", TD: "22")
        let time5 = Time(nextday: "Monday", weather: "mua", TR: "12", TD: "22")
        let time6 = Time(nextday: "Wesnesday", weather: "mua", TR: "12", TD: "22")
        let time7 = Time(nextday: "Monday", weather: "may", TR: "12", TD: "22")
        time = [time1, time2, time3, time4, time5, time6, time7]
    }
    
    
    
    func setupLayout(){
        // view : HN - muabay - 24 - thu7 - hom nay - 23 - 20
        view.addSubview(mainView)
        mainView.addSubview(mainTop)
        mainView.addSubview(TopMainColectionView)
        mainView.addSubview(underMainTableView)
        
        mainTop.addSubview(Hanoi)
        mainTop.addSubview(MuaNhe)
        mainTop.addSubview(T24)
        
        mainTop.addSubview(ThuSau)
        mainTop.addSubview(Homnay)
        
        mainTop.addSubview(T20)
        mainTop.addSubview(T23)
        mainView.addSubview(Hanoi)
        mainView.addSubview(underMainTableView)
        
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        mainTop.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0).isActive = true
        mainTop.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true
        mainTop.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 0).isActive = true
        mainTop.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.4).isActive = true
        
        Hanoi.centerXAnchor.constraint(equalTo: mainTop.centerXAnchor, constant: 0).isActive = true
        Hanoi.centerYAnchor.constraint(equalTo: mainTop.centerYAnchor, constant: -UIScreen.main.bounds.maxY/10).isActive = true
        Hanoi.widthAnchor.constraint(equalTo: mainTop.widthAnchor, multiplier: 1).isActive = true
        Hanoi.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1).isActive = true
        
        MuaNhe.topAnchor.constraint(equalTo: Hanoi.topAnchor, constant: 50).isActive = true
        MuaNhe.widthAnchor.constraint(equalTo: mainTop.widthAnchor, multiplier: 0.3).isActive = true
        MuaNhe.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.1).isActive = true
        MuaNhe.centerXAnchor.constraint(equalTo: mainTop.centerXAnchor, constant: 0).isActive = true
        
        T24.topAnchor.constraint(equalTo: MuaNhe.topAnchor, constant: 50).isActive = true
        T24.widthAnchor.constraint(equalTo: mainTop.widthAnchor, multiplier: 1).isActive = true
        T24.heightAnchor.constraint(equalToConstant: 90).isActive = true
        T24.centerXAnchor.constraint(equalTo: mainTop.centerXAnchor, constant: 0).isActive = true
        
        
        

        
//
        TopMainColectionView.topAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: 0).isActive = true
        TopMainColectionView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.15).isActive = true
        TopMainColectionView.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 0).isActive = true
        TopMainColectionView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true
//
        ThuSau.bottomAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -5).isActive = true
        ThuSau.topAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -20).isActive = true
        ThuSau.leftAnchor.constraint(equalTo: mainTop.leftAnchor, constant: 10).isActive = true
        ThuSau.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        Homnay.bottomAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -5).isActive = true
        Homnay.topAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -20).isActive = true
        Homnay.leftAnchor.constraint(equalTo: ThuSau.leftAnchor, constant: 80).isActive = true
        Homnay.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        T20.bottomAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -5).isActive = true
        T20.topAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -20).isActive = true
        T20.rightAnchor.constraint(equalTo: mainTop.rightAnchor, constant: -10).isActive = true
        T20.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        T23.bottomAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -5).isActive = true
        T23.topAnchor.constraint(equalTo: mainTop.bottomAnchor, constant: -20).isActive = true
        T23.rightAnchor.constraint(equalTo: T20.rightAnchor, constant: -20).isActive = true
        T23.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        
//
        underMainTableView.topAnchor.constraint(equalTo: TopMainColectionView.bottomAnchor, constant: 0).isActive = true
        underMainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0).isActive = true
        underMainTableView.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 0).isActive = true
        underMainTableView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true

    }
  
    
    func setupColectionView() {
        TopMainColectionView.delegate = self
        TopMainColectionView.dataSource = self
    }
    func setupTableView(){
        underMainTableView.dataSource = self
        underMainTableView.delegate = self
    }
}
//colectionView
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return day.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! TopCollectionViewCell
        
        cell.infor = day[indexPath.row]
        cell.contentView.backgroundColor = .clear
        cell.layer.backgroundColor = UIColor.clear.cgColor
        return cell
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
      return CGSize(width: UIScreen.main.bounds.maxX / 7, height: UIScreen.main.bounds.maxY / 5)
    }
    
    // hàm trả về khoảng cách giữa hai hàng
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // hàm trả về khoảng cách giữa 2 item (tương tự 2 cột)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}





// tableView
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return time.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell1", for: indexPath) as! underTableViewCell
        cell.labelday.text = time[indexPath.row].nextday
        cell.image2.image = UIImage(named: time[indexPath.row].weather)
        cell.labelTD.text = time[indexPath.row].TD
        cell.labelTR.text = time[indexPath.row].TR
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}


