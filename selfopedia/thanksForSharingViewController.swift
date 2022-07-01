//
//  thanksForSharingViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/30/22.
//

import UIKit
import SwiftUI


class thanksForSharingViewController: UIViewController {
  
    
    @IBOutlet weak var cmView: UITextView!
    @IBAction func lastDitchEffort(_ sender: Any) {
        //for item in feelingListDict["anxious"]! {
        //if selected == "anxious"{
           // let viewList = feelingListDict["anxious"]?.joined(separator: "/")
            //cmView.text = viewList
   // }
        print(feelingListDict["bored"])
    }
    
    @IBAction func additionalResources(_ sender: UIButton) {
        if let url = URL(string: "https://docs.google.com/document/d/1JHuP6p-j_NF00erfLST7lhGHTgR9uOYeb00mkXwrjhY/edit?usp=sharing") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }}
    var componentArray = Array(feelingListDict.keys)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
}
    
    

    
    

    
    
    

