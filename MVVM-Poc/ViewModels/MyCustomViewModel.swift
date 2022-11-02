//
//  MyCustomViewModel.swift
//  MVVM-Poc
//
//  Created by Luiz Sena on 02/11/22.
//

import Foundation
import UIKit

/* Geralmente a ViewModel é onde as funcoes que serao Implementadas na controller serao Explicitadas.
 No nosso projeto utilizaremos a MyCustomViewModel para podermos printar "Tapped n" sendo n a quantidade
 de vezes que o botao ja foi apertado.
 */

class MyCustomViewModel {

    private var myModel: [MyModel] = [] // Instância do nosso model.

    /* Na linha abaixo(l: 21) temos uma variavel computada que será utilizada
     para nos dizer a quantidade de vezes que o botao foi apertado, e posteriormente mostrado na View. */
    var myModelLenghtAsString: String {
        return String(myModel.count)
    }

    func tapTheButton() {

        let justToAppend = MyModel(myString: "Tapped")
        myModel.append(justToAppend)

        print("\(myModel[0].myString) \(myModel.count)")
    }

}
