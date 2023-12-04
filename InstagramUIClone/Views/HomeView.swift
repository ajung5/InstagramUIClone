//
//  HomeView.swift
//  InstagramUIClone
//
//  Created by Agung Nawawi on 03/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Header()
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}

struct Header: View {
    var body: some View {
        HStack {
            Image("iglogo")
            
            Spacer()
            
            HStack(spacing: 20) {
                Image(systemName: "plus.app")
                    .font(.title)
                Image(systemName: "heart")
                    .font(.title)
                Image("messenger")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}
