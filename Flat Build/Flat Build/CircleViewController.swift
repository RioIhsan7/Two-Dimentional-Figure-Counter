//
//  CircleViewController.swift
//  Flat Build
//
//  Created by mac os on 9/8/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class CircleViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputRadius: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnWide(_ sender: Any) {
        let radius : Int? = Int(InputRadius.text!)
        let wide : Int = ((radius!) * (radius!)) * 22/7
        lblWide.text = "Wide of Circle \(wide)"
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let radius : Int? = Int(InputRadius.text!)
        let Circumference : Int = (2 * radius! * 22/7)
        lblCircumference.text = "Circumference of Circle \(Circumference)"
    }
    @IBAction func btnReset(_ sender: Any) {
        InputRadius.text = ""
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
