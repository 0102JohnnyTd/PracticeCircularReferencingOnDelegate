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

        thirdVC?.delegate = self
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SecondViewController: CustomDelegate {
    func completion() {
        print(#function)
    }
}
