//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Igor Makeev on 31.05.2021.
//

import UIKit
import WebKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var activityIndecator: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackground()
        
        let url = "https://ru.wikipedia.org/wiki/%D0%A5%D0%BE%D0%B1%D0%B1%D0%B8"
        let request = URLRequest(url: URL(string: url)!)
        self.webView.load(request)
        self.webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), options: .new, context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "loading"{
            if webView.isLoading{
                activityIndecator.startAnimating()
                activityIndecator.isHidden = false
            } else{
                activityIndecator.stopAnimating()
                activityIndecator.isHidden = true
            }
        }
    }
}

