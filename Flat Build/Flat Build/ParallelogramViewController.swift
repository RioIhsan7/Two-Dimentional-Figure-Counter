//
//  ParallelogramViewController.swift
//  Flat Build
//
//  Created by mac os on 9/7/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class ParallelogramViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputBase: UITextField!
    @IBOutlet weak var InputHeight: UITextField!
    @IBOutlet weak var InputWidth: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnReset(_ sender: Any) {
        InputHeight.text = ""
        InputBase.text = ""
        InputWidth.text = ""
        lblCircumference.text = ""
        lblWide.text = ""

    }
    @IBAction func btnWide(_ sender: Any) {
        let Base : Int? = Int(InputBase.text!)
        let Height : Int? = Int(InputHeight.text!)
        let Width : Int? = Int(InputWidth.text!)
        let wide : Int = (Base! * Height!)
        lblWide.text = "Wide of Parallelogram \(wide)"
    }
    
    @IBAction func btnCircumference(_ sender: Any) {
        let base : Int? = Int(InputBase.text!)
        let Height : Int? = Int(InputHeight.text!)
        let Width : Int? = Int(InputWidth.text!)
        let Circumference : Int = (2 * (Width! + Height!))
        lblCircumference.text = "Circumference of Parallelogram \(Circumference)"
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
