import UIKit

class UserDefaultsViewController: UIViewController {

    private let constUserDefaultsTextField = "UserDefaultsTextField"

    @IBOutlet var userDefaultsTextField: UITextField!

    @IBAction func saveUserDefaultsString(_ sender: Any) {
        UserDefaults.standard.set(userDefaultsTextField.text, forKey: constUserDefaultsTextField)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UserDefaults"
        setUserDefaultsTextField()
    }

    private func setUserDefaultsTextField() {
        userDefaultsTextField.text = UserDefaults.standard.string(forKey: constUserDefaultsTextField)
    }
}
