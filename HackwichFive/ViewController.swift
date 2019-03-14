//
//  ViewController.swift
//  HackwichFive
//
//  Created by K Keliiholokai on 3/7/19.
//  Copyright © 2019 Ari Keliiholokai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //@IBOutlet weak var numberSlider: UISlider!
    
    @IBOutlet var guessingSlider: UISlider!
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    //@IBOutlet weak var buttonDeclaration: UIButton!
    
    @IBOutlet var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentValue = lroundf(guessingSlider.value)
        
        startNewRound()
    }
    
    func startNewRound () {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        guessingSlider.value = Float(currentValue)
        
        updateTargetLabel ()
    }
    
    func updateTargetLabel(){
        targetLabel.text = String(targetValue)
    }

    @IBAction func sliderHasMoved(_ sender: UISlider) {
        print("The value of the slider is: \(guessingSlider.value)")
        
    }
    
    @IBAction func myGuessActionPressed(_ sender: UIButton) {
        
        let message = "The value is: \(currentValue)." + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
//I finally got this part to work!!
        
        startNewRound()

    }
    

   
    
    //@IBAction func myGuessButtonPressed(_ sender: Any) {
       // let alert = UIAlertController(title: "Hello World!", message: "This is my first alert view", preferredStyle: .alert)
       // let action = UIAlertAction (title: "Awesome", style: .default, handler: nil)
       // alert.addAction(action)
       // present(alert, animated: true, completion: nil)
        //It's funny because errors and warnings keep popping up all over the place until I typed out everything}
}

