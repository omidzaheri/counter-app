//
//  ViewController.swift
//  counter-app
//
//  Created by Omid Zaheri on 9/17/23.
//

import UIKit

class CounterVC: UIViewController {
    
    @IBOutlet var counterLable: UILabel!
    
    @IBOutlet var plusBtn: UIButton!
    
    @IBOutlet var minusBtn: UIButton!
    
    // var
    
    var count: Int = 0
    
    func add() {
        count += 1
        self.counterLable.text = String(count)
    }
    
    func minus() {
        count -= 1
        self.counterLable.text = String(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.setupView()
    }
    
    func setupView() {
        self.counterLable.text = String(self.count)
        self.plusBtn.layer.cornerRadius = self.plusBtn.frame.height / 8
        self.minusBtn.layer.cornerRadius = self.minusBtn.frame.height / 8
    }

    @IBAction func plusBtnPressed(_ sender: Any) {
        self.add()
    }
    
    @IBAction func minusBtnPressed(_ sender: Any) {
        self.minus()
    }
    
    
}

