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
    
    @IBAction func saveAluno() {
        let newAluno = Aluno()
        newAluno.setNome(nome: String(format: "%d", arc4random()))
        newAluno.setNivel(nivel: arc4random_uniform(2) == 1 ? .graduacao : .doutorado)
        
        self.delegate?.alunos.append(newAluno)
        delegate?.tableView.reloadData()
        dismiss(animated: true) {
            self.delegate?.tableView.reloadData()
        }
    }
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var codeField: UITextField!
    @IBOutlet var dataPicker: UIDatePicker!
    @IBOutlet var sexSegmentedControl: UISegmentedControl!
    @IBOutlet var nivelSegmentedControl: UISegmentedControl!
    
}
