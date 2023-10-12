//
//  ViewController.swift
//  video
//
//  Created by Imcrinox Mac on 09/12/1444 AH.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var tableVideo: UITableView!
    
    var datas = [Video(image: "videoScreenshot01",
                       title: "Introduce 3DS Mario",
                       source: "Youtube - 06:32"),
                 Video(image: "videoScreenshot02",
                       title: "Emoji Among Us",
                       source: "Vimeo - 3:34"),
                 Video(image: "videoScreenshot03",
                       title: "Seals Documentary",
                       source: "Vine - 00:06"),
                 Video(image: "videoScreenshot04",
                       title: "Adventure Time",
                       source: "Youtube - 02:39"),
                 Video(image: "videoScreenshot05",
                       title: "Facebook HQ",
                       source: "Facebook - 10:20"),
                 Video(image: "videoScreenshot06",
                       title: "Lijiang Lugu Lake",
                       source: "Allen - 20:30")]
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableVideo.dataSource = self
        tableVideo.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playBackButton(_ sender: AnyObject) {
        
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        
        playerView = AVPlayer(url: URL(fileURLWithPath: path!))
        
        playerViewController.player = playerView
        
        self.present(playerViewController,animated: true) {
            self.playerViewController.player?.play()
        }
    }
}


extension ViewController: UITableViewDataSource , UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVideo.dequeueReusableCell(withIdentifier: "videoTableViewCell", for: indexPath) as! videoTableViewCell
        let video = datas[indexPath.row]
        cell.videoImageScreenShot.image = UIImage(named: video.image) ?? UIImage()
        cell.videoMovieTitle.text = video.title
        cell.videoSourceTime.text = video.source
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 300
    }

}
