//
//  HomeViewController.swift
//  HomeScreen
//
//  Created by Bradley McClard on 10/31/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var myView: UIView = {
        let myView = UIImageView(frame: CGRect(x: 0, y: 0, width: 800, height: 1000))
        myView.image = UIImage(named: "titlenew")
        
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(myView)
    }
    
   override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myView.center = view.center
    }
    
}
