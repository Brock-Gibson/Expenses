//
//  ExpenseViewController.swift
//  Expenses
//
//  Created by Brock Gibson on 1/22/19.
//  Copyright © 2019 Brock Gibson. All rights reserved.
//

import UIKit

struct Expense {
    var title: String
    var amount: Double
    var date: Date?
}

class ExpenseViewController: UITableViewController {
    
    @IBOutlet var expenseTableView: UITableView!
    
    var expenses = [Expense]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "MMMM d, yyyy H:mm"
        
        expenses = [
            Expense(title: "Dinner", amount: 32.50, date: dateFormatter.date(from: "June 1, 2018 18:30")),
            Expense(title: "Office Supplies", amount: 59.34, date: dateFormatter.date(from: "May 30, 2018 12:17")),
            Expense(title: "Uber", amount: 16.23, date: dateFormatter.date(from: "May 30, 2018 11:43")),
            Expense(title: "Coffee", amount: 3.95, date: dateFormatter.date(from: "May 29, 2018 8:45"))]

        // Do any additional setup after loading the view.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)

        let dateFormatter = DateFormatter()
        
        if let cell = cell as? ExpensesCell {
            cell.titleLabel.text = expenses[indexPath.row].title
            cell.amountLabel.text = "$" + String(expenses[indexPath.row].amount)
            cell.dateLabel.text = dateFormatter.string(from: expenses[indexPath.row].date!)
        }
        
        return cell
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
