//
//  ViewController.swift
//  PassDataProject
//
//  Created by Кристина Максимова on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var login = UITextField()
    var password = UITextField()
    var result = UILabel()
    var name = UILabel()
    var button = UIButton()
    
//    @IBOutlet weak var loginTF: UITextField!
//    @IBOutlet weak var passwordTF: UITextField!
//    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(login)
        view.addSubview(password)
        view.addSubview(result)
        view.addSubview(name)
        view.addSubview(button)
        layout()
    }
    
    func layout() {
        name.text = "Pass Data Project"
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = .systemFont(ofSize: 35, weight: .light)
        
        login.translatesAutoresizingMaskIntoConstraints = false
        login.placeholder = "Login"
        login.borderStyle = .roundedRect
        
        password.translatesAutoresizingMaskIntoConstraints = false
        password.placeholder = "Password"
        password.borderStyle = .roundedRect
        password.isSecureTextEntry = true
        
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        result.text = "Greetings"
        result.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            name.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            name.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
            
            login.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 30),
            login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            login.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 30),
            login.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: 30),
            
            password.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 20),
            password.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            password.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 30),
            password.trailingAnchor.constraint(greaterThanOrEqualTo: view.trailingAnchor, constant: 30),
            
            button.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            result.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            result.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        button.addTarget(self, action: #selector(goInSecondViewController), for: .touchUpInside)
    }
//        NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
    
    @objc func goInSecondViewController() {
        let svc = SecondViewController()
        
        self.present(svc, animated: true) {
            svc.greetings.text = self.login.text
        }
    }
    
//    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
//        guard segue.identifier == "unwindSegue" else { return }
//        guard let svc = segue.source as? SecondViewController else { return }
//        self.resultLabel.text = svc.label.text
//    }
//    @IBAction func loginTapted(_ sender: UIButton) {
//        performSegue(withIdentifier: "ditailSegue", sender: nil)
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let dvc = segue.destination as? SecondViewController else { return }
//        dvc.login = loginTF.text
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

