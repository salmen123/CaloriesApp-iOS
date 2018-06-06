//
//  VCDetails.swift
//  CaloriesApp
//
//  Created by Med Salmen Saadi on 5/16/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class VCDetails: UIViewController {
    
    var  SingelItem:Calorie?

    @IBOutlet weak var iv_calorie: UIImageView!
    @IBOutlet weak var la_Name: UILabel!
    @IBOutlet weak var tv_Des: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        la_Name.text = SingelItem?.Name!
        tv_Des.text = SingelItem?.Desc!
        iv_calorie.image = UIImage(named: (SingelItem?.Image!)!)
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

    @IBAction func bu_Back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
