//
//  ViewController.swift
//  J
//
//  Created by 20161104567 on 2018/10/24.
//  Copyright © 2018年 20161104567. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number = 0
    var a = 0.0
    var b = 0.0
    var c = 0.0
    var p = 0
    @IBOutlet weak var show1: UITextField!
    @IBOutlet weak var show2: UITextField!
    @IBOutlet weak var show: UITextField!
    @IBAction func one(_ sender: Any) {
        show.text = show.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        show.text = show.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        show.text = show.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        show.text = show.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        show.text = show.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        show.text = show.text! + "6"
    }
    @IBAction func seven(_ sender: Any) {
        show.text = show.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        show.text = show.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        show.text = show.text! + "9"
    }
    @IBAction func zero(_ sender: Any) {
        if show.text == ""{
            show.text = "0"
        }else{
            show.text = show.text! + "0"
        }
    }
    @IBAction func add(_ sender: Any) {
        if show.text == ""{
            show1.text = "0"
            number = 1
        }else{
            a = Double(show.text!)!
            show1.text = String(a)
            show.text = ""
            number = 1
            p = 0
        }
    }
    @IBAction func reduction(_ sender: Any) {
        if show.text == ""{
            show1.text = "0"
            number = 2
        }else{
            a = Double(show.text!)!
            show1.text = String(a)
            show.text = ""
            number = 2
            p = 0
        }
    }
    @IBAction func take(_ sender: Any) {
        if show.text == ""{
            show1.text = "0"
            number = 3
        }else{
            a = Double(show.text!)!
            show1.text = String(a)
            show.text = ""
            number = 3
            p = 0
        }
    }
    @IBAction func addition(_ sender: Any) {
        if show.text == ""{
            show1.text = "0" 
            number = 4
        }else{
            a = Double(show.text!)!
            show1.text = String(a)
            show.text = ""
            number = 4
            p = 0
        }
    }
    @IBAction func equal(_ sender: Any) {
        if show.text == "0"{
            show2.text = "0"
            show.text = "不能除以0"
        }else{
            b = Double(show.text!)!
            show2.text = String(b)
            show.text = ""
            if number == 1{
                c = a + b
            }else if number == 2{
                c = a - b
            }else if number == 3{
                c = a * b
            }else if number == 4{
                c = a / b
            }
            show.text = String(format:"%.2lf" , c)
        }
        
    }
    @IBAction func point(_ sender: Any) {
        if p == 0{
            show.text = show.text! + "."
            p = 1
        }else{
            show.text = show.text
        }
    }
    @IBAction func Delete(_ sender: Any) {
        show.text = ""
        show1.text = ""
        show2.text = ""
        p = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

