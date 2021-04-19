//
//  VFPregunta.swift
//  Mayusculas
//
//  Created by user193715 on 4/17/21.
//

import UIKit

class VFPregunta: NSObject {

    var texto : String
    var pregunta: String
    var CAnswer: Int
    init(texto: String ,pregunta: String ,CAnswer: Int){
        self.texto = texto
        self.pregunta = pregunta
        self.CAnswer = CAnswer
    }
}
