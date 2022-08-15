//
//  SettingsViewController.swift
//  Tip_Calculator
//
//  Created by Efren Ramirez Rojas on 8/8/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var setDefaultTipLabel: UILabel!
    @IBOutlet weak var tipOneLabel: UILabel!
    @IBOutlet weak var tipOne: UITextField!
    @IBOutlet weak var tipTwoLabel: UILabel!
    @IBOutlet weak var tipTwo: UITextField!
    @IBOutlet weak var tipThreeLabel: UILabel!
    @IBOutlet weak var tipThree: UITextField!
    @IBOutlet weak var darkMode: UISwitch!
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Settings"
        
        darkMode.setOn(false, animated: true)
        
        // Access UserDefaults
        let userDefault = UserDefaults()
        
        if let value = userDefault.value(forKey: "isDark") {
            darkMode.setOn(value as! Bool, animated: true)
        }
    }
    
    @IBAction func darkModeSwitch(_ sender: Any) {
        let userDefault = UserDefaults()
        
        // Sets dark theme if darkMode switch is on.
        // Sets light theme if darkMode switch is off.
        if (darkMode.isOn == true) {
            userDefault.set(true, forKey: "isDark")
            
            UIApplication.shared.keyWindow?.overrideUserInterfaceStyle = .dark
        } else if (darkMode.isOn != true){
            userDefault.set(false, forKey: "isDark")
            
            UIApplication.shared.keyWindow?.overrideUserInterfaceStyle = .light
        }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    //}
}
