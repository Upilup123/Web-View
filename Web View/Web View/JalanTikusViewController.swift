//
//  JalanTikusViewController.swift
//  Web View
//
//  Created by Luthfi Aly on 9/25/17.
//  Copyright © 2017 Luthfialy. All rights reserved.
//

import UIKit

class JalanTikusViewController: UIViewController {

    @IBOutlet weak var JalanTikusWebViewApps: UIWebView!
    
    //deklarasi url web
    let urlWeb = "https://www.jalantikus.com"
    
    //karena di ios hanya support https , maka kita menambahkan allow arbitory loads di bagian di info.plist
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically  from a nib.
        
        //deklarasi urlRequest
        let requestURL = NSURL(string: urlWeb)
        
        //deklarasi request
        let request = NSURLRequest(url: requestURL! as URL)
        JalanTikusWebViewApps.loadRequest(request as URLRequest)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
