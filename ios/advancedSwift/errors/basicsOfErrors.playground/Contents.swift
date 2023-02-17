import UIKit

enum FormValidationErrors: Error {
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}

func validateForm(username: String, password: String) throws{
    if password.count <= 6 {
        throw FormValidationErrors.passwordTooShort
    }
    else if password.isEmpty {
        throw FormValidationErrors.passwordEmpty
    }
    else if username.isEmpty {
        throw FormValidationErrors.usernameEmpty
    }
}

do {
    try validateForm(username: "John", password: "")
    print("Validation succeded")
}
catch FormValidationErrors.usernameEmpty {
    print("Username field cannot be empty")
}
catch FormValidationErrors.passwordEmpty {
    print("Password field should not be empty")
}
catch FormValidationErrors.passwordTooShort {
    print("Password should be longer than 6 characters.")
}
catch {
    print("Something went wrong")
}
