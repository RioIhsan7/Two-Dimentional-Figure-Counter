//
//  RhombusViewController.swift
//  Flat Build
//
//  Created by mac os on 9/8/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class RhombusViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputDiagonal2: UITextField!
    @IBOutlet weak var InputDiagonal1: UITextField!
    @IBOutlet weak var InputSide: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnWide(_ sender: Any) {
        let side : Int? = Int(InputSide.text!)
        let Diagonal1 : Int? = Int(InputDiagonal1.text!)
        let Diagonal2 : Int? = Int(InputDiagonal2.text!)
        let wide : Int = ((Diagonal1! * Diagonal2!) / 2)
        lblWide.text = "Wide of Rhombus \(wide)"
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let side : Int? = Int(InputSide.text!)
        let Circumference : Int = (4 * side!)
        lblCircumference.text = "Circumference of Rhombus \(Circumference)"
    }
    @IBAction func btnReset(_ sender: Any) {
        InputSide.text = ""
        InputDiagonal1.text = ""
        InputDiagonal2.text = ""
        lblWide.text = ""
        lblCircumference.text = ""
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
