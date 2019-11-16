//
//  WebviewViewController.swift
//  EmpManagement
//
//  Created by sanjeev gupta on 2019-11-16.
//  Copyright © 2019 sanjeev gupta. All rights reserved.
//

import UIKit
import WebKit


    
   override func loadView() {
        webflow = WKWebView()
        webflow.navigationDelegate = self
        view = webflow
    }
    


}
