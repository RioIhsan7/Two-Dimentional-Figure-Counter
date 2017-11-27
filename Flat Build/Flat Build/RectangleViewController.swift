//
//  RectangleViewController.swift
//  Flat Build
//
//  Created by mac os on 9/7/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputWidth: UITextField!
    @IBOutlet weak var InputLength: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // tempat mendeklarasikan button keliling
    @IBAction func btnCircumference(_ sender: Any) {
        let length : Int? = Int(InputLength.text!)
        let width : Int? = Int(InputWidth.text!)
        let kll : Int = (2*length! + 2*width!)
        lblCircumference.text = "Circumference of Rectangle = \(kll)"
    }
    // tempat mendeklarasikan button luas
    @IBAction func btnWide(_ sender: Any) {
    // coding untuk menampilkan luas
        let length : Int? = Int(InputLength.text!)
        let width : Int? = Int(InputWidth.text!)
        let wide : Int = (length! * width!)
        lblWide.text = "Wide of Rectangle = \(wide)"
    }
    @IBAction func btnReset(_ sender: Any) {
        InputWidth.text = ""
        InputLength.text = ""
        lblCircumference.text = ""
        lblWide.text = ""
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
