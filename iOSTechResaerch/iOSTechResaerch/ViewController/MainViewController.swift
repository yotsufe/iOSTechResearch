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
        print("openXibMenu")

        let vc: UIViewController = XibMenuViewController()
        self.present(vc, animated: true, completion: nil)
    }
}
