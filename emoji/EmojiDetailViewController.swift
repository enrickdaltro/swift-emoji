//
//  EmojiDetailViewController.swift
//  emoji
//
//  Created by Enrick on 30/11/20.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    var emoji = "💵"
    
    // MARK: Properties

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemLabel.text = emoji
        descriptionLabel.text = emoji.unicodeScalars.first!.properties.name!.capitalized
    }
    

}
