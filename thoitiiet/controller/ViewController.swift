//
//  ViewController.swift
//  thoitiiet
//
//  Created by Huy on 2/14/20.
//  Copyright © 2020 Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var teest : UILabel = {
       let teest = UILabel()
        teest.translatesAutoresizingMaskIntoConstraints = false
        teest.backgroundColor = .black
        teest.text = "24"
        teest.font = .boldSystemFont(ofSize: 50)
        teest.textColor = .white
        return teest
    }()
    var Hanoi : UILabel = {
          let teest1 = UILabel()
           teest1.translatesAutoresizingMaskIntoConstraints = false
           teest1.backgroundColor = .black
           teest1.text = "Hà Nội"
           teest1.font = .boldSystemFont(ofSize: 50)
           return teest1
       }()
    
    let mainView: UIImageView = {
      let label = UIImageView()
      label.translatesAutoresizingMaskIntoConstraints = false
     label.image = UIImage(named: "nen1" )
      return label
    }()
//
    let TopMainColectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
//        collectionView.backgroundColor = 
        collectionView.register(TopCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    let underMainTableView : UITableView = {
        let maiView = UITableView ()
        maiView.translatesAutoresizingMaskIntoConstraints = false
        maiView.tableFooterView = UIView()
//        maiView.separatorStyle = .none
//        tableView.bounces = false
        return maiView
    }()
    var day : [now] = []
    
    var time : [time] = []
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        setdata()
        setupLayout()
//        setupColectionView()
//        setupTableView()
    }
    func setdata(){
        let day1 =   Now(hour: "now", weather: UIImage(named: "nang")!, T: "24")
        
         let   day2 =  Now(hour: "17:53", weather: UIImage(named: "nang")!, T: "23")
         let    day3 = Now(hour: "18", weather: UIImage(named: "nang")!, T: "22")
         let   day4 =  Now(hour: "19", weather: UIImage(named: "nang")!, T: "22")
         let   day5 =  Now(hour: "20", weather: UIImage(named: "nang")!, T: "22")
         let    day6 = Now(hour: "21", weather: UIImage(named: "nang")!, T: "23")
         let    day7 = Now(hour: "22", weather: UIImage(named: "nang")!, T: "23")
        day = [day1, day2, day3, day4, day5, day6, day7]
         
        let time1 = Time(nextday: "Monday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time2 = Time(nextday: "Tueday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time3 = Time(nextday: "Monday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time4 = Time(nextday: "Monday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time5 = Time(nextday: "Monday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time6 = Time(nextday: "Wesnesday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        let time7 = Time(nextday: "Monday", weather: UIImage(named: "mua")!, TR: "12", TD: "22")
        time = [time1, time2, time3, time4, time5, time6, time7]
       
        
       
        
        
        
    }
    
//    func setupColectionView() {
//        TopCollectionViewCell.delegate = self
//        TopCollectionViewCell.dataSoure = self
//        tableView.register(TopCollectionViewCell.self, forCellReuseIdentifier: "idCell2")
//    }
    
    func setupLayout(){
        view.addSubview(mainView)
        mainView.addSubview(TopMainColectionView)
//        mainView.addSubview(Hanoi)
        mainView.addSubview(underMainTableView)
        
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
//        Hanoi.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        Hanoi.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
//        Hanoi.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
//        Hanoi.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        TopMainColectionView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 300).isActive = true
        TopMainColectionView.bottomAnchor.constraint(equalTo: mainView.topAnchor, constant: 440).isActive = true
        TopMainColectionView.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 0).isActive = true
        TopMainColectionView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true
        
        underMainTableView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 445).isActive = true
        underMainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0).isActive = true
        underMainTableView.leftAnchor.constraint(equalTo: mainView.leftAnchor, constant: 0).isActive = true
        underMainTableView.rightAnchor.constraint(equalTo: mainView.rightAnchor, constant: 0).isActive = true
        
        
        
//        teest.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//        teest.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        teest.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: 1).isActive = true
//        teest.heightAnchor.constraint(greaterThanOrEqualToConstant: 32).isActive = true
    }
  
//    func setupTableView(){
//        underMainTableView.dataSource = self
//        underMainTableView.delegate = self
//        underMainTableView.register(underTableViewCell.self, forCellReuseIdentifier: "idCell2")
//    }

}
//colectionView
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return day.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TopCollectionViewCell
        cell.hourr.text = day[indexPath.row].hour
        cell.T.text = day[indexPath.row].T
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           return 5
       }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let size = (collectionView.frame.width - 20)/2
           return CGSize(width: size, height: size)
       }
}



// tableView
//extension ViewController : UITableViewDelegate, UITableViewDataSource {
////    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        return 50
////    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return test2.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! underTableViewCell
//        cell.information = test2[indexPath.row]
//        return cell
//    }
//
//}
