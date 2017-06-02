//
//  ViewController.swift
//  Project
//
//  Created by Usuário Convidado on 01/06/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuSegmento: UISegmentedControl!
    
    
    @IBOutlet weak var lblAno: UILabel!
    
    
    @IBOutlet weak var lblKM: UILabel!
    
    
    @IBOutlet weak var lblRota: UILabel!
    
    
    @IBOutlet weak var meuStepper: UIStepper!
    
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Voce escolheu o primeiro botao")
            break
        case 1:
            print("Voce escolheu o segundo botao")
            break
        case 2:
            print("Voce escolheu o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        default:
            break
        }
    }
    
    
    @IBAction func meuStepperChanged(_ sender: UIStepper) {
        lblAno.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func meuSliderChange(_ sender: UISlider) {
        lblKM.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func meuSwitch(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    
    @IBAction func escolherRota(_ sender: Any) {
        let alerta = UIAlertController(title:"Forma para receber a rota",
                                       message: "Faca sua escolha",
                                       preferredStyle:UIAlertControllerStyle.actionSheet                                                  )
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler:  {action in self.lblRota.text = action.title}
            ))
        
        alerta.addAction(UIAlertAction(
            title: "E-MAIL",
            style: UIAlertActionStyle.default,
            handler:  {action in self.lblRota.text = action.title}
        ))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.default,
            handler:  {action in self.lblRota.text = action.title}
        ))
        
        present(alerta, animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func salvarButao(_ sender: Any) {
        var msg: String
        var tipo: String
        
        if meuSegmento.selectedSegmentIndex >= 0{
            tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            msg = "Veiculo \(tipo) do ano \(lblAno.text!) salvo com sucesso"
        }else{
            tipo = ""
            msg = "Antes de salvar escolha o tipo de veiculo"
            
        }
        
        let alerta = UIAlertController(
            title: "Atencao",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil))
        present(alerta, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980"
        lblKM.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

