//
//  JokeViewController.swift
//  Joke bank
//
//  Created by Juan Guardado on 12/28/18.
//  Copyright © 2018 Juan Guardado. All rights reserved.
//

import UIKit

//["yo mama", "fat boy", "upper lip", "uber drivers", "bad girlfriends"]

class JokeViewController: UIViewController {
    
    var joke = ""
    var question = ""
    var answer = ""
    
    @IBOutlet weak var jokeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke
        
        if joke == "harry potter" {
            jokeLabel.text = "What did Harry Potter do when he found the three-headed dog? \n\n He ran... wouldn't you?"
        }
            
        if joke == "gummy" {
            jokeLabel.text = "Q: Why did the chewing gum cross the road? \n\n A: He was stuck to the chicken's foot."
        }
            
        if joke == "ram" {
            jokeLabel.text = "Q; Why did the ram fall off the cliff? \n\n A: Because he didn't see the ewe turn."
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
