import Observation
import SwiftUI

@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct UsingStateWithClasses: View {
    @State private var user = User()

    var body: some View {
        Text("Your name is :\(user.firstName) \(user.lastName)")

        TextField("First name", text: $user.firstName)
        TextField("Last name", text: $user.lastName)
    }
}

#Preview {
    UsingStateWithClasses()
}
