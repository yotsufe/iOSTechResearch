import UIKit

class MainViewController: UIViewController {

    @IBAction func xibMenuButton(_ sender: Any) {
        openXibMenu()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Main"
    }

    func openXibMenu() {
        let nc = self.navigationController
        nc?.pushViewController(XibMenuViewController(), animated: true)
    }
}
