//
//  ViewController.swift
//  tomoEng11Kadai7
//
//  Created by 井本智博 on 2024/01/07.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet weak private var topTextField: UITextField!
    @IBOutlet weak private var bottomTextField: UITextField!
    @IBOutlet weak private var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpKeyboardType()
    }
    @IBAction private func buttonPressed(_ sender: UIButton) {
        guard let n1 = Int(topTextField.text!), let n2 = Int(bottomTextField.text!) else {
            return
        }
        label.text = String(n1 + n2)
        closeKeyboard()
    }
}

extension RedViewController {

    private func setUpKeyboardType() {
        topTextField.keyboardType = .numberPad
        bottomTextField.keyboardType = .numberPad
    }

    private func closeKeyboard() {
        topTextField.resignFirstResponder()
        bottomTextField.resignFirstResponder()
    }
}
