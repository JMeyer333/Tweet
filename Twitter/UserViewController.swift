//
//  UserViewController.swift
//  Twitter
//
//  Created by Joanna Meyer on 2/21/16.
//  Copyright © 2016 Joanna Meyer. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screennameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var followersCountLabel: UILabel!
    
    var tweet: Tweet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        thumbImageView.setImageWithURL(NSURL(string: (tweet.user?.profileImageUrl!)!)!)
        nameLabel.text = tweet.user!.name!
        screennameLabel.text = "@\(tweet.user!.screenname!)"
        descriptionLabel.text = tweet.user?.tagline!
        if(tweet.user?.followers! > 999 && tweet.user?.followers! < 1000000){
            followersCountLabel.text = String("\(Double((tweet.user?.followers!)!/1000))k")
        }else if tweet.user?.followers! >= 1000000 {
            followersCountLabel.text = String("\(Double((tweet.user?.followers!)!/1000000))M")
        }else{
            followersCountLabel.text = String(tweet.user?.followers!)
        }
        
        
        followingCountLabel.text = String(tweet!.user!.following!)
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
