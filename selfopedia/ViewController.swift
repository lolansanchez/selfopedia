//
//  ViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let randQuo = homepageQuotes.randomElement()
        let quote = randQuo?.key
        let author = randQuo?.value
        quoteLabel.text = quote
        authorLabel.text = author
    }


}

