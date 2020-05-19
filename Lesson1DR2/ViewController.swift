//
//  ViewController.swift
//  Lesson1DR2
//
//  Created by Vladimir on 19/05/2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RedView: UIView!
    @IBOutlet weak var YellowView: UIView!
    @IBOutlet weak var GreenView: UIView!
    @IBOutlet weak var MainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedView.layer.cornerRadius=RedView.frame.width/2
        YellowView.layer.cornerRadius=YellowView.frame.width/2
        GreenView.layer.cornerRadius=GreenView.frame.width/2
        MainButton.layer.cornerRadius=MainButton.frame.height/4
        RedView.alpha=0.3
        YellowView.alpha=0.3
        GreenView.alpha=0.3
    }

    @IBAction func MainButtonPressed() {
        MainButton.setTitle("Next", for: .normal)
        
        if RedView.alpha<1.0  && YellowView.alpha<1.0 && GreenView.alpha<1.0 { // Все выключены
            RedView.alpha=1.0
            YellowView.alpha=0.3
            GreenView.alpha=0.3
        } else if RedView.alpha>0.3 && YellowView.alpha<1.0 && GreenView.alpha<1.0 { // Горит красный
            RedView.alpha=0.3
            YellowView.alpha=1.0
            GreenView.alpha=0.3
        } else if RedView.alpha<1.0 && YellowView.alpha>0.3 && GreenView.alpha<1.0 { // Горит желтый
            RedView.alpha=0.3
            YellowView.alpha=0.3
            GreenView.alpha=1.0
        } else if RedView.alpha<1.0 && YellowView.alpha<1.0 && GreenView.alpha>0.3 { // Горит зеленый
            RedView.alpha=1.0
            YellowView.alpha=0.3
            GreenView.alpha=0.3
        }
    }
    
}

