//
//  ViewController.swift
//  tips
//
//  Created by Tuhin Kumar on 10/8/14.
//  Copyright (c) 2014 Eunoia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField:UITextField!
    
    @IBOutlet weak var tipLabel:UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipText: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    
    @IBOutlet weak var lineView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="0.00"
        totalLabel.text="0.00"
        
        self.tipText.alpha = 0
        self.totalText.alpha = 0
        self.totalLabel.alpha = 0
        self.tipLabel.alpha = 0
        self.lineView.alpha = 0
        self.tipControl.alpha = 0
        
        billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        //Convert string to a double
        var billAmount = NSString(string:billField.text).doubleValue
        
        var tip = billAmount * tipPercentage
        var total = billAmount+tip
        tipLabel.text="$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        //Hide tip selector and total
        if billField.text == "" || billAmount == 0 {
            UIView.transitionWithView(tipText, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipText.alpha = 0
            }, completion: { finished in
                //dont know why I have finished in there
            })
            UIView.transitionWithView(totalText, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.totalText.alpha = 0
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(totalLabel, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.totalLabel.alpha = 0
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            
            UIView.transitionWithView(tipLabel, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipLabel.alpha = 0
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(lineView, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.lineView.alpha = 0
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(tipControl, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipControl.alpha = 0
                }, completion: { finished in
                    //dont know why I have finished in there
            })
        } else {
//            self.tipText.alpha = 1
//            self.totalText.alpha = 1
//            self.totalLabel.alpha = 1
//            self.tipLabel.alpha = 1
//            self.lineView.alpha = 1
//            self.tipControl.alpha = 1
            
            UIView.transitionWithView(tipText, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipText.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(totalText, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.totalText.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(totalLabel, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.totalLabel.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            
            UIView.transitionWithView(tipLabel, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipLabel.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(lineView, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.lineView.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            UIView.transitionWithView(tipControl, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
                self.tipControl.alpha = 1
                }, completion: { finished in
                    //dont know why I have finished in there
            })
            
        }
        
        
        
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

