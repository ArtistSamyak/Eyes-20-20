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
    
    
    
    
    var timer : Timer?
    var worktime = 1200
    var breaktime = 20
    
    var stopTimer = false
        
    override func viewDidLoad() {
       
        instrBtn.setTitle("Let's start!", for: .normal)
        timeleft.text = "20:00"
        timer?.invalidate()
        
        
    }
    
    @IBAction func instrBtn(_ sender: CustomButton) {
        if instrBtn.alpha == 0 {
            instrBtn.alpha = 1
        } else {
            instrBtn.alpha = 0
        }
        startTimer()
        
    }
    
    @IBAction func resetBtn(_ sender: UIButton) {
        timer?.invalidate()
        instrBtn.alpha = 1
        viewDidLoad()
    }
    
    @IBAction func settings(_ sender: UIButton) {
        
        
    }
    
    
    
    func startTimer()  {
        if instrBtn.titleLabel?.text == "Let's start!" {
            var count = worktime
            DispatchQueue.main.asyncAfter(deadline: .now() + 1201) {
                self.timer?.invalidate()
                self.instrBtn.alpha = 1
                self.timeleft.text = "05:00"
                self.instrBtn.setTitle("Let's take a break!", for: .normal)
                
            }
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (t) in
                count -= 1
                let min = Int(count/60)
                let sec = Int(count - (min*60))
                self.timeleft.text = "\(min)" + ":" + "\(sec)"
                if self.stopTimer == true{
                    t.invalidate()
                    self.instrBtn.alpha = 1
                }
                
            })
        }else if instrBtn.titleLabel?.text == "Let's take a break!" {
            var count = breaktime
            DispatchQueue.main.asyncAfter(deadline: .now() + 21) {
                self.timer?.invalidate()
                self.instrBtn.alpha = 1
                self.timeleft.text = "20:00"
                self.instrBtn.setTitle("Let's start!", for: .normal)
                self.instrBtn.alpha = 1
            }
            
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (t) in
                count -= 1
                let min = Int(count/60)
                let sec = Int(count - (min*60))
                self.timeleft.text = "\(min)" + ":" + "\(sec)"
                
            })
            
        }
    }
    
}
