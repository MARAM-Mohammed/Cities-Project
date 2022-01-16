//
//  ViewController.swift
//  tabelViewKingDomeCities
//
//  Created by MARAM on 22/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var array = [
        City(name : "Riyadh", image:UIImage(named: "riyadh") , desc: "Riyadh is the capital and largest city of Saudi Arabia. It is situated in the center of the Arabian Peninsula and is home to 4,854,000 people, and the urban center of a region with a population of close to 7 million people."),
        
        City(name : "Mecca", image:UIImage(named: "mecca") , desc: "Mecca, Arabic Makkah, ancient Bakkah, city, western Saudi Arabia, located in the Ṣirāt Mountains, inland from the Red Sea coast. It is the holiest of Muslim cities. "),
        
        
        City(name : "Dammam", image:UIImage(named: "dammam") , desc: "Dammam city is the seat of the Governor of the Eastern Province of the Kingdom of Saudi Arabia.The city is located on the coast of the Arabian Gulf, around 400 kilometres (250 Miles) east of Saudi Arabia’s Capital city of Riyadh."),
        
        City(name : "Jeddah", image:UIImage(named: "jeddah") , desc: "Jeddah is a saudi city located in the middle of the eastern coast of the red sea known as the Bride of the Red Sea and is considered the economic and tourism capital of the country."),
        
        City(name : "Jazan", image:UIImage(named: "jazan") , desc: "Jazan, also spelled Jizan, Gizan or Gazan, is a port city and the capital of Jizan Region, which lies in the southwest corner of Saudi Arabia."),
        
        City(name : "Tabuk", image:UIImage(named: "tabuk") , desc: "Tabuk, the capital city of the Tabuk region in northwestern Saudi Arabia, has long been a resting point for Jordanian and Egyptian pilgrims.")
    ]

    @IBOutlet weak var citiesTabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        citiesTabelView.dataSource = self
//        Class For Data
        citiesTabelView.delegate = self
//        Class For Behaviors
     
    }
}

extension ViewController  : UITableViewDataSource , UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCell") as! CityCell
        
        let cuurentCity = array[indexPath.row]
        cell.cityNameLabel.text = cuurentCity.name
        
        cell.cityImageView.image = cuurentCity.image
        
        cell.cityImageView.layer.cornerRadius =
        cell.cityImageView.frame.width/2
        
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 112
    
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let city = array[indexPath.row]
        print(city.name)
    
        let vc = storyboard?.instantiateViewController(withIdentifier: "citesVC") as? DetailsViewController
        
        if let viewController = vc {
            viewController.city = city
            present(viewController, animated: true, completion: nil)
    }
}
}


