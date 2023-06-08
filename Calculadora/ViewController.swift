 //
//  ViewController.swift
//  Calculadora
//
//  Created by Desarrollo on 11/05/23.
//

import UIKit

class ViewController: UIViewController {

    var operacion = 0
    var valor1 = ""
    var valor2 = ""
    var resultado :Int = 0
    
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var tree: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var bDivision: UIButton!
    @IBOutlet weak var bMultiplica: UIButton!
    @IBOutlet weak var bResta: UIButton!
    @IBOutlet weak var bSuma: UIButton!
    @IBOutlet weak var bIgual: UIButton!
    
    @IBOutlet weak var pantalla: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func ab7(_ sender: Any) {
        pantalla.text = pantalla.text! + "7"
    }
    @IBAction func ba8(_ sender: Any) {
        pantalla.text = pantalla.text! + "8"
    }
    @IBAction func ba9(_ sender: Any) {
        pantalla.text = pantalla.text! + "9"
    }
    @IBAction func ab4(_ sender: Any) {
        pantalla.text = pantalla.text! + "4"
    }
    @IBAction func ab5(_ sender: Any) {
        pantalla.text = pantalla.text! + "5"
    }
    @IBAction func ab6(_ sender: Any) {
        pantalla.text = pantalla.text! + "6"
    }
    @IBAction func ab1(_ sender: Any) {
        pantalla.text = pantalla.text! + "1"
    }
    @IBAction func ab2(_ sender: Any) {
        pantalla.text = pantalla.text! + "2"
    }
    @IBAction func ab3(_ sender: Any) {
        pantalla.text = pantalla.text! + "3"
    }
    @IBAction func ab0(_ sender: Any) {
        pantalla.text = pantalla.text! + "0"
    }
    @IBAction func acC(_ sender: Any) {
        pantalla.text=""
        valor1=""
        valor2=""
    }
    @IBAction func abDivision(_ sender: Any) {
        operacion = 4
        valor1 = pantalla.text!
        pantalla.text = ""
    }
    @IBAction func abMultiplica(_ sender: Any) {
        operacion = 3
        valor1 = pantalla.text!
        pantalla.text = ""
    }
    @IBAction func abResta(_ sender: Any) {
        operacion = 2
        valor1 = pantalla.text!
        pantalla.text = ""
    }
    @IBAction func abSuma(_ sender: Any) {
        operacion = 1
        valor1 = pantalla.text!
        pantalla.text = ""
    
    }
    @IBAction func abIgual(_ sender: Any) {
        valor2 = pantalla.text!
        let v1 = (Int(valor1)!)
        let v2 = (Int(valor2)!)
        switch operacion{
        case 1:
          resultado = v1 + v2
            break
        case 2:
          resultado = v1 - v2
            break
        case 3:
          resultado = v1 * v2
            break
            
        case 4:
          resultado = v1 / v2
            break
        default:
            resultado = -1
        }
    
        pantalla.text = String(resultado)
    }
    
    
}

