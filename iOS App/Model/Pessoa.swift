//
//  Pessoa.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

enum Sexo {
    case masculino, feminino, indefinido
    
    var asString: String {
        switch self {
        case .masculino:
            return "Masculino"
        case .feminino:
            return "Feminino"
        case .indefinido:
            return "Indefinido"
        }
    }
}

class Pessoa: NSCopying {
    private var nome: String
    private var dtnascimento: Date
    private var sexo: Sexo
    
    var description: String {
        return "Pessoa {\n\tNome: \(getNome()), \n\tNascimento: \(getDtnascimento()), \n\tSexo:\(getSexo().asString)\n}"
    }
    
    func setNome(nome: String) {
        self.nome = nome
    }
    
    func setDtnascimento(data: Date) {
        self.dtnascimento = data
    }
    
    func setSexo(sexo: Sexo) {
        self.sexo = sexo
    }
    
    func getNome() -> String {
        return self.nome
    }
    
    func getDtnascimento() -> Date {
        return self.dtnascimento
    }
    
    func getSexo() -> Sexo {
        return self.sexo
    }
    
    required init() {
        print("Construtor padrão da classe '\(type(of: self))' chamado")
        nome = "Nome indefinido"
        dtnascimento = Date()
        sexo = .indefinido
    }
    
    convenience init(nome: String, nascimento: Date, sexo: Sexo) {
        self.init()
        setNome(nome: nome)
        setDtnascimento(data: nascimento)
        setSexo(sexo: sexo)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let theCopy = type(of: self).init()
        theCopy.setNome(nome: getNome())
        theCopy.setDtnascimento(data: getDtnascimento())
        theCopy.setSexo(sexo: getSexo())
        
        return theCopy
    }
}
