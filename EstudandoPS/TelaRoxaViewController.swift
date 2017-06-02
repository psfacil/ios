//
//  TelaRoxaViewController.swift
//  EstudandoPS
//
//  Created by Usuário Convidado on 01/06/17.
//  Copyright © 2017 Matheus. All rights reserved.
//

import UIKit

class TelaRoxaViewController: UIViewController {
    
    
    @IBOutlet weak var meuWebView: UIWebView!
    
    let URL_PAGE = "https://www.youtube.com"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let URL_OK = URL(string: URL_PAGE)
        let request = URLRequest(url: URL_OK!)
        meuWebView.loadRequest(request)
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
