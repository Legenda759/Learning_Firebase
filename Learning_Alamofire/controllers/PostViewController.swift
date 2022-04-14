//
//  PostViewController.swift
//  Learning_Alamofire
//
//  Created by Legenda_759 on 06/04/22.
//

import UIKit
import KeychainSwift

class PostViewController: BaseViewController {
    
    let session = SessionStore()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if SaveUser.user.getBool("login") != true {
            sceneDelegate().callSignInViewController()
        }
        initViews()
        // Do any additional setup after loading the view.
    }
    
    func initViews() {
        view.backgroundColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_add"), style: .plain, target: self, action: #selector(addTapped))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "ic_logout"), style: .plain, target: self, action: #selector(logoutTapped))
        
        title = session.session?.email
        
    }
    
    @objc func addTapped() {
        
    }
    
    @objc func logoutTapped() {
        sceneDelegate().callSignInViewController()
        SaveUser.storeInfos(login: false)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
