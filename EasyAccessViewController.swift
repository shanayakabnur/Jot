//
//  EasyAccessViewController.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/30/22.
//

import UIKit

class EasyAccessViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
    var imagePicker2 = UIImagePickerController()
    var imagePicker3 = UIImagePickerController()
    var imagePicker4 = UIImagePickerController()
//IMAGE 1
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var vetNameTextField: UITextField!
    
//IMAGE 2
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var dateTextField2: UITextField!
    @IBOutlet weak var vetNameTextField2: UITextField!
    
//IMAGE 3
    
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var dateTextField3: UITextField!
    @IBOutlet weak var vetNameTextField3: UITextField!
    
//IMAGE 4
    
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var dateTextField4: UITextField!
    @IBOutlet weak var vetNameTextField4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker2.delegate = self
        imagePicker3.delegate = self
        imagePicker4.delegate = self

        imagePicker.view.tag = 1
        imagePicker2.view.tag = 2
        imagePicker3.view.tag = 3
        imagePicker4.view.tag = 4        // Do any additional setup after loading the view.
    }
    
    @IBAction func choosePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            if picker.view.tag == 1 {
                imageView1.image = selectedImage
            }
            else if picker.view.tag == 2 {
                imageView2.image = selectedImage
            }
            else if picker.view.tag == 3 {
                imageView3.image = selectedImage
            }
            else {
                imageView4.image = selectedImage
            }
            
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    @IBAction func choosePhotoTapped2(_ sender: Any) {
        imagePicker2.sourceType = .photoLibrary
        present(imagePicker2, animated: true, completion: nil)
    }
    
    @IBAction func choosePhotoTapped3(_ sender: Any) {
        imagePicker3.sourceType = .photoLibrary
        present(imagePicker3, animated: true, completion: nil)
    }
    
    @IBAction func choosePhotoTapped4(_ sender: Any) {
        imagePicker4.sourceType = .photoLibrary
        present(imagePicker4, animated: true, completion: nil)
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
