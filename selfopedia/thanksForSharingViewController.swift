//
//  thanksForSharingViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/30/22.
//

import UIKit
import SwiftUI


class thanksForSharingViewController: UIViewController {
    var componentArray = Array(feelingListDict.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
        print(componentArray)
        }
    
    

    @IBOutlet weak var cmView: UILabel!
    
    @IBAction func additionalResources(_ sender: UIButton) {
        if let url = URL(string: "https://docs.google.com/document/d/1JHuP6p-j_NF00erfLST7lhGHTgR9uOYeb00mkXwrjhY/edit?usp=sharing") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    

}

}
