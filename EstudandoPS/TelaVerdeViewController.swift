//
//  TelaVerdeViewController.swift
//  EstudandoPS
//
//  Created by Usuário Convidado on 01/06/17.
//  Copyright © 2017 Matheus. All rights reserved.
//

import UIKit

class TelaVerdeViewController: UIViewController {
    
    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var lblNota: UILabel!
    
    @IBOutlet weak var meuStepper: UIStepper!
    
    @IBOutlet weak var recNome: UILabel!
    
    @IBOutlet weak var recNota: UILabel!
    
    
    @IBAction func alteraNota(_ sender: Any) {
        lblNota.text = "\(Int(meuStepper.value))"
    }
    
    
    @IBAction func nomeENota(_ sender: Any) {
        recNome.text = txtNome.text
        recNota.text = lblNota.text
        
    }
    
    
    @IBAction func abrirTelaRoxa(_ sender: Any) {
        performSegue(withIdentifier: "telaVerxTelaRoxa", sender: sender)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
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
