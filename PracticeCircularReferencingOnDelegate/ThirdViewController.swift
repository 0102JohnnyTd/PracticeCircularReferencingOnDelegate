//
//  ThirdViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func completion()
}

final class ThirdViewController: UIViewController {
    weak var delegate: ThirdViewControllerDelegate?

    @IBAction private func goBackSecondVC(_ sender: Any) {
        delegate?.completion()
        // ❓pushViewControllerが引数としてもってるThirdViewControllerクラスのインスタンスの参照カウントが-1(合計参照カウント+1)
        self.navigationController?.popViewController(animated: true)
    }

    deinit {
        print("ThirdVCがdeinitされた")
    }

}
