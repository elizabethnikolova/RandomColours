//
//  ColoursTableViewController.swift
//  RandomColours
//
//  Created by Elizabeth Nikolova on 11/23/22.
//

import UIKit

class ColoursTableViewController: UIViewController {
    
    var colours: [UIColor] = []
    
    enum Cells {
        static let colourCell = "ColourCell"
    }
    
    enum Segues {
        static let toDetail = "ToColoursDetailViewController"
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColours()
    }
    
    func addRandomColours() {
        for _ in 0..<100 {
            colours.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController = segue.destination as! ColoursDetailViewController
        destViewController.colour = sender as? UIColor
    }

}

extension ColoursTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colourCell) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colours[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colour = colours[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: colour)
    }
}
