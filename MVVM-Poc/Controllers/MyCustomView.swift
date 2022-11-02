//
//  MyCustomView.swift
//  MVVM-Poc
//
//  Created by Luiz Sena on 02/11/22.
//

import UIKit

class MyCustomView: UIView {

    weak var delegate: MyCustomViewDelegate?    // Declaramos que nossa View pode inicializar um delegate do tipo MyCustomViewDelegate

    // Configuracao do butão que sera utilizado como experimento do nosso projeto
    private lazy var myCustomButton: UIButton = {
        let button = UIButton()
        var config = UIButton.Configuration.borderedProminent()
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.setTitle("BOTÃO", for: .normal)
        return button
    }()

    private let counter: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        return label
    }()

    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        self.addSubview(myCustomButton)
        self.addSubview(counter)
        setContraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // Contraits para o botão
    func setContraints() {
        NSLayoutConstraint.activate([
            myCustomButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            myCustomButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            myCustomButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            myCustomButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),

            counter.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            counter.bottomAnchor.constraint(equalTo: myCustomButton.topAnchor, constant: -10)
        ])
    }

    // Funcao a qual sera chamada quando a view detectar o toque no botao.
    @objc func tapButton() {
        delegate?.change()  // Chama a funcao change do delegate, o qual está implementado na ViewController.
    }

    func updateCounter(with numberLiteral: String) {
        self.counter.text = numberLiteral
    }
}
