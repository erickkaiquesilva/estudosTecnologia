//
//  FolhaPagamento.swift
//  classEstructs
//
//  Created by Erick Kaique Da Silva on 20/11/19.
//

import Foundation

struct FolhaPagamento {
    
    let valorHorasTrabalhadas: Double
    let horasTrabalhadaDia: Int
    let diasTrabalhado: Int
    
    private func calculaGanhos() -> Double {
        
        let totalHorasTrabalhadaMes =  horasTrabalhadaDia * diasTrabalhado
        let salario = Double(totalHorasTrabalhadaMes) * valorHorasTrabalhadas
        
        return salario
    }
    
    func salarioSemDesconto() -> Double {
        let salarioSemDesconto = calculaGanhos()
        return salarioSemDesconto
    }
    
    func salarioLiquido() -> Double {
        let descontoINSS = calculaGanhos() * 0.15
        let salarioLiquido = calculaGanhos() - descontoINSS
        
        return salarioLiquido
    }
}
