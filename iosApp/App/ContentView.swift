//import SwiftUI
//import Shared
//import KMPNativeCoroutinesAsync
//import KMPNativeCoroutinesCore
//
//
//@MainActor
//final class ContentViewModel: ObservableObject {
//    @Published var greetings: Array<String> = []
//    
//    func startObserving() {
//        Task {
//            do {
//                let sequence = asyncSequence(for: Greeting().greet())
//                for try await phrase in sequence {
//                    self.greetings.append(phrase)
//                }
//            } catch {
//                print("Failed with error: \(error)")
//            }
//        }
//    }
//}
//
//struct ContentView: View {
//    @ObservedObject private(set) var vm: ContentViewModel
//    
//
//    var body: some View {
//        ListView(phrases: vm.greetings)
//            .onAppear { vm.startObserving() }
//    }
//    
//    struct ListView: View {
//        let phrases: Array<String>
//
//        var body: some View {
//            List(phrases, id: \.self) {
//                Text($0)
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(vm: .init())
//    }
//}
