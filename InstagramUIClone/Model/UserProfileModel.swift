//
//  UserProfileModel.swift
//  InstagramUIClone
//
//  Created by Agung Nawawi on 04/12/23.
//

import Foundation

struct UserProfileModel: Identifiable, Hashable {
    let id: UUID = .init()
    let image: String
    let name: String
}

var userProfile:[UserProfileModel] = [
        UserProfileModel(image: "profile1", name: "John Doe"),
        UserProfileModel(image: "profile3", name: "Alice"),
        UserProfileModel(image: "profile4", name: "Bob"),
        UserProfileModel(image: "profile5", name: "Charlie"),
        UserProfileModel(image: "profile6", name: "David"),
        UserProfileModel(image: "profile7", name: "Eva"),
        UserProfileModel(image: "profile8", name: "Frank"),
        UserProfileModel(image: "profile9", name: "Grace"),
        UserProfileModel(image: "profile10", name: "Henry"),
        UserProfileModel(image: "profile2", name: "Jane Doe")
]

