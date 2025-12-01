//
//  ViewController.swift
//  Goswami_Exam03
//
//  Created by Bhavesh on 11/20/25.
//

import UIKit

class GoswamiHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var GoswamiTVOL: UITableView!
    
    var sortedGames: [Game] = games.sorted { ($0.name ?? "") < ($1.name ?? "") }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Games"
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Games", style: .plain, target: nil, action: nil)
        
        GoswamiTVOL.delegate = self
        GoswamiTVOL.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedGames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "goswamiCell", for: indexPath)
        
        cell.textLabel?.text = sortedGames[indexPath.row].name
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goswamiDescriptionSegue" {
            let destinationVC = segue.destination as! GoswamiGameController
            
            if let indexPath = GoswamiTVOL.indexPathForSelectedRow {
                destinationVC.selectedGame = sortedGames[indexPath.row]
            }
        }
    }
}
