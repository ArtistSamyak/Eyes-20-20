//
//  HomeViewController.swift
//  Eyes 20-20
//
//  Created by Samyak Pawar on 29/09/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var timeleft: UILabel!
    @IBOutlet weak var instrBtn: CustomButton!
    @IBOutlet weak var btnStack: UIStackView!
    @IBOutlet weak var start: CustomButton!
    @IBOutlet weak var stop: CustomButton!
    
    override func viewDidLoad() {
       
        instrBtn.setTitle("Let's start!", for: .normal)
        
        
    }
    
    @IBAction func instrBtn(_ sender: CustomButton) {
        
    }
    @IBAction func startbtn(_ sender: CustomButton) {
        
    }
    @IBAction func stopbtn(_ sender: CustomButton) {
        
    }
    
    @IBAction func resetbtn(_ sender: CustomButton) {
        
    }
    @IBAction func settings(_ sender: UIButton) {
        
    }
    
}
