import SwiftUI

struct AddContentView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var url: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("输入链接", text: $url)
                }
            }
            .navigationTitle("添加内容")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("取消") {
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("添加") {
                        dismiss()
                    }
                }
            }
        }
    }
}
