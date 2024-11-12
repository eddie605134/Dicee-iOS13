//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var diceImageViewLeft: UIImageView!
	@IBOutlet weak var diceImageViewRight: UIImageView!
	
	// set a array one to six
	let diceArray: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]

	override func viewDidLoad() {
		super.viewDidLoad()
		diceImageViewLeft.image = UIImage(named: "DiceOne")
		diceImageViewRight.image = UIImage(named: "DiceTwo")
	}

	@IBAction func pressRollBtn(_ sender: Any) {
		// random show dice image One~Six
		let randomIndexLeft = Int.random(in: 0..<6)
		let randomIndexRight = Int.random(in: 0..<6)
		
		diceImageViewLeft.image = UIImage(named: diceArray[randomIndexLeft])
		diceImageViewRight.image = UIImage(named: diceArray[randomIndexRight])
	}
	
}

