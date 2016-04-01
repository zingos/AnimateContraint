//
//  ViewController.swift
//  AnimateContraint
//
//  Created by Zing on 16/4/1.
//  Copyright © 2016年 Demo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var redViewToViewConstraint: NSLayoutConstraint!
	@IBOutlet weak var blueViewTrailingConstraint: NSLayoutConstraint!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
 
	func updateConstraintsForMode(isOn : Bool)
	{
		if (isOn) {
			self.redViewToViewConstraint.constant = 0
			self.blueViewTrailingConstraint.priority = UILayoutPriorityDefaultHigh - 1
		} else {
			self.blueViewTrailingConstraint.priority = UILayoutPriorityDefaultHigh + 1
		}
	}
	
	
	@IBAction func switchAction(sender: UISwitch) {
		updateConstraintsForMode(sender.on)
		UIView.animateWithDuration(1.0) { () -> Void in
			self.view.layoutIfNeeded()
		}
	}
}








