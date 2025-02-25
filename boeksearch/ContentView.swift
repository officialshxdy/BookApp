import SwiftUI

struct zoekItem: Identifiable {
    var id: UUID
    var naam: String = ""
    var magnifyingglass = "magnifyingglass"
}

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            TabView {
                Text("Home").tabItem {
                    Label("Home", systemImage: "house")
                }
                Text("Library").tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
                Text("Book Store").tabItem {
                    Label("Book Store", systemImage: "bag.fill")
                }
                Text("Audiobooks").tabItem {
                    Label("Audiobooks", systemImage: "headphones")
                }
                VStack {
                    
                    List {
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("gratis")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("will packer")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("susan morrison")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("the lexington letter")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("the body keeps the score")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("never split the difference")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("how to win friends & influence people")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("the 48 laws of power")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("if she knew")
                        }
                        HStack {
                            Image(systemName: "magnifyingglass").foregroundColor(.gray)
                            Text("the you you are")
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    Text("Learn more about search results")
                }.tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            }
            .accentColor(.black)  // Set the active tab color to black
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Books & Audiobooks") // Microphone will appear here when the field is tapped
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

