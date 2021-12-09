//
//  ViewController.swift
//  Tipster
//
//  Created by لمياء فالح الدوسري on 02/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
var currntNum=0
    var group:Int = 1
    var tip :Float = 0.0
   // var roundedValue:Float!
   // var price:Float?
    @IBOutlet var btns: [UIButton]!
    @IBOutlet var lables: [UILabel]!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var groupLable: UILabel!
    
    
    @IBAction func calcluteBtn(_ sender: UIButton) {
        
        let num=sender.titleLabel?.text
        
       // print("the titel is:\(num!)")
        
        if num! == "c"{
            number.text="0"
        }else if number.text! == "0"{
            
            number.text="\(num!)"
           // print(num!)
        }else{
            number.text="\(String(describing: number.text!))\(num!)"
        }
       
       
    }
    
    
    @IBAction func TipSider(_ sender: UISlider) {
        
        if sender.restorationIdentifier == "GroupSize"{
            group = Int(sender.value)
           // print("\(group)")
           // print(sender.value)
            groupLable.text = "Group size: \(group)"
        }else if sender.restorationIdentifier == "Tips"{
            tip = sender.value
        }
            calclete(SValue:tip,groupNum:group)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        number.text="\(currntNum)"
    }
    
    func calclete(SValue: Float,groupNum:Int){
        var Percentage1 = 0
        var price:Float?
        var Tip1:Float
        var total:Float=0.0
       var roundedValue:Float=0.0
    // var roundedValue2:Float=0.0
        
        for lable in lables{
            if lable.tag == 0 {
                Percentage1 = Int(SValue)
                
                lable.text =  "\(Percentage1)%"
            }else if lable.tag == 1{
                
                price = Float(number.text!)
                 Tip1 = price! * Float(Percentage1)/100
               roundedValue = round(Tip1 * 100) / 100.0
                lable.text="\(roundedValue)"
                
            }else if lable.tag == 2{
                total=(roundedValue + price!)/Float(groupNum)
               // roundedValue2 = round(total * 100) / 100.0
                lable.text="\(total)"
                
            }else if lable.tag == 3{
                Percentage1 = Int((SValue)+5)
                lable.text =  "\(Percentage1)%"
            }else if lable.tag == 4{
                
                price = Float(number.text!)
                 Tip1 = price! * Float(Percentage1)/100
               roundedValue = round(Tip1 * 100) / 100.0
                lable.text="\(roundedValue)"
                
            }else if lable.tag == 5{
                total=(roundedValue + price!)/Float(groupNum)
               // roundedValue2 = round(total * 100) / 100.0
                lable.text="\(total)"

            }else if lable.tag == 6{
                
                Percentage1 = Int((SValue)+10)
                lable.text =  "\(Percentage1)%"
                
            }else if lable.tag == 7{
                price = Float(number.text!)
                 Tip1 = price! * Float(Percentage1)/100
               roundedValue = round(Tip1 * 100) / 100.0
                lable.text="\(roundedValue)"
            }else if lable.tag == 8{
                total=(roundedValue + price!)/Float(groupNum)
               // roundedValue2 = round(total * 100) / 100.0
                lable.text="\(total)"

            }
        }
    }
    
  
    
    
    
}

