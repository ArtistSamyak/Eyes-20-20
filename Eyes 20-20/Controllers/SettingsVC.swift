//
//  SettingsVC.swift
//  Eyes 20-20
//
//  Created by Samyak Pawar on 29/09/20.
//

import UIKit

class SettingsVC: UIViewController {
    @IBOutlet weak var workRingtone: UIPickerView!
    @IBOutlet weak var breakRingtone: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workRingtone.dataSource = self
        workRingtone.delegate = self
        
        breakRingtone.dataSource = self
        breakRingtone.delegate = self
        
        
    }


}

extension SettingsVC: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "California"
    }
    
    
    
    
}
