//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Роман Вертячих on 29.05.2025.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test title")
}
