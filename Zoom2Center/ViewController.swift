//
//  ViewController.swift
//  Zoom2Center
//
//  Created by Prashant G on 6/30/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fish1: UIImageView!
    @IBOutlet weak var fish2: UIImageView!
    @IBOutlet weak var fish3: UIImageView!
    @IBOutlet weak var fish4: UIImageView!
    @IBOutlet weak var fish5: UIImageView!
    @IBOutlet weak var fish6: UIImageView!
    @IBOutlet weak var fish7: UIImageView!
    @IBOutlet weak var fish8: UIImageView!
    
    @IBOutlet var fishButton: [UIButton]!
    
    var imgZoomed = false
    
    var backViewX:CGFloat?
    var backViewY:CGFloat?
    
    @IBAction func fishButtonTapped(_ sender: UIButton) {
        
        backViewX = sender.frame.origin.x
        backViewY = sender.frame.origin.y
        
        switch sender.tag {
        case 101:
            btnTapped(backView: fish1)
            break
        case 102:
            btnTapped(backView: fish2)
            break
        case 103:
            btnTapped(backView: fish3)
            break
        case 104:
            btnTapped(backView: fish4)
            break
        case 105:
            btnTapped(backView: fish5)
            break
        case 106:
            btnTapped(backView: fish6)
            break
        case 107:
            btnTapped(backView: fish7)
            break
        case 108:
            btnTapped(backView: fish8)
            break
        default:
            print("default")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func btnTapped(backView:UIImageView) {

        if imgZoomed {
            imgZoomed = false


            UIView.animate(withDuration: 1) {
                backView.transform = .identity
                backView.frame.origin.x = self.backViewX!
                backView.frame.origin.y = self.backViewY!
            }
        }
        else {
            imgZoomed = true

            let tm = CGAffineTransform(scaleX: 5, y: 5);
            let center = self.view.center

            UIView.animate(withDuration: 1) {
                backView.transform = tm
                backView.center = center
            }
        }



    }
    
}

