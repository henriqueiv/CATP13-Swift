//
//  AddNewAlunoViewController.swift
//  CATP13-Swift
//
//  Created by Txai Wieser on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class AddNewAlunoViewController: UITableViewController {
    var delegate: ViewController?
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var codeField: UITextField!
    @IBOutlet var dataPicker: UIDatePicker!
    @IBOutlet var sexSegmentedControl: UISegmentedControl!
    @IBOutlet var nivelSegmentedControl: UISegmentedControl!
    
    @IBAction func saveAluno() {
        let newAluno = Aluno()
        newAluno.setNome(nome: nameField.text ?? "")
        newAluno.setCodigo(codigo: codeField.text ?? "")
        newAluno.setDtnascimento(data: dataPicker.date)
        
        switch sexSegmentedControl.selectedSegmentIndex {
        case 1:
            newAluno.setSexo(sexo: .feminino)
        case 2:
            newAluno.setSexo(sexo: .masculino)
        default:
            newAluno.setSexo(sexo: .indefinido)
        }
        
        switch nivelSegmentedControl.selectedSegmentIndex {
        case 1:
            newAluno.setNivel(nivel: .graduacao)
        case 2:
            newAluno.setNivel(nivel: .especializacao)
        case 3:
            newAluno.setNivel(nivel: .mestrado)
        case 4:
            newAluno.setNivel(nivel: .doutorado)
        default:
            newAluno.setNivel(nivel: .indefinido)
        }
        
        self.delegate?.insertAluno(aluno: newAluno)
        dismiss(animated: true)
    }
    
}
