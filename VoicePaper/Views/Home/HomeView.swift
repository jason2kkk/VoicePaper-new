import SwiftUI

struct HomeView: View {
    @EnvironmentObject var contentManager: ContentManager
    @State private var items: [ContentItem] = []
    @State private var selectedTab: ContentTab = .saved
    
    var body: some View {
        VStack(spacing: 0) {
            // 顶部栏
            HomeHeaderView()
                .padding(.top, 8)
            
            // 分类标签
            TabSelectionView(selectedTab: $selectedTab)
                .padding(.top, 16)
            
            // 内容列表
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(items) { item in
                        ContentItemView(
                            content: item.asBookContent,
                            contentItem: item
                        )
                    }
                }
                .padding(.horizontal)
                .padding(.top, 24)
            }
        }
    }
}