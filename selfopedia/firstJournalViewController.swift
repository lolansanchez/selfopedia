//
//  firstJournalViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/29/22.
//

import UIKit

class firstJournalViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: UIPickerView!
    var selected = ""
    let feelings = ["anxious","bored","confused","sick","empathetic pain","guilty","nostalgic","depressed","tired","unmotivated","angry","lonely","annoyed","restless","disappointment","grief","despair","grumpy","panicked","regretful","self conscious","stressed","jealous","homesickness","humiliated"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        testLabel.text = selected
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()

            dateFormatter.dateStyle = DateFormatter.Style.short
            dateFormatter.timeStyle = DateFormatter.Style.short

            let strDate = dateFormatter.string(from: datePicker.date)
            var currentDate = strDate
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return feelings.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(feelings[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selected = feelings[row]
        return selected
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
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
