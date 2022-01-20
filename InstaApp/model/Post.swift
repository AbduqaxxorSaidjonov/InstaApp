//
//  Post.swift
//  InstaApp
//
//  Created by Abduqaxxor on 19/1/22.
//

import Foundation

class Post{
    var fullname: String? = ""
    var user_img: String? = ""
    var post_img1: String? = ""
    var post_img2: String? = ""
    
    init(fullname: String, user_img: String, post_img1: String, post_img2: String){
        self.fullname = fullname
        self.user_img = user_img
        self.post_img1 = post_img1
        self.post_img2 = post_img2
    }
}
