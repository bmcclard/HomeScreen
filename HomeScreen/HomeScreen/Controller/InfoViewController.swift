//
//  InfoViewController.swift
//  HomeScreen
//
//  Created by Bradley McClard on 10/31/23.
//

import UIKit

class InfoViewController: UITableViewController {
    private let desiredRowHeight = 100.0
    
    var model = DataModel()
    lazy var myPlaces = model.myPlaces

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        model.setUpData()
        
        tableView.rowHeight = desiredRowHeight
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: Constants.customCellName)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPlaces.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customCellName, for: indexPath) as!
            CustomTableViewCell
        
        let place = myPlaces[indexPath.row]

        cell.placeView.setImageImage(imageName: place.image)
        cell.placeView.setStateLabel(state: place.state)
        cell.placeView.setCityLabel(city: place.city)
        cell.placeView.setTimeLabel(time: place.time)


        return cell
    }
    
}
