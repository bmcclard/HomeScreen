//
//  CustomTableViewCell.swift
//  HomeScreen
//
//  Created by Bradley McClard on 11/2/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    private let cellHeight = 64.0
    private let cellWidth = 128.0
    
    lazy var placeView: PlaceView = {
        let placeView = PlaceView(frame: CGRect(x: 0, y: 0, width: cellWidth, height: cellHeight))
        
        return placeView
    }()

     override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        
        addSubview(placeView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
