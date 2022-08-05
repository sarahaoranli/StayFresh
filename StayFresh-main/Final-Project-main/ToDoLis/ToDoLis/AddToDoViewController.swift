//
//  AddToDoViewController.swift
//  ToDoLis
//
//  Created by Mark Cheng on 7/27/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    
    var previousToDoTVC = ToDoTableViewController()

    @IBOutlet weak var descriptionInput: UITextField!
    @IBOutlet weak var switchInput: UISwitch!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        let newToDo = ToDoCD(context: dataFromCoreData)
        
        newToDo.descriptionInCD = descriptionInput.text
        newToDo.importantInCD = switchInput.isOn
        newToDo.expirationDateInCD = datePicker.date
        
        accessToCoreData.saveContext()
        
        navigationController?.popViewController(animated: true)
        
    }
        
        
        
        //let newToDo = ToDoClass()

       // if let checkForInput = descriptionInput.text {
            // newToDo.description = checkForInput
             //newToDo.important = switchInput.isOn
      //  }
        
       // previousToDoTVC.listOfToDo.append(newToDo)
       // previousToDoTVC.tableView.reloadData()
       // navigationController?.popViewController(animated: true)
    // }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

    }
    */

}
