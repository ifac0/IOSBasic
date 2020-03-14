//
//  WorldCupViewController.swift
//  CampeoesCopas
//
//  Created by Ivan Costa on 29/02/20.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var tableView: UITableView!

    var worldCup: WorldCup!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = worldCup.winner;
        
        ivWinner.image = UIImage(named: worldCup.winner)
        ivVice.image = UIImage(named: worldCup.vice)
        lbScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
        lbWinner.text = worldCup.winner
        lbVice.text = worldCup.vice
        
    }

}
extension WorldCupViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let match = worldCup.matches[indexPath.section]
        let game = match.games[indexPath.row]
               
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        cell.prepare(with: game)
               
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        return match.stage
    }
   
}
