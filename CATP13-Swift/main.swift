//
//  main.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation


// - MARK: 2.a
print("---------- Item 2.a ----------")
let pessoaPadrao = Pessoa()
let pessoaCustom = Pessoa(nome: "Henrique Valcanaia", nascimento: Date(timeIntervalSince1970: 1), sexo: .masculino)

print(pessoaPadrao.description)
print(pessoaCustom.description)

// - MARK: 2.b
print("---------- Item 2.b ----------")
let p1 = Pessoa()
let p2 = p1

let p3 = p1.copy() as! Pessoa // necessário pois usa Any que é uma estrutura semelhante ao Object

p1.setNome(nome: "Nome alterado")
print(p1.description)
print(p2.description)
print(p3.description)

// - MARK: 2.c
print("---------- Item 2.c ----------")
let a1 = Aluno()
print(a1.description)
