//
//  HumanHomeViewController.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/30/22.
//

import UIKit

class HumanHomeViewController: UIViewController {

    @IBOutlet weak var vitaminsButton: UIButton!
    
    @IBOutlet weak var erVUrgentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        vitaminsButton.addTarget(self, action: #selector(openLinkkk), for: .touchUpInside)
        erVUrgentButton.addTarget(self, action: #selector(openLinkkkk), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func openLinkkk() {
        if let urlToOpen = URL(string: "https://www.consumerlab.com/#:~:text=%22ConsumerLab%20is%20the%20best%20place,if%20any%2C%20are%20involved.%22"){
            UIApplication.shared.open(urlToOpen, options: [:]){ (done) in
                
            }
        }
    }
    @objc func openLinkkkk() {
        if let urlToOpen = URL(string: "https://www.uchicagomedicine.org/forefront/health-and-wellness-articles/when-to-go-to-the-emergency-room-vs-an-urgent-care-clinic"){
            UIApplication.shared.open(urlToOpen, options: [:]){ (done) in
                
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
