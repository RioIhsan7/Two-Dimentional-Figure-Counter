//
//  TriangleViewController.swift
//  Flat Build
//
//  Created by mac os on 9/8/17.
//  Copyright © 2017 mac os. All rights reserved.
//

import UIKit

class TriangleViewController: UIViewController {

    @IBOutlet weak var lblCircumference: UILabel!
    @IBOutlet weak var lblWide: UILabel!
    @IBOutlet weak var InputAslant: UITextField!
    @IBOutlet weak var InputHeight: UITextField!
    @IBOutlet weak var InputBase: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnReset(_ sender: Any) {
        InputBase.text = ""
        InputHeight.text = ""
        InputAslant.text = ""
        lblCircumference.text = ""
        lblWide.text = ""
    }
    @IBAction func btnCircumference(_ sender: Any) {
        let base : Int? = Int(InputBase.text!)
        let height : Int? = Int(InputHeight.text!)
        let aslant : Int? = Int(InputAslant.text!)
        let circumference : Int = (base! + height! + aslant!)
        lblCircumference.text = "Circumference of Triangle \(circumference)"
        
    }
    @IBAction func btnWide(_ sender: Any) {
        let base : Int? = Int(InputBase.text!)
        let height : Int? = Int(InputHeight.text!)
        let aslant : Int? = Int(InputAslant.text!)
        let wide : Int = (base! * height!) / 2
        lblWide.text = "Wide of Triangle \(wide)"
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
