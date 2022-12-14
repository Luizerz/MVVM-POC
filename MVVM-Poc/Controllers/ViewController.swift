//
//  ViewController.swift
//  MVVM-Poc
//
//  Created by Luiz Sena on 05/10/22.
//

import UIKit

class ViewController: UIViewController {
    // Inicializamos nossa View(MyCustomView) e também declaramos a ViewModel(MyCustomViewModel).
    private let myCustomView: MyCustomView = MyCustomView(
        frame: CGRect(
            x: 0,
            y: 0,
            width: UIScreen.main.bounds.width,
            height: UIScreen.main.bounds.height
        )
    )
    // Abaixo inicializamos a MyCustomViewModel.
    private var myCustonViewModel: MyCustomViewModel = MyCustomViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myCustomView)   // Adicionamos a MyCustomView como subview da View(view root) que temos na controller.
        myCustomView.delegate = self    // Atribuimos nossa ViewController ao delegate da MyCustomView
    }
}

// Fazemos nossa ViewController assinar o Protocolo(delegate) que foi declarado em nossa View.
extension ViewController: MyCustomViewDelegate {

    // Implementamos os metodos contidos no Protocolo
    func change() {
        myCustonViewModel.tapTheButton() // -> Atualiza o myModel da ViewModel
        myCustomView.updateCounter(
            with: myCustonViewModel.myModelLenghtAsString // -> Recebe o valor do array myModel contido na ViewModel e atualiza a View.
        )
    }
}
