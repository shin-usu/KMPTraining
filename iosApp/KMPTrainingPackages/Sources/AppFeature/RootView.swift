import SwiftUI
//import ComposableArchitecture

public struct RootView: View {
    public init() {}

    public var body: some View {
//        TabView {
//            HomeView(viewModel: homeViewModel)
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//            SearchView(viewModel: searchViewModel)
//                .tabItem {
//                    Image(systemName: "magnifyingglass")
//                    Text("Search")
//                }
//        }
//        .accentColor(Color("Accent", bundle: .module))
        Text("RootView")
    }
}

#Preview {
    Group {
        RootView()
            .preferredColorScheme(.light)
        RootView()
            .preferredColorScheme(.dark)
    }
}
