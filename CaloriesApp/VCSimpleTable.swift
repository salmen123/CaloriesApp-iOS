//
//  VCSimpleTable.swift
//  CaloriesApp
//
//  Created by Med Salmen Saadi on 5/17/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class VCSimpleTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tv_List: UITableView!
    
    var notkillerAnimal=["Monkey","Donkey","Elephant","Deer","Cow"]
    var  killerAnimal=["Bear","Tigger","Loain","Fox","Shark"]
    var Sections=[ "Not Killer","Killer"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notkillerAnimal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tv_List.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section==0 {
            cell.textLabel?.text=notkillerAnimal[indexPath.row]
        }else{
            cell.textLabel?.text=killerAnimal[indexPath.row]
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section==0) {
            print(notkillerAnimal[indexPath.row])
        }
        else {
            print(killerAnimal[indexPath.row])
        }
        
        //notkillerAnimal.append("new animal")
        //tv_List.reloadData()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Sections[section]
    }
    @IBAction func bu_Back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
