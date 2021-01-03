//
//  ViewController.swift
//  if else test
//
//  Created by TINA on 2021/1/3.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var SelectStyle: UISegmentedControl!
    @IBOutlet weak var DishImageview: UIImageView!
    @IBOutlet weak var SpicySlider: UISlider!
    @IBOutlet weak var smallSpicy: UILabel!
    @IBOutlet weak var middleSpicy: UILabel!
    @IBOutlet weak var BigSpicy: UILabel!
    @IBOutlet weak var twPorkSwitch: UISwitch!
    @IBOutlet weak var QtyStepper: UIStepper!
    @IBOutlet weak var QtyLabel: UILabel!
    @IBOutlet weak var resultlabel: UITextView!
    
    var qty: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChooseDish(_ sender: UISegmentedControl) {
        if (sender.selectedSegmentIndex == 0) {
            DishImageview.image = UIImage(named: "pork")
        }
        else {DishImageview.image = UIImage(named: "pork1")
        }
    }
    
    @IBAction func ChangeSpicy(_ sender: UISlider) {
        if SpicySlider.value < 3 && SpicySlider.value > 1 {
            smallSpicy.alpha = 0.4
            middleSpicy.alpha = 1
            BigSpicy.alpha = 0.4
        }
        else if SpicySlider.value <= 1 {
            smallSpicy.alpha = 1
            middleSpicy.alpha = 0.4
            BigSpicy.alpha = 0.4
        }
        else if SpicySlider.value >= 3 {
            smallSpicy.alpha = 0.4
            middleSpicy.alpha = 0.4
            BigSpicy.alpha = 1
        }
    }
    @IBAction func Qty(_ sender: UIStepper) {
        qty = Int(QtyStepper.value)
        QtyLabel.text = "\(qty)/份"
    }
    @IBAction func checkout(_ sender: UIButton) {
        if SelectStyle.selectedSegmentIndex == 1 {
            resultlabel.text = String("今日不供應")
        }
        else {
            resultlabel.text = String("我也喜歡魯肉飯")
        }
    }
}
