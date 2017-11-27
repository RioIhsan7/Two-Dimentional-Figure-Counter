//
//  KiteViewController.swift
//  Flat Build
//
//  Created by mac os on 9/8/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class KiteViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputDiagonal2: UITextField!
    @IBOutlet weak var InputDiagonal1: UITextField!
    @IBOutlet weak var InputWidth: UITextField!
    @IBOutlet weak var InputLength: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnReset(_ sender: Any) {
        InputDiagonal1.text = ""
        InputDiagonal2.text = ""
        InputLength.text = ""
        InputWidth.text = ""
        lblWide.text = ""
        lblCircumference.text = ""
        
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let length : Int? = Int(InputLength.text!)
        let width : Int? = Int(InputWidth.text!)
        let diagonal1 : Int? = Int(InputDiagonal1.text!)
        let diagonal2 : Int? = Int(InputDiagonal2.text!)
        let Circumference : Int = (2 * (length! + width!))
        lblCircumference.text = "Circumference of Kite \(Circumference)"
    }
    @IBAction func btnWide(_ sender: Any) {
        let length : Int? = Int(InputLength.text!)
        let width : Int? = Int(InputWidth.text!)
        let diagonal1 : Int? = Int(InputDiagonal1.text!)
        let diagonal2 : Int? = Int(InputDiagonal2.text!)
        let wide : Int = ((diagonal1! * diagonal2!) / 2)
        lblWide.text = "Wide of Kite \(wide)"
        
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
