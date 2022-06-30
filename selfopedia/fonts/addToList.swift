//
//  addToList.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/29/22.
//

import UIKit

class addToList: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var emotionPickerView: UIPickerView!
    var Selected = ""
    let Feelings = ["anxious","bored","confused","sick","empathetic pain","guilty","nostalgic","depressed","tired","unmotivated","angry","lonely","annoyed","restless","disappointment","grief","despair","grumpy","panicked","regretful","self conscious","stressed","jealous","homesickness","humiliated"]
    override func viewDidLoad() {
        super.viewDidLoad()
        emotionPickerView.delegate = self
        emotionPickerView.dataSource = self

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in emotionPickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ emotionPickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Feelings.count
    }
    
    private func pickerView(emotionPickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(Feelings[row])"
    }
    
    func pickerView(_ emotionPickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        Selected = Feelings[row]
        return Selected
    }
    
    @IBAction func addButton(_ sender: Any) {
        testLabel.text = Selected
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
