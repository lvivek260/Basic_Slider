//
//  ViewController.swift
//  Slider_Basic
//
//  Created by Admin on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var rgbView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCornerOfView()
        setMaxAndMinValue()
        setDefaultValue()
        setUpRgbView(UISlider())
        
    }
    
    @IBAction func setUpRgbView(_ sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        redView.backgroundColor = .init(red: red/255, green: 0, blue: 0, alpha: 1)
        greenView.backgroundColor = .init(red: 0, green: green/255, blue: 0, alpha: 1)
        blueView.backgroundColor = .init(red: 0, green: 0, blue: blue/255, alpha: 1)
        
        rgbView.backgroundColor = .init(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    func setCornerOfView(){
        redView.layer.cornerRadius = 10
        greenView.layer.cornerRadius = 10
        blueView.layer.cornerRadius = 10
        rgbView.layer.cornerRadius = 30
    }
    
    func setMaxAndMinValue(){
        redSlider.maximumValue = 255
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 255
        
        redSlider.minimumValue = 0
        greenSlider.minimumValue = 0
        blueSlider.minimumValue = 0
    }
    func setDefaultValue(){
        redSlider.value = 255/2
        greenSlider.value = 255/2
        blueSlider.value = 255/2
    }
}

