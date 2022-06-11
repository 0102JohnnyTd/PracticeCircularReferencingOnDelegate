//
//  SecondViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

final class SecondViewController: UIViewController {
    private var thirdVC: ThirdViewController?

    @IBAction private func showThirdVC(_ sender: Any) {
        // ThirdViewControllerクラスのインスタンスの参照カウントが+1(合計参照カウント+1)
        thirdVC = (UIStoryboard(name: StoryboardName.third, bundle: nil).instantiateViewController(withIdentifier: StoryboardIdentifier.third) as! ThirdViewController)
        // self = SecondViewControllerの参照カウントが+1(合計参照カウント+2)
        // しかしdelegateにweak属性がついているので参照カウントは変わらない。(合計参照カウント+1)
        thirdVC?.delegate = self
        // ThirdViewControllerクラスのインスタンスの参照カウントが+1(合計参照カウント+2)
        navigationController?.pushViewController(thirdVC!, animated: true)
    }

    deinit {
        print("SecondVCがdeinitされた")
    }
}

extension SecondViewController: ThirdViewControllerDelegate {
    func completion() {
        print(#function)
    }
}
