//
//  HomePagePetViewController.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/30/22.
//

import UIKit

class HomePagePetViewController: UIViewController {

    @IBOutlet weak var petFindButton: UIButton!
    @IBOutlet weak var fidoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        fidoButton.addTarget(self, action: #selector(openLink), for: .touchUpInside)
        petFindButton.addTarget(self, action: #selector(openLinkk), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func openLink() {
        if let urlToOpen = URL(string: "https://bringfido.com"){
            UIApplication.shared.open(urlToOpen, options: [:]){ (done) in
                
            }
        }
    }
    @objc func openLinkk() {
        if let urlToOpen = URL(string: "https://petfinder.com"){
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
