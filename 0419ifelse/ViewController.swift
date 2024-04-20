//
//  ViewController.swift
//  0419ifelse
//
//  Created by TsengWen on 2024/4/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var teasSegment: UISegmentedControl!
    @IBOutlet weak var sugarSlider: UISlider!
    @IBOutlet weak var iceSlider: UISlider!
    @IBOutlet weak var materialSegment: UISegmentedControl!
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var iceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    var drinks = "紅茶"
    var ice = "去冰"
    var sugar = "無糖"
    var material = "珍珠"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = "歡迎訂購！！"
        }

    @IBAction func changeTeas(_ sender: Any) {
        if teasSegment.selectedSegmentIndex == 0{
            drinks = "紅茶"}
        else if teasSegment.selectedSegmentIndex == 1{drinks = "綠茶"}
        else if teasSegment.selectedSegmentIndex == 2{drinks = "奶茶"}
        else {drinks = "烏龍茶"}
    }
    
    @IBAction func changeSugar(_ sender: Any) {
        sugarSlider.value.round()
        if sugarSlider.value == 1{sugarLabel.text = "無糖"}
        else if sugarSlider.value == 2{sugarLabel.text = "微糖"}
        else if sugarSlider.value == 3{sugarLabel.text = "半糖"}
        else if sugarSlider.value == 4{sugarLabel.text = "少糖"}
        else {sugarLabel.text = "全糖"}
    }
    
    @IBAction func changeIce(_ sender: Any) {
        iceSlider.value.round()
        if iceSlider.value == 1{iceLabel.text = "完全去冰"}
        else if iceSlider.value == 2{iceLabel.text = "去冰"}
        else if iceSlider.value == 3{iceLabel.text = "微冰"}
        else if iceSlider.value == 4{iceLabel.text = "少冰"}
        else {iceLabel.text = "正常冰"}
    }
    
    @IBAction func addMaterial(_ sender: Any) {
        if materialSegment.selectedSegmentIndex == 0{
            material = "珍珠"
        }else if materialSegment.selectedSegmentIndex == 1{material = "布丁"}
        else if materialSegment.selectedSegmentIndex == 2{material = "鮮奶"}
        else {material = "寒天"}
    }
    
    @IBAction func orderMeal(_ sender: Any) {
        let name = nameTextField.text!
        if name == ""{
            resultLabel.text = "請填寫完整訂購資訊"
        }else{
            resultLabel.text = name+"今天訂購\n"+drinks+sugarLabel.text!+iceLabel.text!+"\n加"+material}
        view.endEditing(true)
    }
        
    }



