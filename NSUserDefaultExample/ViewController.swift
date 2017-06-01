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
        initialSetup()
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
            print("The value for isNightMode is set go false")
        }
    }
    
    func switchMode(isNightMode: Bool) -> Void {
        if isNightMode {
            
            mainView.backgroundColor = .darkGray
            print("Main view background color is set to dark grey")
        } else {
            mainView.backgroundColor = .white
            print("Main view background color is set to white")
        }
    }
    
    @IBAction func switchFlipped(_ sender: Any) {
        if nightModeSwitch.isOn {
            print("Switching mode ...")
            switchMode(isNightMode: true)
            print("Setting up value for key 'isNightMode'...")
            UserDefaults.standard.set(true, forKey: "isNightMode")
            print("The value for isNightMode is set to 'true'")
        } else {
            print("Switching mode ...")
            switchMode(isNightMode: false)
            print("Setting up value for key 'isNightMode'...")
            UserDefaults.standard.set(false, forKey: "isNightMode")
            print("The value for isNightMode is set to 'false'")
        }
    }
    
    
    


}

