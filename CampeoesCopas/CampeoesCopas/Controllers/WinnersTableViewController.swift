//
//  WinnersTableViewController.swift
//  CampeoesCopas
//
//  Created by Ivan Costa on 29/02/20.
//

import UIKit

class WinnersTableViewController: UITableViewController {

    var worldCups:[WorldCup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWorldCups()
    }
    
    
    func loadWorldCups() {
        let fileURL = Bundle.main.url(forResource: "winners", withExtension: ".json")!
        let jsonData = try! Data(contentsOf: fileURL)
        
        do {
            worldCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch  {
            print(error.localizedDescription)
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        
        return worldCups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorldCupTableViewCell

        let worldCup = worldCups[indexPath.row]
                
        cell.prepare(with: worldCup)
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            let vc = segue.destination as! WorldCupViewController
            let worldCup = worldCups[tableView.indexPathForSelectedRow!.row]
            vc.worldCup = worldCup

    }
    

}
