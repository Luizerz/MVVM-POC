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

    private var myModel: [MyModel] = []

    var myModelLenghtAsString: String {
        return String(myModel.count)
    }

    func tapTheButton() {

        let justToAppend = MyModel(myString: "Tapped")
        myModel.append(justToAppend)

        print("\(myModel[0].myString) \(myModel.count)")
    }

}
