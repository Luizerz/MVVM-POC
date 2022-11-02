//
//  MyCustomViewDelegate.swift
//  MVVM-Poc
//
//  Created by Luiz Sena on 02/11/22.
//

import Foundation

/* Aqui temos o Delegate que será assinado na ViewController e utilizado pela MyCustomView,
 Para que se tenha uma comunicação View - ViewController */

protocol MyCustomViewDelegate: AnyObject {
    func change()
}
