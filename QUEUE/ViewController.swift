//
//  ViewController.swift
//  QUEUE
//
//  Created by Ali on 1/12/17.
//  Copyright © 2017 Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Concurrent Programming With GCD In Swift 3
        GCD()
        
    }
    func GCD(){
        let Queue = DispatchQueue(label: "myvsdvfs",qos:.userInteractive)
        let Queue1 = DispatchQueue(label: "ALI.developer.com",qos:.background)
        
        Queue.async {
            for i in 90...1000{
                print("😎",i)
            }
            
        }//End of first queue
        Queue1.async {
            for i in 0...1000{
                print("😇",i)
            }
        }//End of second queue

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

