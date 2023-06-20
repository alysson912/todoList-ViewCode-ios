//
//  ViewController.swift
//  todoList
//
//  Created by ALYSSON DODO on 14/06/23.
//

import UIKit

class UnboardingVC: UIViewController {

    private var screen: UnboardingScreen?
    
    override func loadView() {
        screen = UnboardingScreen()
        view = screen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }


}

extension UnboardingVC: UnboardingProtocol {
    func tappedForwardButton() {
        print("está funcionando !")
        
        let vc = HomeVC()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    
}
