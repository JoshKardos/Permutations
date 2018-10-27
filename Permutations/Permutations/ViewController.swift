//
//  ViewController.swift
//  Permutations
//
//  Created by Josh Kardos on 10/26/18.
//  Copyright © 2018 JoshTaylorKardos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var upperTextField: UITextField!
	
	@IBOutlet weak var lowerTextField: UITextField!
	
	@IBOutlet weak var permutationsLabel: UILabel!
	
	@IBOutlet weak var findOutButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		findOutButton.layer.cornerRadius = 10
	}
	
	func checkIfPermutations(textFieldOne: String, textFieldTwo: String){
		let str1 = String(textFieldOne.sorted())
		let str2 = String(textFieldTwo.sorted())
		
		var charToFreq1 : [Character: Int] = [:]
		var charToFreq2 : [Character: Int] = [:]
		
		for i in 0..<str1.count{
			
			if (charToFreq1[str1[str1.index(str1.startIndex, offsetBy: i)]] != nil){
				
				let freq = charToFreq1[str1[str1.index(str1.startIndex, offsetBy: i)]]! + 1
				charToFreq1[str1[str1.index(str1.startIndex, offsetBy: i)]] = freq
				
			}
			else {
				charToFreq1[str1[str1.index(str1.startIndex, offsetBy: i)]] = 1
			}
		}
		
		for i in 0..<str2.count{
			
			if (charToFreq2[str2[str2.index(str2.startIndex, offsetBy: i)]] != nil){
				
				let freq = charToFreq2[str2[str2.index(str2.startIndex, offsetBy: i)]]! + 1
				charToFreq2[str2[str2.index(str2.startIndex, offsetBy: i)]] = freq
				
			}
			else {
				charToFreq2[str2[str2.index(str2.startIndex, offsetBy: i)]] = 1
			}
		}
		
		print(charToFreq1)
		print(charToFreq2)
		
		if charToFreq1 == charToFreq2 {
			permutationsLabel.text = "Permutation"
		} else {
			permutationsLabel.text = "Not a permutation"
		}
	}
	
	@IBAction func findOutPressed(_ sender: Any) {
		
		if let textFieldOne = upperTextField!.text, let textFieldTwo = lowerTextField!.text{
			checkIfPermutations(textFieldOne: textFieldOne, textFieldTwo: textFieldTwo)
		}
	}
	
}
