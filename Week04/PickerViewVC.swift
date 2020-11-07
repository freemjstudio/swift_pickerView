//
//  PickerViewVC.swift
//  Week04
//
//  Created by 우민지 on 2020/11/07.
//

import UIKit


//delegate pattern

//class struct enum
//protocol Tell {
//    func tell()
//}

//
//class Cat:Tell {
//    func tell(){
//        print("야옹야옹")
//    }
//}
//class Person: Tell {
//    func tell(){
//        print("멍멍")
//    }
//}
//
//class BabyCat:Cat {
//}


class PickerViewVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var albumPickerView: UIPickerView!
    
    var albums:[Album] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumPickerView.dataSource = self
        albumPickerView.delegate = self
        setData()
        initPickerView()
        // Do any additional setup after loading the view.
    }
    

    func setData() {
        albums.append(contentsOf: [
            Album(albumName: "트와이스 정규 2집", imageName: "twice"),
            Album(albumName: "블랙~~~~~핑크엘범~~~", imageName: "blackpink"),
            Album(albumName: "랩몬스터가 만든 명반^^", imageName: "bts"),
            Album(albumName: "명반띵반", imageName: "crush")
        ])
    }
    
    func initPickerView() {
        let firstIndex = albums[0]
        
        imageView.image = firstIndex.makeImage()
        albumNameLabel.text = firstIndex.albumName
        
    }
    
}

extension PickerViewVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 //column of the pickerView
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return albums.count
    }
    
}

extension PickerViewVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return albums[row].albumName //album[0].
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.imageView.image = albums[row].makeImage()
        self.albumNameLabel.text = albums[row].albumName
        
    }
    
    
}

