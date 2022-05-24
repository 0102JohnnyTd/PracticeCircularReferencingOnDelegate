//
//  ThirdViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

protocol CustomDelegate: AnyObject {
    func completion()
}

class ThirdViewController: UIViewController {
    var delegate: CustomDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()


    }
}
