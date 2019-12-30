//
//  ViewController.swift
//  HappyNewYear
//
//  Created by Hoang Tung on 12/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var soundPlayer: AVAudioPlayer?
    var timer: Timer!
    
    var pointX: CGFloat = 0
    var pointY: CGFloat = 44
    
    let bigView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    let screenScrollView: AboveAllScrollView = {
        let scrollView = AboveAllScrollView()
        scrollView.backgroundColor = .white
        scrollView.alwaysBounceHorizontal = false
        scrollView.alwaysBounceVertical = false
        return scrollView
    }()
    
    let introView: IntroView = {
        let view = IntroView()
        return view
    }()
    
    let lecturersView: LecturersView = {
        let view = LecturersView()
        return view
    }()
    
    let lecturerAvatarView: LecturerAvatarView = {
        let view = LecturerAvatarView()
        return view
    }()
    
    let classView: ClassView = {
        let view = ClassView()
        return view
    }()
    
    let classPictureView: ClassPictureView = {
        let view = ClassPictureView()
        return view
    }()
    
    let timeView: TimeView = {
        let view = TimeView()
        return view
    }()
    
    let timePictureView: TimePictureView = {
        let view = TimePictureView()
        return view
    }()
    
    let studentView: StudentView = {
        let view = StudentView()
        return view
    }()
    
    let studentPictureView: StudentPictureView = {
        let view = StudentPictureView()
        return view
    }()
    
    let student2PictureView: StudentPicture2View = {
        let view = StudentPicture2View()
        return view
    }()
    
    let happyView: NewYearView = {
        let view = NewYearView()
        return view
    }()
    
    let plus1View: PlusView = {
        let view = PlusView()
        view.changeBackground(named: "wallpaper-2")
        return view
    }()
    
    let plus2View: PlusView = {
        let view = PlusView()
        view.changeBackground(named: "wallpaper-2")
        return view
    }()
    
    let plus3View: PlusView = {
        let view = PlusView()
        view.changeBackground(named: "wallpaper-3")
        return view
    }()
    
    let plus4View: PlusView = {
        let view = PlusView()
        view.changeBackground(named: "wallpaper-3")
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        playSound()
        
        view.addSubview(screenScrollView)
        screenScrollView.addSubview(bigView)
        bigView.addSubview(introView)
        bigView.addSubview(lecturersView)
        bigView.addSubview(lecturerAvatarView)
        bigView.addSubview(classView)
        bigView.addSubview(classPictureView)
        bigView.addSubview(timeView)
        bigView.addSubview(timePictureView)
        bigView.addSubview(studentView)
        bigView.addSubview(studentPictureView)
        bigView.addSubview(student2PictureView)
        bigView.addSubview(happyView)
        bigView.addSubview(plus1View)
        bigView.addSubview(plus2View)
        bigView.addSubview(plus3View)
        bigView.addSubview(plus4View)
        
        setupLayout()
        screenScrollView.contentOffset = CGPoint(x: 0, y: 44)
        
        introView.runTimer()
        
        UIView.animate(withDuration: 2, delay: 5, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 417, y: 938)
        })
        
        UIView.animate(withDuration: 2, delay: 7, options: [], animations: {
            self.lecturersView.runTimer()
        })
        
        UIView.animate(withDuration: 2, delay: 10, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 417, y: 44)
        })
        
        UIView.animate(withDuration: 2, delay: 15, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 834, y: 1839)
            self.classView.runTimer()
        })
        
        UIView.animate(withDuration: 2, delay: 22, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 417, y: 1839)
        })
        
        UIView.animate(withDuration: 2, delay: 30, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 834, y: 938)
        })
        
        UIView.animate(withDuration: 2, delay: 38, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 834, y: 44)
        })
        
        UIView.animate(withDuration: 2, delay: 46, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 1251, y: 44)
        })
        
        UIView.animate(withDuration: 2, delay: 54, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 1668, y: 938)
        })
        
        UIView.animate(withDuration: 2, delay: 62, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 1251, y: 1839)
        })
        
        UIView.animate(withDuration: 2, delay: 70, options: [], animations: {
            self.screenScrollView.contentOffset = CGPoint(x: 1251, y: 936)
        })
        
        soundPlayer?.stop()
    }

    func setupLayout() {
        screenScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        screenScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        screenScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        screenScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        bigView.topAnchor.constraint(equalTo: screenScrollView.topAnchor, constant: 0).isActive = true
        bigView.leadingAnchor.constraint(equalTo: screenScrollView.leadingAnchor, constant: 0).isActive = true
        bigView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX * 5).isActive = true
        bigView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY * 5).isActive = true
        
        introView.topAnchor.constraint(equalTo: bigView.topAnchor, constant: 0).isActive = true
        introView.leadingAnchor.constraint(equalTo: bigView.leadingAnchor, constant: 0).isActive = true
        introView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        introView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        lecturersView.topAnchor.constraint(equalTo: introView.bottomAnchor, constant: 3).isActive = true
        lecturersView.leadingAnchor.constraint(equalTo: introView.trailingAnchor, constant: 3).isActive = true
        lecturersView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        lecturersView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        lecturerAvatarView.topAnchor.constraint(equalTo: introView.topAnchor, constant: 0).isActive = true
        lecturerAvatarView.leadingAnchor.constraint(equalTo: introView.trailingAnchor, constant: 3).isActive = true
        lecturerAvatarView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        lecturerAvatarView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        classView.topAnchor.constraint(equalTo: lecturersView.bottomAnchor, constant: 3).isActive = true
        classView.leadingAnchor.constraint(equalTo: lecturersView.trailingAnchor, constant: 3).isActive = true
        classView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        classView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        classPictureView.topAnchor.constraint(equalTo: lecturerAvatarView.topAnchor, constant: 0).isActive = true
        classPictureView.leadingAnchor.constraint(equalTo: lecturerAvatarView.trailingAnchor, constant: 3).isActive = true
        classPictureView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        classPictureView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        timeView.topAnchor.constraint(equalTo: lecturersView.topAnchor, constant: 0).isActive = true
        timeView.leadingAnchor.constraint(equalTo: lecturersView.trailingAnchor, constant: 3).isActive = true
        timeView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        timeView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        timePictureView.topAnchor.constraint(equalTo: lecturersView.bottomAnchor, constant: 3).isActive = true
        timePictureView.leadingAnchor.constraint(equalTo: lecturersView.leadingAnchor, constant: 0).isActive = true
        timePictureView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        timePictureView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        studentView.topAnchor.constraint(equalTo: classPictureView.topAnchor, constant: 0).isActive = true
        studentView.leadingAnchor.constraint(equalTo: classPictureView.trailingAnchor, constant: 3).isActive = true
        studentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        studentView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        studentPictureView.topAnchor.constraint(equalTo: classView.topAnchor, constant: 0).isActive = true
        studentPictureView.leadingAnchor.constraint(equalTo: classView.trailingAnchor, constant: 3).isActive = true
        studentPictureView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        studentPictureView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        happyView.topAnchor.constraint(equalTo: timeView.topAnchor, constant: 0).isActive = true
        happyView.leadingAnchor.constraint(equalTo: timeView.trailingAnchor, constant: 3).isActive = true
        happyView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        happyView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        student2PictureView.topAnchor.constraint(equalTo: happyView.topAnchor, constant: 0).isActive = true
        student2PictureView.leadingAnchor.constraint(equalTo: happyView.trailingAnchor, constant: 3).isActive = true
        student2PictureView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        student2PictureView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        plus1View.topAnchor.constraint(equalTo: studentView.topAnchor, constant: 0).isActive = true
        plus1View.leadingAnchor.constraint(equalTo: studentView.trailingAnchor, constant: 3).isActive = true
        plus1View.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        plus1View.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        plus2View.topAnchor.constraint(equalTo: introView.bottomAnchor, constant: 3).isActive = true
        plus2View.leadingAnchor.constraint(equalTo: introView.leadingAnchor, constant: 0).isActive = true
        plus2View.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        plus2View.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        plus3View.topAnchor.constraint(equalTo: plus2View.bottomAnchor, constant: 3).isActive = true
        plus3View.leadingAnchor.constraint(equalTo: plus2View.leadingAnchor, constant: 0).isActive = true
        plus3View.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        plus3View.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
        
        plus4View.topAnchor.constraint(equalTo: student2PictureView.bottomAnchor, constant: 3).isActive = true
        plus4View.leadingAnchor.constraint(equalTo: student2PictureView.leadingAnchor, constant: 0).isActive = true
        plus4View.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
        plus4View.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
    }
    
    func playSound() {
        let path = Bundle.main.path(forResource: "HappyNewYearGuitarcover-SunghaJung-2865451.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
        } catch {
            print("Error!")
        }
    }
}

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    if ((cString.count) != 6) {
        return UIColor.gray
    }

    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)

    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
