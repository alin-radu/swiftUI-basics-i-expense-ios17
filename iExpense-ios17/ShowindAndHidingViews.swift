import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Text("Second View")
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ShowindAndHidingViews: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}

#Preview {
    ShowindAndHidingViews()
}
