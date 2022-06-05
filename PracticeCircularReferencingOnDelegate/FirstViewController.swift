//
//  FirstViewController.swift
//  PracticeCircularReferencingOnDelegate
//
//  Created by Johnny Toda on 2022/05/24.
//

import UIKit

final class FirstViewController: UIViewController {
    @IBAction private func showSecondVC(_ sender: Any) {
        // SecondViewControllerクラスのインスタンスの参照カウントが+1(合計参照カウント+1)
        let secondVC = UIStoryboard(name: StoryboardName.second, bundle: nil).instantiateViewController(withIdentifier: StoryboardIdentifier.second) as! SecondViewController

        // SecondViewControllerクラスのインスタンスの参照カウントが+1(合計参照カウント+2)
        navigationController?.pushViewController(secondVC, animated: true)
        // secondVCは本スコープ内限定の変数であるため、参照カウント-1(合計参照カウント+1)
    }
}
