import SwiftUI

public struct TextEditorWithPlaceholder: View {
    
    @State private var text = ""
    private let placeholder: String
    
    public init(
        text: String = "",
        placeholder: String
    ) {
        
        self.text = text
        self.placeholder = placeholder
    }
    
    public var body: some View {
        TextEditor(text: $text)
            .overlay(alignment: .topLeading) {
                Text(placeholder)
                    .foregroundColor(Color(uiColor: .placeholderText))
                    .multilineTextAlignment(.leading)
                    .opacity(text.isEmpty ? 1 : 0)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 4)
                    .allowsHitTesting(false)
            }
    }
}
