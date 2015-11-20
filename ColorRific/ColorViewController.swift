//
//  ColorViewController.swift
//  ColorRific
//
//  Created by Tim McEwan on 9/9/15.
//  Copyright © 2015 Tim McEwan. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    @IBOutlet weak var ColorLbel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        if self.view.backgroundColor == UIColor.brownColor() {
            self.ColorLbel.text = "Brown"
        
                } else if self.view.backgroundColor == UIColor.greenColor() {
                    self.ColorLbel.text = "Green"
                } else if self.view.backgroundColor == UIColor.blueColor(){
                    self.ColorLbel.text = "Blue"
                } else if self.view.backgroundColor == UIColor.redColor() {
                    self.ColorLbel.text = "Red"
                } else if self.view.backgroundColor == UIColor.purpleColor() {
                    self.ColorLbel.text = "Purple"
        } else if self.view.backgroundColor == UIColor.orangeColor() {
                self.ColorLbel.text = "Sofia 🌵"
        
        }
            }
}
