//
//  ViewController.swift
//  AmazonChimeSDKforCarthage
//
//  Created by 石川 雅之 on 2020/11/18.
//

import UIKit
import AmazonChimeSDKSample

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let str = Sample().sampleMethod()
        print(str)
    }


}

