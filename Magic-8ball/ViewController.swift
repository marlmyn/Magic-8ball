//
//  ViewController.swift
//  Magic-8ball
//
//  Created by Akmaral Ergesh on 26.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var imageButton = UIButton()
    var imageArray = [UIImage(named: "ball1"),
                      UIImage(named: "ball2"),
                      UIImage(named: "ball3"),
                      UIImage(named: "ball4"),
                      UIImage(named: "ball5")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.imageButton.frame = CGRect(x: 200, y: 200, width: 300, height: 250)
        self.imageButton.setImage(UIImage(named: "ball1"), for: .normal)
        //self.imageButton.setImage(UIImage(named: "ball"), for: .highlighted)
        self.imageButton.center = view.center
        self.imageButton.sizeToFit()
        self.imageButton.addTarget(self, action: #selector(randomTapped), for: .touchUpInside)
        self.view.addSubview(imageButton)
        
    }

    //Set random image to button
    @objc func randomTapped() {
        
        let randomIndex = Int.random(in: 0...4)
        let randomImage = imageArray[randomIndex]
        
        imageButton.setImage(randomImage, for: .normal)
    }

}

