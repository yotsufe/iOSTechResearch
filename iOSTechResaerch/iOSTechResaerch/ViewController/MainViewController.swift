import UIKit

class MainViewController: UIViewController {

    @IBAction func xibMenuButton(_ sender: Any) {
        let nc = self.navigationController
        nc?.pushViewController(XibMenuViewController(), animated: true)
    }

    @IBAction func userDefaultsButton(_ sender: Any) {
        let nc = self.navigationController
        nc?.pushViewController(UserDefaultsViewController(), animated: true)
    }

    @IBAction func httpButton(_ sender: Any) {
        let nc = self.navigationController
        nc?.pushViewController(HttpViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
    }
}
