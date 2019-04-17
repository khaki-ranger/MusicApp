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
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    var cymbalPlayer = AVAudioPlayer()
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer = AVAudioPlayer()
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
    }
    
    @IBAction func guitar(_ sender: Any) {
        soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
    }
    
    @IBAction func play(_ sender: Any) {
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
    }
    
}

