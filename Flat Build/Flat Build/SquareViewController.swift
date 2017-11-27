//
//  SquareViewController.swift
//  Flat Build
//
//  Created by mac os on 9/7/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class SquareViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputSide: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnReset(_ sender: Any) {
        lblCircumference.text = ""
        lblWide.text = ""
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let side : Int? = Int(InputSide.text!)
        let Circumference : Int = (4 * side!)
        lblCircumference.text = "Circumference of Square = \(Circumference)"
    }
    @IBAction func btnWide(_ sender: Any) {
        let side : Int? = Int(InputSide.text!)
        let wide : Int = (side! * side!)
        lblWide.text = "Wide of Square \(wide)"
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
