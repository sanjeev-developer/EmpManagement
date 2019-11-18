//
//  WebviewViewController.swift
//  EmpManagement
//
//  Created by sanjeev gupta on 2019-11-16.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit
import WebKit

class WebviewViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webflow: WKWebView!
    var optionSelect : String = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()

        if(optionSelect == "about")
        {
            let url = URL(string: "file:///Users/Vivek/Downloads/contacus.html")!
            webflow.load(URLRequest(url: url))
            webflow.allowsBackForwardNavigationGestures = true
        }
        else if(optionSelect == "contact")
        {
            let url = URL(string: "file:///Users/Vivek/Downloads/aboutUs.html")!
            webflow.load(URLRequest(url: url))
            webflow.allowsBackForwardNavigationGestures = true
        }
       
        
}
    override func loadView() {
        webflow = WKWebView()
        webflow.navigationDelegate = self
        view = webflow
    }
    


}
