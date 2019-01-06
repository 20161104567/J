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
    var x = 0
    var q = ""
    @IBOutlet weak var show: UITextField!
    @IBOutlet weak var box: UITextField!
    @IBAction func one(_ sender: Any) {
        show.text = show.text! + "1"
        box.text = box.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        show.text = show.text! + "2"
        box.text = box.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        show.text = show.text! + "3"
        box.text = box.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        show.text = show.text! + "4"
        box.text = box.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        show.text = show.text! + "5"
        box.text = box.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        show.text = show.text! + "6"
        box.text = box.text! + "6"
    }
    @IBAction func seven(_ sender: Any) {
        show.text = show.text! + "7"
        box.text = box.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        show.text = show.text! + "8"
        box.text = box.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        show.text = show.text! + "9"
        box.text = box.text! + "9"
    }
    @IBAction func zero(_ sender: Any) {
        if show.text == "0"{
            show.text = show.text
            box.text =  box.text
        }
        else{
            show.text = show.text! + "0"
            box.text = box.text! + "0"
        }
    }
    @IBAction func add(_ sender: Any) {
        if show.text == ""{
            box.text = "0+"
            a = 0
            number = 1
        }
        else{
            a = Double(show.text!)!
            show.text = ""
            box.text = box.text! + "+"
            number = 1
            p = 0
        }
    }
    @IBAction func reduction(_ sender: Any) {
        if show.text == ""{
            box.text = "0-"
            a = 0
            number = 2
        }
        else{
            a = Double(show.text!)!
            show.text = ""
            box.text = box.text! + "-"
            number = 2
            p = 0
        }
    }
    @IBAction func take(_ sender: Any) {
        if show.text == ""{
            box.text = "0*"
            a = 0
            number = 3
        }
        else{
            a = Double(show.text!)!
            show.text = ""
            box.text = box.text! + "*"
            number = 3
            p = 0
        }
    }
    @IBAction func addition(_ sender: Any) {
        if show.text == ""{
            box.text = "0/"
            a = 0
            number = 4
        }
        else{
            a = Double(show.text!)!
            show.text = ""
            box.text = box.text! + "/"
            number = 4
            p = 0
        }
    }
    @IBAction func equal(_ sender: Any) {
        if show.text == "0" && number == 4{
            show.text = "不能除以0"
            box.text = show.text
        }
        else if show.text == "0" && number == 8{
            show.text = "1"
            box.text = show.text
        }
        else{
            b = Double(show.text!)!
            show.text = ""
            if number == 1{
                a = a + b
            }
            else if number == 2{
                a = a - b
            }
            else if number == 3{
                a = a * b
            }
            else if number == 4{
                a = (a * 100) / (b * 100)
            }
            else if number == 8{
                var i = 0
                var j :Int = 0
                let per = a
                j = Int(b)
                for i in 1 ..< j{
                    a = a * per
                }
            }
            q = String(a)
            if q.last == "0"{
                q.removeLast()
            }
            if q.last == "."{
                q.removeLast()
            }
            show.text = String(q)
            box.text = show.text!
        }
        p = 0
    }
    @IBAction func point(_ sender: Any) {
        if p == 0{
            show.text = show.text! + "."
            box.text = box.text! + "."
            p = 1
        }
        else{
            show.text = show.text
        }
    }
    @IBAction func symbol(_ sender: Any) {
        if show.text?.first == "-"{
            show.text?.removeFirst()
            box.text?.removeFirst()
        }
        else{
            show.text = "-" + show.text!
            box.text = show.text!
        }
    }
    @IBAction func percent(_ sender: Any) {
        if show.text == ""{
            show.text = "0"
        }
        else{
            var per = 0.0
            per = Double(show.text!)!
            per = per * 0.01
            show.text = String(per)
            a = Double(show.text!)!
            box.text = box.text! + "%"
            number = 5
            p = 0
        }
    }
    @IBAction func square(_ sender: Any) {
        if show.text == ""{
            show.text = "0"
        }
        else{
            var per = 0.0
            per = Double(show.text!)!
            per = per * per
            show.text = String(per)
            a = Double(show.text!)!
            box.text = box.text! + "²"
            number = 6
            p = 0
        }
    }
    @IBAction func bottom(_ sender: Any) {
        if show.text == ""{
            show.text = "1"
        }
        else{
            var per = 0.0
            per = Double(show.text!)!
            per = 1 / per
            show.text = String(per)
            a = Double(show.text!)!
            box.text = "1/" + box.text!
            number = 7
            p = 0
        }
    }
    @IBAction func ypower(_ sender: Any) {
        if show.text == ""{
            show.text = "0"
        }
        else{
            a = Double(show.text!)!
            show.text = ""
            box.text = box.text! + "^"
            number = 8
            p = 0
        }
    }
    @IBAction func Delete(_ sender: Any) {
        show.text = ""
        box.text = ""
        p = 0
    }
    @IBAction func DelOne(_ sender: Any) {
        if box.text != ""{
            show.text?.removeLast()
            box.text?.removeLast()
        }
        p = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

