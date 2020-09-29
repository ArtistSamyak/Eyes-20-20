//
//  SettingsVC.swift
//  Eyes 20-20
//
//  Created by Samyak Pawar on 29/09/20.
//

import UIKit
import AVFoundation

class SettingsVC: UIViewController {
    @IBOutlet weak var workRingtone: UIPickerView!
    @IBOutlet weak var breakRingtone: UIPickerView!
    
    var avPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        workRingtone.dataSource = self
        workRingtone.delegate = self
        
        breakRingtone.dataSource = self
        breakRingtone.delegate = self
        
        
    }

    @IBAction func backbtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension SettingsVC: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return AllSongsData.songArry.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return AllSongsData.songArry[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == workRingtone {
            do{
                avPlayer = try AVAudioPlayer(contentsOf: AllSongsData.songArry[row].Url)
                AllSongsData.workRtIndex = row
                avPlayer?.play()
            }catch{
                print(error.localizedDescription)
            }
            
        }else if pickerView == breakRingtone {
            do{
                avPlayer = try AVAudioPlayer(contentsOf: AllSongsData.songArry[row].Url)
                AllSongsData.breakRtIndex = row
                avPlayer?.play()
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    
    
    
    
}
