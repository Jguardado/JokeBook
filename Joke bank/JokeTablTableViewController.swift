//
//  JokeTablTableViewController.swift
//  Joke bank
//
//  Created by Juan Guardado on 12/28/18.
//  Copyright © 2018 Juan Guardado. All rights reserved.
//

import UIKit

class JokeTablTableViewController: UITableViewController {
    
    var jokes = ["harry potter", "gummy", "ram"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // How Many
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

    // What goes inside
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        let joke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDefinition", sender: joke)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as?
            JokeViewController {
            if let joke = sender as? String {
                jokeVC.joke = joke
            }
            
        }
    }
}
