//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Кристина Максимова on 11.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
    var greetings = UILabel()
    var button = UIButton()
    
//    var login: String?
//    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        view.addSubview(greetings)
        view.addSubview(button)
        layout()
        
//        guard let login = self.login else { return }
//        label.text = "Hello, \(login)"
    }
//    @IBAction func back(_ sender: UIButton) {
//        performSegue(withIdentifier: "unwindSegue", sender: nil)
//    }
    
    func layout() {
        greetings.translatesAutoresizingMaskIntoConstraints = false
        greetings.font = .systemFont(ofSize: 35, weight: .light)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go back", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        
        NSLayoutConstraint.activate([
            greetings.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            greetings.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     
            button.topAnchor.constraint(equalTo: greetings.bottomAnchor, constant: 50),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        button.addTarget(.none, action: #selector(goBack), for: .touchUpInside)
    }
    
    @objc func goBack(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
