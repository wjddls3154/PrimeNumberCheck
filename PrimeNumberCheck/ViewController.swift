//
//  ViewController.swift
//  PrimeNumberCheck
//
//  Created by D7702_10 on 2018. 3. 28..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myCount.delegate = self
        
        
        
    }
    @IBAction func btnReset(_ sender: Any) {
        myCount.text = ""
        myNumber.text = ""
    }
    
    @IBAction func btnCheck(_ sender: Any) {
        let number = Int(myCount.text!)
        var isPrime = true
        if number! == 1 {
            isPrime = false
        }
        
        if number! != 1 && number! != 2 {
            for i in 2 ..< number! {
                if number! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        
        if isPrime == true {
            myNumber.text = "Prime number"
        } else {
            myNumber.text = "Not Prime number"
        }
        
    }
    
    
    @IBOutlet weak var myNumber: UILabel!
    
    @IBOutlet weak var myCount: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        myCount.resignFirstResponder()
        return true
    }
}

