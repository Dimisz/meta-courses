import SwiftUI

struct ContentView: View {
    @State var inputValue: String = ""
    
    var body: some View {
        VStack {
            Text("Little Lemon Restaurant is a family")
                .fixedSize(horizontal: true, vertical: false)
                .font(.title)
                .foregroundColor(.gray)
                .background(Color.black)
                .padding()
                .background(Color.gray)
            Label("Lightning", systemImage: "bolt.fill")
        }
    }
}
