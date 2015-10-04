//
//  ViewController.swift
//  setSegment
//
//  Created by guitarrkurt on 13/07/15.
//  Copyright (c) 2015 guitarrkurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    //MARK: Propertys
    
    @IBOutlet weak var tableView: UITableView!
    //@IBOutlet weak var mainSegment: UISegmentedControl!
    @IBOutlet weak var cartaSegment: UISegmentedControl!
    var array: NSMutableArray = ["1", "2", "3"]
    
    //MARK: Constructor
    override func viewDidLoad() {
        super.viewDidLoad()
        //Ocultamos cartaSegment para que no se vea al principio
        self.cartaSegment.hidden = true
    }
    
    //MARK: Table Data Source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
            cell.textLabel?.text = array[indexPath.row] as? String
        
        return cell
    }
    
    //MARK: Actions
    @IBAction func mainSegmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        //Promos
        case 0:
            self.cartaSegment.hidden = true
            array = ["Promos 1", "Promos 2", "Promos 3"]
            break;
            
        //Carta
        case 1:
            self.cartaSegment.hidden = false
            array = []
            break;
            
        //Carrito
        case 2:
            self.cartaSegment.hidden = true
            array = []
            break;
        default:
            break;
        }
        self.tableView.reloadData()//Vuelve a llamar los metodos de tableView
    }
    
    @IBAction func cartaSegmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            array = ["⭐️ 1", "⭐️ 2", "⭐️ 3"]
            break;
        case 1:
            array = ["Pastor 1", "Pastor 2", "Pastor 3"]
            break;
        case 2:
            array = ["Arabe 1", "Arabe 2", "Arabe 3"]
            break;
        case 3:
            array = ["Carrito 1", "Carrito 2", "Carrito 3"]
            break;
        default:
            break;
        }
        self.tableView.reloadData()//Vuelve a llamar los metodos de tableView
    }
    
}

