//
//  ViewController.swift
//  op
//
//  Created by Mac3 on 17/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numero1: String?
    var numero2: String?
    var res = 0
    
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var tfNumero1: UITextField!
    @IBOutlet weak var tfNumero2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnSumar(_ sender: Any) {
        numbs()
        
        res = (Int(numero1!)! + Int(numero2!)!)
        lblResultado.text = "Resultado: \(res)"
        
        cambiarImg(img: "suma")
        campoBlanco()
    }
    @IBAction func btnRestar(_ sender: Any) {
        numbs()
        
        res = (Int(numero1!)! - Int(numero2!)!)
        lblResultado.text = "Resultado: \(res)"
        
        cambiarImg(img: "res")
        campoBlanco()
    }
    @IBAction func btnMultiplicar(_ sender: Any) {
        numbs()
        
        res = (Int(numero1!)! * Int(numero2!)!)
        lblResultado.text = "Resultado: \(res)"
        
        cambiarImg(img: "multi")
        campoBlanco()
    }
    @IBAction func btnDividir(_ sender: Any) {
        numbs()
        
        res = (Int(numero1!)! / Int(numero2!)!)
        lblResultado.text = "Resultado: \(res)"
        
        cambiarImg(img: "div")
        campoBlanco()
    }
    
    
    func numbs(){
        numero1 = tfNumero1.text ?? "0"
        numero2 = tfNumero2.text ?? "0"
    }
    
    func cambiarImg(img: String){
        imagen.image = UIImage(named: img)
    }
    
    func campoBlanco(){
        tfNumero1.text = ""
        tfNumero2.text = ""
    }
    
}

