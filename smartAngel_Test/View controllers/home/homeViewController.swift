//
//  homeViewController.swift
//  smartAngel_Test
//
//  Created by A on 8/31/20.
//  Copyright © 2020 Taha Hussein. All rights reserved.
//

import UIKit
import PKHUD
import IBAnimatable
class homeViewController: UIViewController {

    @IBOutlet weak var settingView: AnimatableView!
    @IBOutlet weak var homeTableView: UITableView!
    // Mark : variables
    var presenter : ViewToPresenterhomeProtocol?
    var toogle: Bool = true
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         self.navigationController?.isNavigationBarHidden = true
          presenter?.viewDidLoad()
    }
    @IBAction func settingButton(_ sender: Any) {
        toogleSettingView()
    }
    
    func toogleSettingView(){
        if toogle == false{
            settingView.isHidden = true
        }
        else{
            settingView.isHidden = false
        }
        toogle = !toogle
    }
}
extension homeViewController  : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows =  presenter?.numberOfRowInSection(section) ?? 0
        if rows > 3{
            return 3
        }
        else{
            return rows
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeTableViewCell", for: indexPath)as! homeTableViewCell
        presenter?.cellOfRowsInTable(cell, indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
}
extension homeViewController: PresenterToViewhomeProtocol{
    func reloadData() {
        homeTableView.reloadData()
    }
    
    func showLoader() {
     HUD.show(.progress)
    }
    
    func hideLoader() {
        HUD.hide()
    }
    
    // TODO: Implement View Output Methods
}
