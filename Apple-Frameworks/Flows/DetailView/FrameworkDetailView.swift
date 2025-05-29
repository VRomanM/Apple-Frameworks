//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Роман Вертячих on 29.05.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.darkGray, .gray]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding()
                
                Spacer()
                FrameworkTitleView(framework: framework)
                Text(framework.description)
                    .font(.body)
                    .padding()
                Spacer()
                Button {
                    
                } label: {
                    AFButton(title: "Learn More")
                }
            }
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}

struct FrameworkDescriptionView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                Text("Learn More")
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
