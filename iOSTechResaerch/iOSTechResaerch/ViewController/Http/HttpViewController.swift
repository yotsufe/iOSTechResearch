import UIKit

class HttpViewController: UIViewController {

    @IBAction func qiitaButton(_ sender: Any) {
        let nc = self.navigationController
        nc?.pushViewController(QiitaListViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HTTP"
    }
}
