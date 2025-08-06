//
//  FrameworkDetailView.swift
//  FrameworksSwiftUI
//
//  Created by Isa Melsov on 13/3/25.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
        
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: (URL(string: framework.urlString) ??
                             URL(string: "www.apple.com")!))
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
