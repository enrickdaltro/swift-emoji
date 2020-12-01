//
//  EmojiTableViewController.swift
//  emoji
//
//  Created by Enrick on 30/11/20.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojis = getEmojis()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // How many rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    // What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = "\(emojis[indexPath.row].item) - \(emojis[indexPath.row].description)"

        return cell
    }
    
    // when someone taps one of the cells
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "EmojiDetails", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detaisVC = segue.destination as! EmojiDetailViewController
        detaisVC.emoji = sender as! String
        
    }


}
