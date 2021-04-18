//
//  VerReglaViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class VerReglaViewController: UIViewController {
    var unaRegla : Reglas!
    
    @IBOutlet weak var lTitulo: UILabel!
    @IBOutlet weak var lRegla: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(unaRegla.ejemplo)
        print(unaRegla.regla)
        
        lTitulo.text = unaRegla.ejemplo
        lRegla.text = unaRegla.regla
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
