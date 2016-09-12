//
//  ViewController.swift
//  swift_layoutLearn
//
//  Created by SupingLi on 16/9/12.
//  Copyright © 2016年 SupingLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var starView: UIStackView!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //
    
    // MARK: action
    
    @IBAction func addAction(sender: UIButton) {
        let img = UIImage(named: "2");
        let imgview = UIImageView(image: img)
        imgview.contentMode = .ScaleAspectFit
        self.starView.addArrangedSubview(imgview)
        UIView.animateWithDuration(0.25) { 
            self.starView.layoutIfNeeded()
        }
    }
    
    @IBAction func nextAction(sender: UIButton) {
        presentViewController(NextViewController(), animated: true, completion: nil)
    }

}

