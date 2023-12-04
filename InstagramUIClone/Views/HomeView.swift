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
            
            Stories()
            
            Divider()
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}

// MARK: Header
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

// MARK: Story
struct Story: View {
    
    var image: String = "profile1"
    var name: String = "John Doe"
    
    //var userProfile: UserProfileModel
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(
                        Circle()
                    )
            }
            .overlay(
                Circle()
                    .stroke(
                        LinearGradient(colors: [Color.red,
                                                Color.purple,
                                                Color.red,
                                                Color.orange,
                                                Color.yellow,
                                                Color.orange],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing),
                        lineWidth: 2.3
                    )
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
        
//        HStack {
//            ForEach(userProfile.image, id: \.self) { item in
//                Text
//            }
//        }
        
    }
}

// MARK: Stories
struct Stories: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                Story()
                Story(image: "profile2", name: "Bob")
                Story(image: "profile3", name: "Bob")
                Story(image: "profile4", name: "Charlie")
                Story(image: "profile5", name: "David")
                Story(image: "profile6", name: "Grace")
                Story(image: "profile7", name: "Nathalie")
                Story(image: "profile8", name: "Taylor Swift")
                Story(image: "profile9", name: "Ariel Tantrum")
                Story(image: "profile10", name: "Jane Doe")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}
