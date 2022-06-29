//
//  firstJournalViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/29/22.
//

import UIKit

class firstJournalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
        
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return feelings.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return feelings[row]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    let feelings = ["anxious","bored","confused","sick","empathetic pain","guilty","nostalgic","depressed","tired","unmotivated","angry","lonely","annoyed","restless","disappointment","grief","despair","grumpy","panicked","regretful","self conscious","stressed","jealous","homesickness","humiliated"]

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
