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
            ZStack {
                // Light grey background for the whole TabView
                Color.gray.opacity(0.1) // Light grey background
                    .ignoresSafeArea()

                TabView {
                    // Home Tab
                    HomeView().tabItem {
                        Label("Home", systemImage: "house")
                    }
                    
                    // Library Tab
                    LibraryView().tabItem {
                        Label("Library", systemImage: "books.vertical.fill")
                    }

                    // Book Store Tab
                    BookStoreView().tabItem {
                        Label("Book Store", systemImage: "bag.fill")
                    }
                    
                    // Audiobooks Tab
                    AudiobooksView().tabItem {
                        Label("Audiobooks", systemImage: "headphones")
                    }

                    // Search Tab
                    SearchView(searchText: $searchText).tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                }
                .accentColor(.black)  // Set the active tab color to black
                .navigationTitle("Search")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Search")
                                .font(.system(.title, design: .serif)) // Apply serif font here
                                .fontWeight(.bold)
                            Spacer()
                        }
                    }
                }
                .searchable(text: $searchText, prompt: "Books & Audiobooks")
                
            }
        }
        .padding()
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Welcome to the Home Tab")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct LibraryView: View {
    var body: some View {
        VStack {
            Image(systemName: "books.vertical.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Explore Our Library")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct BookStoreView: View {
    var body: some View {
        VStack {
            Image(systemName: "bag.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Browse Our Book Store")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct AudiobooksView: View {
    var body: some View {
        VStack {
            Image(systemName: "headphones")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Listen to Audiobooks")
                .font(.title)
                .padding()
        }
        .padding()
    }
}

struct SearchView: View {
    @Binding var searchText: String

    var body: some View {
        VStack {
            
            List {
                Text("Trending")
                    .fontWeight(.bold)
                    .font(.system(size: 20, design: .serif))  // Increased font size to 24

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

            NavigationLink(destination: ScrollView {
                VStack(spacing: 20) {
                    Text("Search Results:")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)

                    Text("We’ve carefully compiled a list of results based on your search. Each item has been selected to match the keywords and preferences you’ve provided. Whether you’re looking for a specific book, author, or topic, we strive to present a comprehensive selection that aligns with your search query. Our results include both books and audiobooks, ensuring you can find content in the format that best suits your needs.")

                    Text("You’ll notice that the results are organized with the most relevant items at the top, followed by related content. We recommend reviewing the descriptions and details to find the perfect match for your interests. If you want to narrow your search further, feel free to apply filters based on categories, genres, or even publication dates.")

                    Text("If the current search results don't fully meet your expectations, there are a few tips to improve your experience:\n1. Refine your search terms: Use more specific keywords to narrow down the list.\n2. Apply filters: Explore filters such as genre, price range, or availability to find exactly what you need.\n3. Check for related recommendations: At the bottom of the page, you may find suggestions for other relevant books or audiobooks that might interest you.")

                    Text("We understand that finding the right content can be a process, so don't hesitate to adjust your search parameters. If you still don’t find what you're looking for, our collection is continuously updated, so please check back later for new results.\n\nHappy exploring, and we hope you find the perfect book or audiobook to dive into!")
                        .padding(.bottom, 20)
                }
                .padding(.horizontal, 20)
            }) {
                HStack {
                    Text("Learn more about search results")
                        .foregroundColor(.gray)  // Grey color
                    
                    Image(systemName: "chevron.right") // Add the > arrow
                        .foregroundColor(.gray) // Grey color for the arrow
                    Spacer()
                }
                .padding(.bottom, 60)
                .padding(.leading, 20).font(.caption)
            }
        }
    }
}

#Preview {
    ContentView()
}

