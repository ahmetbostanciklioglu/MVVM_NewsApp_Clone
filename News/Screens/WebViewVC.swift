//
//  WebViewVC.swift
//  News
//
//  Created by Ahmet Bostancıklıoğlu on 8.07.2022.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    var url: String?
    var sourceTitle : String!
    
    let webView = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        navigationItem.title = sourceTitle
        navigationController?.navigationBar.prefersLargeTitles = false
        configureWebView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    private func configureWebView() {
        view.addSubview(webView)
        if let articleurl = url {
            guard let url = URL(string: articleurl) else {
                return
            }
            webView.load(URLRequest(url: url))
        }
    }

}
