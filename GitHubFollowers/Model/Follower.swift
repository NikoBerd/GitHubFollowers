//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Niko on 18.03.23.
//

import Foundation

struct Follower: Codable, Hashable {
  var login: String
  var avatarUrl: String
}
