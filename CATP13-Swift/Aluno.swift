//
//  Aluno.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

enum Nivel {
    case indefinido, graduacao, especializacao, mestrado, doutorado
    
    var asString: String {
        switch self {
        case .graduacao:
            return "Graduação"
        
        case .especializacao:
            return "Especialização"
        
        case .mestrado:
            return "Mestrado"
        
        case .doutorado:
            return "Doutorado"
            
        case .indefinido:
            return "Indefinido"
        }
    }
}

class Aluno: Pessoa {
    
    private var codigo: String
    private var nivel: Nivel
    
    override var description: String {
        return "Aluno {\n\(super.description), \n\t\(getCodigo()), \n\t\(getNivel().asString)}"
    }
    
    // - Setters
    func setCodigo(codigo: String) {
        if (codigo.characters.count <= 8) && (codigo.characters.count > 0) {
            self.codigo = codigo
        }
    }
    
    func setNivel(nivel: Nivel) {
        self.nivel = nivel
    }
    
    // - Getters
    func getCodigo() -> String {
        return self.codigo
    }
    
    func getNivel() -> Nivel {
        return self.nivel
    }
    
    // - Construtores
    required init() {
        codigo = "00000000"
        nivel = .indefinido
        super.init()
    }
    
    convenience init(codigo: String, nivel: Nivel) {
        self.init()
        setCodigo(codigo: codigo)
        setNivel(nivel: nivel)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let theCopy = super.copy(with: zone) as! Aluno
        theCopy.setNivel(nivel: getNivel())
        theCopy.setCodigo(codigo: getCodigo())
        
        return theCopy
    }
    
}
