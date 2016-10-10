//
//  ViewController.swift
//  iOS App
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var alunos: [Aluno] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alunos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlunoCell", for: indexPath)
        let aluno = alunos[indexPath.row]
        
        cell.textLabel?.text = aluno.getNome()
        cell.detailTextLabel?.text = "\(aluno.getNivel())"
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination.childViewControllers.first as? AddNewAlunoViewController)?.delegate = self
    }
}
