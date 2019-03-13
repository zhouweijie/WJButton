//
//  ViewController.swift
//  WJButtonDemo
//
//  Created by zhouweijie on 2019/1/14.
//  Copyright © 2019 zhouweijie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //标题在上
        let titleInTop = WJButton.fixedSizeButton(frame: CGRect(x: 50, y: 50, width: 100, height: 70), titlePosition: .top, contentSpacing: 0)
        titleInTop.setImage(UIImage(named: "video_icon"), for: .normal)
        titleInTop.setTitle("titleInTop", for: .normal)
        titleInTop.frame = CGRect(origin: CGPoint(x: 50, y: 50), size: CGSize(width: 200, height: 50))
        titleInTop.backgroundColor = UIColor.gray
        self.view.addSubview(titleInTop)
        //标题在下
        let titleInBottom = WJButton.fixedSizeButton(frame: CGRect(origin: CGPoint(x: 50, y: 120), size: CGSize(width: 200, height: 50)), titlePosition: .bottom, contentSpacing: 0)
        titleInBottom.setImage(UIImage(named: "video_icon"), for: .normal)
        titleInBottom.setTitle("titleInBottom", for: .normal)
        titleInBottom.backgroundColor = UIColor.gray
        self.view.addSubview(titleInBottom)
        //标题在左
        let titleInLeft = WJButton.fixedSizeButton(frame: CGRect(origin: CGPoint(x: 50, y: 190), size: CGSize(width: 200, height: 50)), titlePosition: .left, contentSpacing: 0)
        titleInLeft.setImage(UIImage(named: "video_icon"), for: .normal)
        titleInLeft.setTitle("titleInLeft", for: .normal)
        titleInLeft.backgroundColor = UIColor.gray
        self.view.addSubview(titleInLeft)
        //标题在右
        let titleInRight = WJButton.fixedSizeButton(frame: CGRect(origin: CGPoint(x: 50, y: 260), size: CGSize(width: 200, height: 50)), titlePosition: .right, contentSpacing: 0)
        titleInRight.setImage(UIImage(named: "video_icon"), for: .normal)
        titleInRight.setTitle("titleInRight", for: .normal)
        titleInRight.backgroundColor = UIColor.gray
        self.view.addSubview(titleInRight)
        //使用固有内容大小
        let useIntrinsicSize = WJButton.intrinsicSizeButton(titlePosition: .bottom, padding: .zero, contentSpacing: 0)
        useIntrinsicSize.setImage(UIImage(named: "video_icon"), for: .normal)
        useIntrinsicSize.setTitle("useIntrinsicSize", for: .normal)
        useIntrinsicSize.frame = CGRect(origin: CGPoint(x: 50, y: 330), size: useIntrinsicSize.intrinsicContentSize)
        useIntrinsicSize.useIntrinsicSize = true
        useIntrinsicSize.backgroundColor = UIColor.gray
        self.view.addSubview(useIntrinsicSize)
        //增加上下左右边距
        let contentEdgeInsets = WJButton.intrinsicSizeButton(titlePosition: .bottom, padding: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10), contentSpacing: 0)
        contentEdgeInsets.setImage(UIImage(named: "video_icon"), for: .normal)
        contentEdgeInsets.setTitle("ContentEdgeInsets", for: .normal)
        contentEdgeInsets.frame = CGRect(origin: CGPoint(x: 50, y: 380), size: useIntrinsicSize.intrinsicContentSize)
        contentEdgeInsets.backgroundColor = UIColor.gray
        self.view.addSubview(contentEdgeInsets)
        //增加文字和图片间距
        let contentSpacing = WJButton.intrinsicSizeButton(titlePosition: .bottom, padding: .zero, contentSpacing: 20)
        contentSpacing.setImage(UIImage(named: "video_icon"), for: .normal)
        contentSpacing.setTitle("contentSpacing", for: .normal)
        contentSpacing.backgroundColor = UIColor.gray
        contentSpacing.frame = CGRect(origin: CGPoint(x: 50, y: 450), size: contentSpacing.intrinsicContentSize)
        self.view.addSubview(contentSpacing)
        //图片偏移
        let imageOffset = WJButton.fixedSizeButton(frame: .zero, titlePosition: .bottom, contentSpacing: 0)
        imageOffset.setImage(UIImage(named: "video_icon"), for: .normal)
        imageOffset.setTitle("imageOffset", for: .normal)
        imageOffset.frame = CGRect(origin: CGPoint(x: 50, y: 520), size: CGSize(width: 200, height: 50))
        imageOffset.imageOffset = 80.0
        imageOffset.backgroundColor = UIColor.gray
        self.view.addSubview(imageOffset)
        //标题偏移
        let titleOffset = WJButton.fixedSizeButton(frame: .zero, titlePosition: .bottom, contentSpacing: 0)
        titleOffset.setImage(UIImage(named: "video_icon"), for: .normal)
        titleOffset.setTitle("titleOffset", for: .normal)
        titleOffset.frame = CGRect(origin: CGPoint(x: 50, y: 590), size: CGSize(width: 200, height: 50))
        titleOffset.titleOffset = 30.0
        titleOffset.backgroundColor = UIColor.gray
        self.view.addSubview(titleOffset)
        
        //测试修改内容后自动适应功能
        testButton = contentEdgeInsets
    }
    
    var testButton: WJButton?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        testButton?.setTitle("testtesttesttesttesttesttest", for: .normal)
    }

}

