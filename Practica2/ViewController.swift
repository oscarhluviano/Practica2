//
//  ViewController.swift
//  Practica2
//
//  Created by OhLuvi on 24/03/22.
//

import UIKit

class ViewController: UIViewController {
    var isChecked = true
    
    @IBOutlet weak var txtFrase: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var tvFrases: UITextView!
    
    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var switchImg: UISwitch!
    
    @IBAction func btnAdd(_ sender: Any) {
        guard let text = txtFrase.text
        else{
            return
        }
        if text == "" {
            
        }else{
            tvFrases.text += " " + text
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        image.alpha = CGFloat(sender.value)
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
    
        if sender.isOn{
            image.image = UIImage(named: "angel")
        }else{
            image.image = UIImage(named: "evil")
        }
    }
    
    @IBAction func btnDeshabilitar(_ sender: Any) {
        isChecked = !isChecked
        if isChecked {
            btnAdd.isEnabled = true
            slider.isEnabled = true
            switchImg.isEnabled = true
        } else {
            btnAdd.isEnabled = false
            slider.isEnabled = false
            switchImg.isEnabled = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvFrases.text = ""
        tvFrases.isEditable = false
        image.image = UIImage(named: "angel")
    }
    
}

