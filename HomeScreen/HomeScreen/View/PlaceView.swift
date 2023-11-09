//
//  PlaceView.swift
//  HomeScreen
//
//  Created by Bradley McClard on 11/2/23.
//

import UIKit

class PlaceView: UIView {
    private let maxImageSize = 84.0
        
         lazy var imageImage: UIImageView = {
            let image = UIImageView(frame: CGRect(x: 0, y: 0, width: maxImageSize, height: maxImageSize))
            image.translatesAutoresizingMaskIntoConstraints = false
            image.contentMode = .scaleAspectFill
            
            return image
        }()
        
         lazy var stateLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
         lazy var cityLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
    
         lazy var timeLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
        
            return label
        }()
    
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            setupViews()
            setupConstraints()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            
            setupViews()
            setupConstraints()
            
            self.superview?.addSubview(self)
        }
        
        private func setupViews() {
            addSubview(imageImage)
            addSubview(stateLabel)
            addSubview(cityLabel)
            addSubview(timeLabel)

            
            isHidden = false
        }
        
        private func setupConstraints() {
            let margins = layoutMarginsGuide
            
            NSLayoutConstraint.activate([
                imageImage.topAnchor.constraint(equalTo: margins.topAnchor, constant: 8.0),
                imageImage.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: 12.0),
                imageImage.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 16.0),
                imageImage.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 8.0),
                
                cityLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 0.0 ),
                cityLabel.leadingAnchor.constraint(equalTo: imageImage.trailingAnchor, constant: 12.0),
                
                stateLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 2.0),
                stateLabel.leadingAnchor.constraint(equalTo: imageImage.trailingAnchor, constant: 12.0),
                
                timeLabel.topAnchor.constraint(equalTo: stateLabel.bottomAnchor, constant: 2.0),
                timeLabel.leadingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 20.0)
            ])
        }
        
        
    func setImageImage(imageName: String) {
        imageImage.image = UIImage(named: imageName)?.resize(maxWidthHeight: maxImageSize)
    }
        
    func setStateLabel(state: String) {
        stateLabel.text = state
    }

    func setCityLabel(city: String) {
        cityLabel.text = city
    }
    func setTimeLabel(time: String) {
        timeLabel.text = time
    }
    
}
