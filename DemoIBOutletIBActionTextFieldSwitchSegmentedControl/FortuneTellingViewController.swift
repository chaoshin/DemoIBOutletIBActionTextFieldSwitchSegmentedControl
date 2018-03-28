//
//  FortuneTellingViewController.swift
//  DemoIBOutletIBActionTextFieldSwitchSegmentedControl
//
//  Created by Chao Shin on 28/03/2018.
//  Copyright © 2018 Chao Shin. All rights reserved.
//

import UIKit

class FortuneTellingViewController: UIViewController {
    
    @IBOutlet weak var yourZodiacTextField: UITextField!
    
    @IBOutlet weak var otherZodiacTextField: UITextField!
    
    @IBOutlet weak var yourGenderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var otherGenderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var giveYouMoneySwitch: UISwitch!
    
    @IBOutlet weak var godImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startFortuneTellingAction(_ sender: Any) {
        if yourZodiacTextField.text == otherZodiacTextField.text {  // 判斷兩人生肖是否一樣
            if yourGenderSegmentedControl.selectedSegmentIndex !=    otherGenderSegmentedControl.selectedSegmentIndex { // 判斷是不是同性
                if giveYouMoneySwitch.isOn == true {    // 判斷會不會給你錢
                    godImageView.image = UIImage(named: "Success")  // 更換ImageView的圖片
                }else {
                    godImageView.image = UIImage(named: "Fail") // 更換ImageView的圖片
                }
            }else{
                godImageView.image = UIImage(named: "Fail") // 更換ImageView的圖片
            }
        }else {
           godImageView.image = UIImage(named: "Fail") // 更換ImageView的圖片
        }
    }
    
    @IBAction func restartFortuneTellingAction(_ sender: Any) {
        yourZodiacTextField.text = ""   // 清除TextField，填入空字串
        otherZodiacTextField.text = ""  // 清除TextField，填入空字串
        yourGenderSegmentedControl.selectedSegmentIndex = 0 // 設定Segmented Control回到預設的 0 Segmented
        otherGenderSegmentedControl.selectedSegmentIndex = 0 // 設定Segmented Control回到預設的 0 Segmented
        giveYouMoneySwitch.isOn = true // 設定Switch回覆預設On的狀態
        godImageView.image = UIImage(named: "FortuneTelling") // 設定圖片為開始圖片
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
