//
//  ViewController.swift
//  Cake-Pattern
//
//  Created by Cedric Gatay on 07/11/2018.
//  Copyright © 2018 Cedric Gatay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var button: UIButton = {
        let button = UIButton(frame: CGRect(x: self.view.frame.width / 4, y: UIApplication.shared.statusBarFrame.height, width: self.view.frame.width / 2, height: 64))
        button.setTitle("🎲 🎲 🎲", for: .normal)
        button.addTarget(self, action: #selector(again(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var label: UILabel = {
        let label = UILabel(frame: self.view.frame)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        return label
    }()
    
    var count : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        again(self)
        view.addSubview(label)
        view.addSubview(button)
    }
    
    @objc func again(_: AnyObject){
        label.text = "\(count!)\n\(context.stringService.bail())"
        count+=1
    }
}

