//
//  ViewController.swift
//  fairyTale-Homework
//
//  Created by Eliana Boado on 1/4/19.
//  Copyright © 2019 Eliana Boado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn : Bool=true;
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var askNameLabel: UILabel!
    @IBOutlet weak var afterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameText.isHidden = true;
        askNameLabel.isHidden = true;
        //afterLabel.isHidden = true;
    }
    
    @IBAction func sendName(_ sender: UITextField) {
        lightOn = !lightOn;
       // updateUI();
        sender.resignFirstResponder();
       
      
        
    }
    
    
    @IBAction func returnedName(_ sender: UITextField) {
        sender.resignFirstResponder();
   //     if ssender.text!{
             mainLabel.text = "Once upon a time, there was a beautiful princess named \(sender.text!).\nShe was kind and gentle and a friend to all animals \n One day, \(sender.text!)  met a charming prince.\n As they sang a song of love together, \(sender.text!) 's evil stepmother, the Queen, watched them...";
   /*     }else is sender{
             mainLabel.text = "Finally, Snow White's Prince Charming arrived. \(sender.text!) had been searching everywhere for the beautiful princess he had sung with so long ago.\n The Prince awakened Snow White with Love's First Kiss. The spell was broken! Snow White and the Prince \(sender.text!) returned to the kingdom and lived happily ever after."
 */
        mainLabel.isHidden = false;
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
       lightOn = !lightOn;
        //updateUI();
        
        switch sender.direction.rawValue {
        case 1:
            mainLabel.text = "";
            view.backgroundColor = .purple;
        case 2:
            mainLabel.text = "";
            view.backgroundColor = .blue;
        default:
            mainLabel.text = "unrecognized direction";
        }
        
        nameText.isHidden = false;
        askNameLabel.isHidden = false;
        afterLabel.isHidden = false;
    }
    /*
    func updateUI(){
        view.backgroundColor = lightOn ? .blue : .purple;
    }
    */
}

