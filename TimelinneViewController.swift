//
//  TimelinneViewController.swift
//  DotsSwiftTwitterClient
//
//  Created by saekof on 2017-03-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

import UIKit

class TimelinneViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var tweets: [Tweet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        LoginCommunicator().login() { isSuccess in
            switch isSuccess {
            case false:
                print("ログイン失敗")
            case true:
                print("ログイン成功")
                
                TwitterCommunicator().getTimeline() { [weak self] data, error in
                    
                    if let error = error {
                        print(error)
                        return
                    }
                    
                    let timelineParser = TimelineParser()
                    let tweets = timelineParser.parse(data: data!)
                    self?.tweets = tweets
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.myTableView.reloadData()
                    }
                }
            }
        }
    }
    
}

extension TimelinneViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
}

extension TimelinneViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell") as! TweetTableViewCell
        
        cell.fill(tweet: tweets[indexPath.row])
        
        return cell
    }
    
}
