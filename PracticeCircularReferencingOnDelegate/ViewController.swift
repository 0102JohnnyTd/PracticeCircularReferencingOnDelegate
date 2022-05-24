//
//  ViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func showSecondVC(_ sender: Any) {
        let secondVC = UIStoryboard(name: StoryboardName.second, bundle: nil).instantiateViewController(withIdentifier: StoryboardIdentifier.second) as! SecondViewController

        navigationController?.pushViewController(secondVC, animated: true)
    }

}

