//
//  TelaVermelhaViewController.swift
//  EstudandoPS
//
//  Created by Usuário Convidado on 01/06/17.
//  Copyright © 2017 Matheus. All rights reserved.
//

import UIKit

class TelaVermelhaViewController: UIViewController {

    
    @IBAction func fechar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func abrirTelaLaranja(_ sender: Any) {
        performSegue(withIdentifier: "telaVermxTelaLar", sender: sender)
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
