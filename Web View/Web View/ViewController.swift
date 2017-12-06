//
//  ViewController.swift
//  Web View
//
//  Created by Luthfi Aly on 9/25/17.
//  Copyright © 2017 Luthfialy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webViewApps: UIWebView!
    
    //deklarasi url web
    let urlWeb = "http://remajaislam.com"
    
    //karena di ios hanya support https , maka kita menambahkan allow arbitory loads di bagian di info.plist
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       //deklarasi urlRequest
       let requestUrl = NSURL(string: urlWeb)
        
       //deklarasi request
        let request = NSURLRequest(url: requestUrl! as URL)
        webViewApps.loadRequest(request as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

