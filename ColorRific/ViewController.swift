//
//  ViewController.swift
//  ColorRific
//
//  Created by Tim McEwan on 9/9/15.
//  Copyright © 2015 Tim McEwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var colorWheel: [UIColor] = [UIColor.orangeColor(), UIColor.greenColor(), UIColor.redColor(), UIColor.blueColor(), UIColor.brownColor(), UIColor.orangeColor()]
    var SelectedColor = UIColor?()
    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            self.TableView.dataSource = self
            self.TableView.delegate = self
    }
    override func viewWillAppear(animated: Bool) {
        self.TableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return colorWheel.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        cell.backgroundColor = colorWheel[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        SelectedColor = colorWheel[indexPath.row]
        self.performSegueWithIdentifier("SniperSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SniperSegue"{
            segue.destinationViewController.view.backgroundColor = SelectedColor
        }
    }
    
}


