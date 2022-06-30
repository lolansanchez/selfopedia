//
//  thanksForSharingViewController.swift
//  selfopedia
//
//  Created by Lola Sanchez on 6/30/22.
//

import UIKit


class thanksForSharingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func additionalResources(_ sender: Any) {
        struct resourceLink: View {
          var body: some View {
            Link(“More Resources”, destination: URL(string: “https://docs.google.com/document/d/1JHuP6p-j_NF00erfLST7lhGHTgR9uOYeb00mkXwrjhY/edit?usp=sharing”)!)
          }
        }
        struct resourceLink_Previews: PreviewProvider {
          static var previews: some View {
            resourceLink()
          }
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
