//
//  resultViewController.swift
//  Planetra
//
//  Created by Prabh Simran Singh on 17/01/21.
//

import UIKit

class resultViewController: UIViewController {
    
    var weightResult : Float?

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(format: "%.1f", weightResult ?? 0.0)
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
