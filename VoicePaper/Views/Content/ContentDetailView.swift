import SwiftUI

struct ContentDetailView: View {
    let content: BookContent
    let contentItem: ContentItem
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(content.title)
                    .font(.title)
                    .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}