//
//  ViewController.swift
//  collectionTest
//
//  Created by othman shahrouri on 1/10/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var readings = ["1","2","3","4","5","6","7"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return readings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.readingLabel.text = readings[indexPath.row]
        cell.layer.cornerRadius = 15
        //Reverse scrolling direction (right to left)
        
        let now = Date.now
        
       
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        
        formatter.timeStyle = .short
        //use ar for arabic numbers
        formatter.locale = NSLocale(localeIdentifier: "ar_DZ") as Locale
        formatter.dateFormat = "EEEE -  hh:mm a"
        formatter.amSymbol = "صباحا"
        formatter.pmSymbol = "مساءا"
        
        let dateString = formatter.string(from: now)
        cell.readingTime.text = dateString
        print(dateString)
        collectionView.transform = CGAffineTransform(scaleX:-1,y: 1);
        cell.transform = CGAffineTransform(scaleX:-1,y: 1);
        
        return cell

    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
       
                
       
    }
    
    
   
//
    //Name+age+height+weight+diabetes type+national id
    //
    
    //backend
    //reading value+time
    //diabetes type
    

}

