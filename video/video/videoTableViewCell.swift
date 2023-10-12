//
//  videoTableViewCell.swift
//  video
//
//  Created by Imcrinox Mac on 10/12/1444 AH.
//

import UIKit

struct Video {
    let image : String
    let title : String
    let source : String
}

class videoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImageScreenShot: UIImageView!
    @IBOutlet weak var videoMovieTitle: UILabel!
    @IBOutlet weak var videoSourceTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
