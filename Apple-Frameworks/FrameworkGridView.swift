//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Роман Вертячих on 22.05.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var frameworks = MockData.frameworks
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(frameworks.indices, id: \.self) { index in
                        FrameworkTitleView(name: frameworks[index].name, imageName: frameworks[index].imageName)
                    }
                }
            }
        }
    }
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90, alignment: .center)
                .aspectRatio(contentMode: .fit)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    FrameworkGridView()
}
