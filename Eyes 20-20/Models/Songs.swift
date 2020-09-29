//
//  Songs.swift
//  Eyes 20-20
//
//  Created by Samyak Pawar on 29/09/20.
//

import Foundation
import AVFoundation

struct Songs {
    let name : String
    let path : String
    let Url : URL
    
    init(name : String, resource : String) {
        self.name = name
        self.path = Bundle.main.path(forResource: resource, ofType: "mp3")!
        self.Url = URL(fileURLWithPath: path)
    }
    
}
