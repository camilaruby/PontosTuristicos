//
//  PontosTuristicosTableViewController.swift
//  PontosTuristicos
//
//  Created by Usuário Convidado on 19/12/17.
//  Copyright © 2017 br.com.camila.fiap. All rights reserved.
//

import UIKit

class PontosTuristicosTableViewController: UITableViewController {
    
    var dataSource: [PontosTuristicos] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadLocalJSON()
        
 
        
    }
    
    func loadLocalJSON(){
        if let jsonURL = Bundle.main.url(forResource: "poi", withExtension: "json"){
            
            let data = try! Data(contentsOf: jsonURL)
            
            let json = try! JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions()) as! [[String: Any]]
            
            for item in json {
                
                let name      = item["name"] as! String
                let address   = item["address"] as! String
                let latitude  = item["latitude"] as! Double
                let longitude = item["longitude"] as! Double
                
                let pontoTuristico = PontosTuristicos(name: name, address: address, latitude: latitude, longitude: longitude)
                dataSource.append(pontoTuristico)
            }
           
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.count
    }
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PontoTuristicoCell", for: indexPath) as!
        PontosTuristicosTableViewCell

        cell.lblName.text = dataSource[indexPath.row].name
        cell.lblAddress.text = dataSource[indexPath.row].address

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
       let vc = segue.destination as! ViewController
       vc.pontoTuristico = dataSource[tableView.indexPathForSelectedRow!.row]
       
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
