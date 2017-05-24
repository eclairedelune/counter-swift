//
//  ViewController.swift
//  Geofly
//
//  Created by Emma Claire Philippides on 4/6/17.
//  Copyright © 2017 Emma Claire Philippides. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0
    var counterLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello!")
        plusButton()
        minusButton()
        counter()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func plusButton() {
        let rect: CGRect = CGRect(x: 100, y: 500, width: 50, height: 50)
        print("I am working")
        let plusButton: UIButton = UIButton(frame: rect)
        plusButton.backgroundColor = UIColor.yellow
        plusButton.layer.cornerRadius = 25
        plusButton.setTitle("+", for: UIControlState.normal)
        plusButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        self.view.addSubview(plusButton)
        plusButton.addTarget(self, action:#selector(pressPlusButton), for: UIControlEvents.touchUpInside)
       

    }
    
    func minusButton() {
        let distanceFromLeft: CGFloat = view.frame.size.width - 50 - 100
        let rect: CGRect = CGRect(x: distanceFromLeft, y: 500, width: 50, height: 50)
        print("I am working")
        let minusButton: UIButton = UIButton(frame: rect)
        minusButton.backgroundColor = UIColor.green
        minusButton.layer.cornerRadius = 25
        minusButton.setTitle("-", for: UIControlState.normal)
        minusButton.setTitleColor(UIColor.black, for: UIControlState.normal)
        self.view.addSubview(minusButton)
        minusButton.addTarget(self, action: #selector(pressMinusButton), for: UIControlEvents.touchUpInside)
        
        
    }
    
    func pressPlusButton() {
        count += 1
        print("\(count)")
        counterLabel?.text = "\(count)"
        
    }

    func pressMinusButton() {
        count -= 1
        if count < 0{
            count = 0
        }
        print("\(count)")
        counterLabel?.text = "\(count)"
    }

    func counter() {
        let width: CGFloat = view.frame.size.width
        let rect: CGRect = CGRect(x: 0, y: 100, width: width, height: 50)
        print("I am working")
         counterLabel = UILabel(frame: rect)
        self.view.addSubview(counterLabel!)
        counterLabel!.text = "label"
        counterLabel!.textAlignment = .center
        
    }

}

