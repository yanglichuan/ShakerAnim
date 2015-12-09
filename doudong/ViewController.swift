//
//  ViewController.swift
//  doudong
//
//  Created by  yanglc on 15/12/8.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        var longpressG = UILongPressGestureRecognizer(target: self, action: "longpress:")
        
        image.addGestureRecognizer(longpressG)
        
        
        
        
        
        
        
        
        
    }
    
    
    @IBOutlet weak var image: UIImageView!
    
    func longpress(cc:UILongPressGestureRecognizer){
        
        if(cc.state == UIGestureRecognizerState.Began){
            var anim = CAKeyframeAnimation();
            anim.keyPath = "transform.rotation"
            anim.values = [angle2radian(-5), angle2radian(5),angle2radian(-5)]
            
            anim.repeatCount = MAXFLOAT
            anim.duration = 0.5;
            
            image.layer.addAnimation(anim, forKey: nil);
            
            
        }
        
        
        
    }
    
    
    func angle2radian(degreee:Int)->Double{
        
        return (Double(degreee) / 180.0) * M_PI;
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

