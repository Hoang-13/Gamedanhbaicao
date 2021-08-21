//
//  ViewController.swift
//  Gamedanhbaicao
//
//  Created by Nguyen Hoang Viet on 21/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UIImageView!
    @IBOutlet weak var b2: UIImageView!
    @IBOutlet weak var b3: UIImageView!
    @IBOutlet weak var m1: UIImageView!
    @IBOutlet weak var m2: UIImageView!
    @IBOutlet weak var m3: UIImageView!
    @IBOutlet weak var Rutbai: UIButton!
    @IBAction func ButtonRutBai(_ sender: Any) {
        let random = ListBobai.count
        var Random = Int.random(in: 0...random)
        var ImageName = ListBobai[Random]
        b1.image = UIImage(named: ImageName)
        ListBobai.remove(at: Random)
        // PARK m1
        var ImageNameM1 = ListBobai[Random]
        m1.image = UIImage(named: ImageNameM1 )
        ListBobai.remove(at: Random)
        b2.image = UIImage(named: ImageName)
        ListBobai.remove(at: Random)
        // PARK m1
        m2.image = UIImage(named: ImageName)
        ListBobai.remove(at: Random)
        b3.image = UIImage(named: ImageName)
        ListBobai.remove(at: Random)
        // PARK m1
        m3.image = UIImage(named: ImageName)
        ListBobai.remove(at: Random)
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Create()
    }
    var ListBobai: [String] = []
    func Create() {
        let careType = ["b", "c" , "ch", "r" ]
        (1...13).forEach { (index) in careType.forEach ({ (type) in let name = "\(index)_\(type).png"
            ListBobai.append(name)
        })
    }
    }
    

}

