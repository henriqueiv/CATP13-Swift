//
//  ViewController.swift
//  iOS App
//
//  Created by Henrique Valcanaia on 10/10/16.
//  Copyright © 2016 Henrique Valcanaia. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    private var alunos: [Aluno] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    func insertAluno(aluno: Aluno) {
        alunos.append(aluno)
        alunos = alunos.mySort()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alunos = generateAlunos().mySort()
    }
    
    private func generateAlunos() -> [Aluno] {
        var randomAlunos = [Aluno]()
        for i in 1...9 {
            let a = Aluno(codigo: "0000000\(i)", nivel: Nivel(rawValue: Int.random(min: 0, max: 3))!)
            a.setSexo(sexo: Sexo(rawValue: Int.random(min: 0, max: 1))!)
            a.setNome(nome: String.generateRandomString(withLength: 8).lowercased())
            randomAlunos.append(a)
        }
        return randomAlunos
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination.childViewControllers.first as? AddNewAlunoViewController)?.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alunos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlunoCell", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let customCell = cell as! AlunoTableViewCell
        let aluno = alunos[indexPath.row]
        
        customCell.nomeLabel?.text = aluno.getNome()
        customCell.nivelLabel?.text = "\(aluno.getNivel())"
        customCell.codLabel?.text = "\(aluno.getCodigo())"
        let d = DateFormatter()
        d.dateStyle = .short
        customCell.dataLabel?.text = d.string(from: aluno.getDtnascimento())
        customCell.sexLabel?.text = "\(aluno.getSexo())"
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
