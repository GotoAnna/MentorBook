//
//  Mentor.swift
//  MentorBook
//
//  Created by Mac on 2021/02/02.
//

import UIKit

class Mentor
{
    var name: String!
    var course: String!
    var imageName: String!
    
    //初期化
    init(name: String, imageName: String, course: String)
    {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    //メソッド
    func getImage() -> UIImage //戻り値
    {
        return UIImage(named: imageName)! //UIimageに変換
    }
}
