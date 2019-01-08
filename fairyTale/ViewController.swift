//
//  this project works with label, text and swipeGesture
//  ViewController.swift
//  fairyTale-Homework
//
//  Created by Eliana Boado on 1/4/19.
//  fixed on 1/8/19 with the structor @Mark Meretzky
//  Copyright © 2019 Eliana Boado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var askNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameText.isHidden = true;           //when load the app the nameText is hidden
        askNameLabel.isHidden = true;       //when load the app askNameLabell is hidden
    }
    
    @IBAction func returnedName(_ sender: UITextField) {
        //this function works with the return button from the keyboard
        sender.resignFirstResponder();
        if view.backgroundColor == .purple { //this is for woman
             mainLabel.text = """
                Once upon a time, there was a beautiful princess named \(sender.text!).
                She was kind and gentle and a friend to all animals.
                One day, \(sender.text!)  met a charming prince.
                As they sang a song of love together, \(sender.text!)'s evil stepmother, the Queen, watched them...
                """;
        }else{ //this is for man
             mainLabel.text = """
                Finally, Snow White's Prince \(sender.text!) arrived.
                \(sender.text!) had been searching everywhere for the beautiful princess he had sung with so long ago.
                The Prince awakened Snow White with Love's First Kiss.
                The spell was broken!
                Snow White and the Prince \(sender.text!) returned to the kingdom and lived happily ever after.
                """;
        }
        mainLabel.isHidden = false;     //this appear the mainLabel
    }
    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction.rawValue {
        case 1: //this color purple is for womam
            mainLabel.text = "";
            view.backgroundColor = .purple;
        case 2: //this color is for man
            mainLabel.text = "";
            view.backgroundColor = .blue;
        default:    //this part always ask for default on switch
            mainLabel.text = "unrecognized direction";
        }
        
        nameText.isHidden = false;          //now, it is not hidden
        askNameLabel.isHidden = false;      //also, it is not hidden
    }
}

