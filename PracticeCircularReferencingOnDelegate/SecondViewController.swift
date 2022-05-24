//
//  SecondViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

class SecondViewController: UIViewController {
    private var thirdVC: ThirdViewController?

    @IBAction func showThirdVC(_ sender: Any) {
        thirdVC = UIStoryboard(name: StoryboardName.third, bundle: nil).instantiateViewController(withIdentifier: StoryboardIdentifier.third) as! ThirdViewController
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
