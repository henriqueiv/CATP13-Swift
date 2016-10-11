//
//  CATPComparable.swift
//  CATP13-Swift
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import Foundation

protocol CATPComparable {
    /*
     `associatedtype` informa a classe que vai conformar/assinar com o protocolo/interface que deve ser "criado" este tipo, no caso utilizando typealias.
     Não foi necessário implementar pois a constraint `Self` já faz com que o tipo que está sendo comparado seja do mesmo tipo que está implementando a interface/protocolo CATPComparable
     
     associatedtype E
     */
    func compares_to(obj: Self) -> Int
}
