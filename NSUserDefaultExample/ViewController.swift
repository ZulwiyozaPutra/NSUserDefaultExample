//
//  ViewController.swift
//  NSUserDefaultExample
//
//  Created by Zulwiyoza Putra on 6/1/17.
//  Copyright © 2017 Zulwiyoza Putra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initialSetup() -> Void {
        if let isNightMode = UserDefaults.standard.value(forKey: "isNightMode") {
            if isNightMode as! Bool {
                print("Switching to night mode...")
                switchMode(isNightMode: true)
                print("Night mode is on")
            } else {
                print("Switching off the night mode...")
                switchMode(isNightMode: false)
                print("Night mode is off")
            }
            
        } else {
            print("This is the first launch of the app")
            print("Setting up value for key 'isNightMode'...")
            UserDefaults.standard.set(false, forKey: "isNightMode")
            print("The value for isNightMode is set")
        }
    }
    
    func switchMode(isNightMode: Bool) -> Void {
        if isNightMode {
            mainView.backgroundColor = .black
        } else {
            mainView.backgroundColor = .white
        }
    }
    
    @IBAction func switchFlipped(_ sender: Any) {
        if nightModeSwitch.isOn {
            switchMode(isNightMode: true)
            UserDefaults.standard.set(true, forKey: "isNightMode")
        } else {
            switchMode(isNightMode: false)
            UserDefaults.standard.set(false, forKey: "isNightMode")
        }
    }
    
    
    


}

