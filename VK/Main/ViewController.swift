//
//  ViewController.swift
//  VK
//
//  Created by Dmitrii Buiskii on 3/21/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TabBar")
        self.navigationController?.pushViewController(vc, animated: false)
        
        
    }


}

