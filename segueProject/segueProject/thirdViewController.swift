//
//  thirdViewController.swift
//  segueProject
//
//  Created by Apple on 14/10/22.
//

import UIKit
import AVFoundation

class thirdViewController: UIViewController {
    var player  = AVAudioPlayer()

    
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    
    @IBAction func replay(_ sender: UIButton) {
        player.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
            let audiopath = Bundle.main.path(forResource: "moonlight-movement1", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
        }
        catch{
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
