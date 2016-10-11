//
//  ViewController.swift
//  iOS App
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var alunos: [Aluno] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateAlunos()
    }
    
    private func generateAlunos() {
        var randomAlunos = [Aluno]()
        for i in 1...9 {
            let a = Aluno(codigo: "0000000\(i)", nivel: .especializacao)
            a.setNome(nome: String.generateRandomString(withLength: 8).lowercased())
            randomAlunos.append(a)
        }
        alunos = randomAlunos
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination.childViewControllers.first as? AddNewAlunoViewController)?.delegate = self
    }
    
    @IBAction func didTapSort(_ sender: AnyObject) {
        let sorted = alunos.mySort()
        alunos = sorted
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alunos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlunoCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let aluno = alunos[indexPath.row]
        
        cell.textLabel?.text = aluno.getNome()
        cell.detailTextLabel?.text = "\(aluno.getNivel())"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
