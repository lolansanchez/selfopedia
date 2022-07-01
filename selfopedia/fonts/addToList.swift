//
//  addToList.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/29/22.
//

import UIKit

class addToList: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var cmTextView: UITextView!
    @IBOutlet weak var doneLabel: UILabel!
    @IBOutlet weak var emotionPickerView: UIPickerView!
    var Selected = ""
    let Feelings = ["anxious","bored","confused","guilty","nostalgic","depressed","tired","unmotivated","angry","lonely","annoyed","restless","self conscious","scared","grateful","overwhelmed","happy","curious","vulnerable"]
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
        var newCM = cmTextView.text!
        cmTextView.text = ""
        doneLabel.text = "Successfully added to \(Selected)"
            if Selected == "anxious"{
                feelingListDict["anxious", default: []].append(newCM)
            }
        else if Selected == "bored" {
            feelingListDict["bored", default: []].append(newCM)
        }
        else if Selected ==  "confused" {
            feelingListDict["confused", default: []].append(newCM)
        }
        else if Selected == "guilty" {
            feelingListDict["guilty", default: []].append(newCM)
        }
        else if Selected == "nostalgic" {
            feelingListDict["nostalgic", default: []].append(newCM)
        }
        else if Selected == "depressed" {
            feelingListDict["depressed", default: []].append(newCM)
        }
        else if Selected == "tired" {
            feelingListDict["tired", default:[]].append(newCM)
        }
        else if Selected == "unmotivated" {
            feelingListDict["unmotivated", default:[]].append(newCM)
        }
        else if Selected == "angry" {
            feelingListDict["angry", default:[]].append(newCM)
        }
        else if Selected == "lonely" {
            feelingListDict["lonely", default: []].append(newCM)
        }
        else if Selected == "annoyed" {
            feelingListDict["annoyed", default: []].append(newCM)
        }
        else if Selected == "restless" {
            feelingListDict["restless", default: []].append(newCM)
        }
        else if Selected == "scared" {
            feelingListDict["scared", default: []].append(newCM)
        }
        else if Selected == "grateful" {
            feelingListDict["grateful", default: []].append(newCM)
        }
        else if Selected == "overwhelmed" {
            feelingListDict["overwhelmed", default: []].append(newCM)
        }
        else if Selected == "self conscious" {
            feelingListDict["self conscious", default: []].append(newCM)
        }
        else if Selected == "happy" {
            feelingListDict["happy", default: []].append(newCM)
        }
        else if Selected == "curious" {
            feelingListDict["curious", default: []].append(newCM)
        }
        else if Selected == "vulnerable" {
            feelingListDict["vulnerable", default: []].append(newCM)
        }
        else {
            doneLabel.text = "Error. Please try again."
        }
         
        
        
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
