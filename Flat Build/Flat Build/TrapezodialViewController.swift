//
//  TrapezodialViewController.swift
//  Flat Build
//
//  Created by mac os on 9/8/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class TrapezodialViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputAslant: UITextField!
    @IBOutlet weak var InputHeight: UITextField!
    @IBOutlet weak var InputSide2: UITextField!
    @IBOutlet weak var InputSide1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnReset(_ sender: Any) {
        InputSide1.text = ""
        InputSide2.text = ""
        InputHeight.text = ""
        InputAslant.text = ""
        lblWide.text = ""
        lblCircumference.text = ""
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let side1 : Int? = Int(InputSide2.text!)
        let side2 : Int? = Int(InputSide2.text!)
        let height : Int? = Int(InputHeight.text!)
        let Aslant : Int? = Int(InputAslant.text!)
        let circumference : Int = (side1! + side2! + height! + Aslant!)
        lblCircumference.text = "Circumference of Trapezidial \(circumference)"
    }
    @IBAction func btnWide(_ sender: Any) {
        let side1 : Int? = Int(InputSide1.text!)
        let side2 : Int? = Int(InputSide2.text!)
        let height : Int? = Int(InputHeight.text!)
        let aslant : Int? = Int(InputAslant.text!)
        let wide : Int = ((side1! + side2!) * height! / 2 )
        lblWide.text = "Wide of Trapezoidal \(wide)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
