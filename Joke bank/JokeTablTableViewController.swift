//
//  JokeTablTableViewController.swift
//  Joke bank
//
//  Created by Juan Guardado on 12/28/18.
//  Copyright © 2018 Juan Guardado. All rights reserved.
//

import UIKit

class JokeTablTableViewController: UITableViewController {
    
    var jokes : [Joke] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let joke1 = Joke()
        joke1.name = "harry potter"
        joke1.content = "What did Harry Potter do when he found the three-headed dog? \n\n He ran... wouldn't you?"
        let joke2 = Joke()
        joke2.name = "gummy"
        joke2.content = "Q: Why did the chewing gum cross the road? \n\n A: He was stuck to the chicken's foot."
        let joke3 = Joke()
        joke3.name = "ram"
        joke3.content = "Q; Why did the ram fall off the cliff? \n\n A: Because he didn't see the ewe turn."
        
        jokes = [joke1, joke2, joke3]
    }


    // How Many
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    // What goes inside
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row].name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: selectedJoke)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as?
            JokeViewController {
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke
            }
            
        }
    }
}
