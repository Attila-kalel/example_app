//
//  ViewController.swift
//  Example_app
//
//  Created by Attila Egemensoy on 08/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var countries: [String] = ["India", "China", "United States", "Indonesia", "Pakistan", "Nigeria", "Brazil", "Bangladesh", "Russia", "Mexico", "Ethiopia", "Japan", "Philippines", "Egypt", " DR Congo", "Vietnam", "Iran", "Turkey", "Germany", "Thailand", "UK", "Tanzania", "France", "South Africa", "Italy", "Kenya", "Myanmar", "Colombia", "South Korea", "Uganda"]
    
    private var countryPopulation = ["1.4B", "1.4B", "340M" , "276M", "240M", "221M", "172M", "144M", "128M", "125M", "123M", "116M", "111M", "100M", "98M", "88M", "85M", "83M", "71M", "67M", "66M", "64M", "60M", "58M", "54M", "54M", "51M", "51M", "47M"]
    
    @IBOutlet var countrytableView: UITableView!
    
    private let cellIdentifier = "CellIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countrytableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let country = countries[indexPath.row]
        let countryPopulation = countryPopulation[indexPath.row]
     
        var configuration = cell.defaultContentConfiguration()
        
        configuration.text = country
        configuration.secondaryText = countryPopulation
        
        cell.contentConfiguration = configuration
        return cell
    }
    
    
}
