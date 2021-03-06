//
//  ReglasTableViewController.swift
//  Mayusculas
//
//  Created by Javier Adrian Villa Leon on 17/04/21.
//

import UIKit

class ReglasTableViewController: UITableViewController {

    var listaReglas = [
        Reglas(ejemplo: "¡No es increíble! Salió ileso.", regla: "Cuando se inicia un escrito y después de punto, después de los signos de interrogación o admiración, si con ellos se terminó la frase."),
        Reglas(ejemplo: "Las aventuras del ingenioso hidalgo don Quijote de la Mancha", regla: "Es aceptable escribir sólo con mayúscula la letra inicial de las obras artísticas."),
        Reglas(ejemplo: "Jesús dijo: La verdad os hará libres", regla: "Cuando se cita después de dos puntos"),
        Reglas(ejemplo: "Lic., Dr., Profr., Mtro., I.M.S.S., SEP.", regla: "Va mayúscula en las abreviaturas y siglas.")
    ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaReglas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "regla", for: indexPath)

        cell.textLabel?.text = listaReglas[indexPath.row].ejemplo
        cell.detailTextLabel?.text = listaReglas[indexPath.row].regla

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verRegla"{
            let vistaRegla = segue.destination as! VerReglaViewController
            let indice = tableView.indexPathForSelectedRow
            vistaRegla.unaRegla = listaReglas[indice!.row]
        }
        
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
