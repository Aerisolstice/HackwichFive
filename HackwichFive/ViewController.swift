//
//  ViewController.swift
//  HackwichFive
//
//  Created by K Keliiholokai on 3/7/19.
//  Copyright © 2019 Ari Keliiholokai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func myGuessButtonPressed(_ sender: Any) {
        let alert = UIAlertController(title: "Hello World!", message: "This is my first alert view.", preferredStyle: .alert)
        let action = UIAlertAction (title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        //It's funny because errors and warnings keep popping up all over the place until I typed out everything
    }
}

