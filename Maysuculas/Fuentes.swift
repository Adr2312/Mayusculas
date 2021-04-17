//
//  Fuentes.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class Fuentes: NSObject {
    var nombre :String = ""
    var ayuda : String = ""
    var link : String = ""
    
    init(nombre: String, ayuda: String, link: String){
        self.nombre = nombre
        self.ayuda = ayuda
        self.link = link
    }
}
