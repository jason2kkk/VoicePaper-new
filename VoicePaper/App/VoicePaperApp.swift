import SwiftUI

@main
struct VoicePaperApp: App {
    @StateObject private var contentManager = try! ContentManager()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(contentManager)
        }
    }
}