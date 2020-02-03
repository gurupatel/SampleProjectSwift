//
//  ViewController.swift
//  SampleProjectSwift
//
//  Created by Gaurang Patel on 01/02/20.
//  Copyright © 2020 POLLFISH. All rights reserved.
//

import Foundation
import UIKit
import Pollfish

class ViewController: UIViewController, PollfishDelegate {
        
    // MARK: - Open/Close panel delegate methods
    func panelOpened() {
        
        print("Panel Opened")
    }
    
    func panelClosed(param1: String, param2: String, param3: String) {
        
        print("Panel Closed")
        print("param3 : ", param1)
        print("param4 : ", param2)
        print("param5 : ", param3)
    }

    // MARK: - WebView delegate methods
    func webViewFinishLoadingSuccessfully() {
        
        print("Finished navigating to url")
    }
    
    func webViewFinishLoadingFailed() {
        
        print("Failed navigating to url")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addPollfishView()
    }
    
    func addPollfishView() {

        let pollfish = Pollfish.init(frame: self.view.frame)
        pollfish.delegate = self
        pollfish.link = "https://www.pollfish.com/"
        pollfish.param1 = "PARAM 1"
        pollfish.param2 = "PARAM 2"
        pollfish.param3 = "PARAM 3"
        pollfish.param4 = "PARAM 4"
        pollfish.param5 = "PARAM 5"
        self.view.addSubview(pollfish)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated:Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self)
    }
}

