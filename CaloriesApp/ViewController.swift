//
//  ViewController.swift
//  CaloriesApp
//
//  Created by Med Salmen Saadi on 5/16/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tv_List: UITableView!
    
    var Fruits = Array<Calorie>()
    var Vegetables = Array<Calorie>()
    
    var Sections=[ "Fruits","Vegetables"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Fruits.append(Calorie(Name: "apple", Desc: "An apple is a sweet, edible fruit produced by an apple tree (Malus pumila).", Image: "apple"))
        Fruits.append(Calorie(Name: "avocado", Desc: "An avocado is a berry fruit. It has medium dark green or dark green bumpy or smooth skin depending on the variety.", Image: "avocado"))
        Fruits.append(Calorie(Name: "blackberries", Desc: "The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae.", Image: "blackberries"))
        Fruits.append(Calorie(Name: "cherries", Desc: "The cherry fruits of commerce usually are obtained from cultivars of a limited number of species such as the sweet cherry and the sour cherry.", Image: "cherries"))
        Fruits.append(Calorie(Name: "kiwi", Desc: "Kiwifruit, or Chinese gooseberry is the edible berry of several species of woody vines in the genus Actinidia.", Image: "kiwi"))
        Fruits.append(Calorie(Name: "mango", Desc: "Mangoes are juicy stone fruit from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit.", Image: "mango"))
        Fruits.append(Calorie(Name: "peach", Desc: "The peach is a deciduous tree native to the region of Northwest China between the Tarim Basin and the north slopes of the Kunlun Mountains, where it was first domesticated and cultivated.", Image: "peach"))
        Fruits.append(Calorie(Name: "plum", Desc: "A plum is a sweet fruit. Its scientific name is Prunus. When dried, it is called a prune.", Image: "plum"))
        
        Vegetables.append(Calorie(Name: "beetroot", Desc: "Beets redirects here. For other uses, see Beets (disambiguation).", Image: "beetroot"))
        Vegetables.append(Calorie(Name: "cabbage", Desc: "Cabbage or headed cabbage (comprising several cultivars of Brassica oleracea) is a leafy green, red (purple), or white (pale green) biennial plant.", Image: "cabbage"))
        Vegetables.append(Calorie(Name: "capsicum", Desc: "Capsicum is a genus of flowering plants in the nightshade family Solanaceae.", Image: "capsicum"))
        Vegetables.append(Calorie(Name: "carrots", Desc: "The carrot (Daucus carota subsp. sativus) is a root vegetable, usually orange in colour.", Image: "carrots"))
        Vegetables.append(Calorie(Name: "celery", Desc: "Celery (Apium graveolens) is a marshland plant in the family Apiaceae that has been cultivated as a vegetable since antiquity.", Image: "celery"))
        Vegetables.append(Calorie(Name: "mushroom", Desc: "A mushroom, or toadstool, is the fleshy, spore-bearing fruiting body of a fungus, typically produced above ground on soil or on its food source.", Image: "mushroom"))
        Vegetables.append(Calorie(Name: "onions", Desc: "The onion, also known as the bulb onion or common onion, is a vegetable that is the most widely cultivated species of the genus Allium.", Image: "onions"))
        Vegetables.append(Calorie(Name: "potato", Desc: "The potato is a starchy, tuberous crop from the perennial nightshade Solanum tuberosum.", Image: "potato"))
        
        // Do any additional setup after loading the view.
        //TableViewList.dataSource=self
        // TableViewList.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return Fruits.count
        } else {
            return Vegetables.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TVCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TVCell
        if indexPath.section==0 {
            cell.la_Name.text=Fruits[indexPath.row].Name!
            cell.la_Des.text =  Fruits[indexPath.row].Desc!
            cell.iv_Image.image = UIImage(named: Fruits[indexPath.row].Image!)
        }else{
            cell.la_Name.text=Vegetables[indexPath.row].Name!
            cell.la_Des.text =  Vegetables[indexPath.row].Desc!
            cell.iv_Image.image = UIImage(named: Vegetables[indexPath.row].Image!)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowDetails", sender: Fruits[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dis=segue.destination as?  VCDetails {
        if let indexPath = tv_List.indexPathForSelectedRow {
            if (indexPath.section == 0) {
                let selectedRow = indexPath.row
                dis.SingelItem = Fruits[selectedRow]
            }
            else if (indexPath.section == 1) {
                let selectedRow = indexPath.row
                dis.SingelItem = Vegetables[selectedRow]
            }
            }
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Sections[section]
    }
    
}

