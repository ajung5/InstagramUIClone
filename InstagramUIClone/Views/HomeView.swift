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
            
            ScrollView(.vertical) {
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "cookie", description: "asd")
            }
            
            TabBar()
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

// MARK: Post
struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile1")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text("John Doe")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image(systemName: "ellipsis")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

// MARK: Post Content
struct PostContent: View {
    
    var image: String = "macarons"
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
            
            HStack {
                HStack(spacing: 10) {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                }
                
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

// MARK: Post
struct Post: View {
    
    var image: String = "profile1"
    var description: String = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader()
            PostContent(image: image)
            
            Text("Liked by Ajung and 35 others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7) {
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 6)
        }
    }
}

// MARK: Tab Bar
struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
            
            HStack (spacing: 55) {
                Image("home")
                Image("search")
                Image("media")
                Image("cart")
                Image("profile1")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 10)
        }
    }
}
