//
//  ViewController.swift
//  MentorBook
//
//  Created by Mac on 2021/02/02.
//

import UIKit

class ViewController: UIViewController {

    var mentorArray: [Mentor] = []
    var index: Int = 0
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //配列に要素を追加する(append)
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iphone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "Webs, WebD"))
        
        setUI()
    }
    
    //メンターの情報をLabelやImageViewに表示
    func setUI()
    {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }

    @IBAction func mae()
    {
        if index == 0{
            index = 0
        }
        else {
            index = index - 1
            setUI()
        }
    }

    @IBAction func tugi()
    {
        if index == 2{
            index = 2
        }
        else{
            index = index + 1
            setUI()
        }
    }
}

