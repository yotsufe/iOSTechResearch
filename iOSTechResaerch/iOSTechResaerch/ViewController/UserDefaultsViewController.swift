import UIKit

class UserDefaultsViewController: UIViewController {

    private let constUserDefaultsTextField = "UserDefaultsTextField"

    private var alertController: UIAlertController!

    @IBOutlet var userDefaultsTextField: UITextField!

    @IBAction func saveUserDefaultsString(_ sender: Any) {
        UserDefaults.standard.set(userDefaultsTextField.text, forKey: constUserDefaultsTextField)
        alert(title: "Save", message: userDefaultsTextField.text ?? "")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UserDefaults"
        setUserDefaultsTextField()
    }

    private func setUserDefaultsTextField() {
        userDefaultsTextField.text = UserDefaults.standard.string(forKey: constUserDefaultsTextField)
    }

    private func alert(title:String, message:String) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Success", style: .default, handler: nil))
        present(alertController, animated: true)
    }

}
