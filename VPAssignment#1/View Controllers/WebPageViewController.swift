//
//  WebPageViewController.swift
//  VPAssignment#1
//
//  Created by  on 2/7/21.
//

import UIKit
import WebKit

class WebPageViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var wbPage: WKWebView!
    
    @IBOutlet var activity : UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let urlAddress = URL(string: "https://pavishwa.myportfolio.com")
        let url = URLRequest(url: urlAddress!)
        wbPage.load(url)
        wbPage.navigationDelegate = self
    
        
    }
    
}
