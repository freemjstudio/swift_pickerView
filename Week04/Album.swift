//
//  Album.swift
//  Week04
//
//  Created by 우민지 on 2020/11/07.
//

import Foundation
import UIKit

struct Album {
    var albumName:String // 
    var imageName:String // image 나중에 넣어지는거
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
    
    
}
