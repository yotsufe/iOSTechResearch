import UIKit
import Alamofire
import SwiftyJSON

class QiitaListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "QiitaList"

        view.addSubview(tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self

        getQiitaArticles()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    let items = ["one", "two", "three", "four"]

    func getQiitaArticles() {
        AF.request("https://qiita.com/api/v2/items", method: .get, parameters: nil, encoding: JSONEncoding.default)
            .responseJSON { [self] response in
                let data = JSON(response.value as Any)
                print("data: \(data)")
                data.forEach { (_, data) in
                    let article: [String: String?] = [
                        "title": data["title"].string,
                        "userId": data["user"]["id"].string
                    ]
                    print("###article: \(article)")
                }
            }
    }
}
