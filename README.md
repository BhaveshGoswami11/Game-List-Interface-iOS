# Game-List-Interface-iOS

An iOS app built with UIKit that displays a list of games in a table view and navigates to a detail screen for the selected game.

## Features

- Displays a list of games sorted alphabetically by name.
- Tapping a game navigates to a detail screen showing more information.
- Uses a `UITableView` with `UITableViewDelegate` and `UITableViewDataSource`.
- Simple, storyboard-driven navigation via segues.

## Screens

### Home (Games List)
- Controller: `GoswamiHomeViewController`
- Shows a table view of games (`GoswamiTVOL`).
- Data is sourced from a global `games` collection and sorted into `sortedGames`.
- Cell reuse identifier: `goswamiCell`.
- Navigation title: “Games”.

### Game Detail
- Controller: `GoswamiGameController` (destination of segue).
- Receives a `selectedGame` from the home view controller during `prepare(for:sender:)`.
- Segue identifier: `goswamiDescriptionSegue`.

## Code Overview

### GoswamiHomeViewController

```swift
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
