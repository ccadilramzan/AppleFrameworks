//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by ADIL RAMZAN on 30/07/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack() {
            
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            FrameworkTitleView(framework:framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                //if let url = URL(string: framework.urlString) {
                    //UIApplication.shared.open(url)
                //}
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://apple.com")!)
            })

        }
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework)
//}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

