//
//  ViewController.swift
//  BounceBunny
//
//  Created by Administrator on 6/20/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgBunnyCenter: UIImageView!
    @IBOutlet weak var imgBunnyRight: UIImageView!
    @IBOutlet weak var imgBunnyLeft: UIImageView!
    @IBOutlet weak var sldFaster: UISlider!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var imgBunny: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hopAnimation: [UIImage] = [
            UIImage(named: "frame-1.png")!,
            UIImage(named: "frame-2.png")!,
            UIImage(named: "frame-3.png")!,
            UIImage(named: "frame-4.png")!,
            UIImage(named: "frame-5.png")!,
            UIImage(named: "frame-6.png")!,
            UIImage(named: "frame-7.png")!,
            UIImage(named: "frame-8.png")!,
            UIImage(named: "frame-9.png")!,
            UIImage(named: "frame-10.png")!,
            UIImage(named: "frame-11.png")!,
            UIImage(named: "frame-12.png")!,
            UIImage(named: "frame-13.png")!,
            UIImage(named: "frame-14.png")!,
            UIImage(named: "frame-15.png")!,
            UIImage(named: "frame-16.png")!,
            UIImage(named: "frame-17.png")!,
            UIImage(named: "frame-18.png")!,
            UIImage(named: "frame-19.png")!,
            UIImage(named: "frame-20.png")!,
            ]
        imgBunny.animationImages = hopAnimation
        imgBunny.animationDuration = 1.0
        imgBunny.animationRepeatCount = 6
        imgBunny.image = UIImage(named: "frame-1.png")
        
        imgBunnyLeft.animationImages = hopAnimation
        imgBunnyLeft.animationDuration = 1.0
        imgBunnyLeft.animationRepeatCount = 6
        imgBunnyLeft.image = UIImage(named: "frame-1.png")
        
        imgBunnyRight.animationImages = hopAnimation
        imgBunnyRight.animationDuration = 1.0
        imgBunnyRight.animationRepeatCount = 6
        imgBunnyRight.image = UIImage(named: "frame-1.png")
        
        imgBunnyCenter.animationImages = hopAnimation
        imgBunnyCenter.animationDuration = 1.0
        imgBunnyCenter.animationRepeatCount = 6
        imgBunnyCenter.image = UIImage(named: "frame-1.png")
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        imgBunny.animationDuration = 1.0 - Double(sldFaster.value)
        imgBunnyRight.animationDuration = 1.0 - Double(sldFaster.value)
        imgBunnyLeft.animationDuration = 1.0 - Double(sldFaster.value)
        imgBunnyCenter.animationDuration = 1.0 - Double(sldFaster.value)
        
        imgBunnyRight.startAnimating()
        imgBunnyLeft.startAnimating()
        imgBunnyCenter.startAnimating()
        imgBunny.startAnimating()
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        imgBunnyRight.startAnimating()
        imgBunnyLeft.startAnimating()
        imgBunnyCenter.startAnimating()
        imgBunny.startAnimating()
        
        for index in 1...20{
            var position = imgBunny.center
            position = CGPoint(x: position.x-0.5, y: position.y)
            imgBunny.center = position
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
