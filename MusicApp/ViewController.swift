//
//  ViewController.swift
//  MusicApp
//
//  Created by 寺島 洋平 on 2019/04/17.
//  Copyright © 2019年 YoheiTerashima. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    var cymbalPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        do {
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
    
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do {
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
    }
    
    
}

