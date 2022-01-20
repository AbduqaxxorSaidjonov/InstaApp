//
//  HomeViewController.swift
//  InstaApp
//
//  Created by Abduqaxxor on 17/1/22.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var items: Array<Post> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
    }


    
    // MARK: - Navigation


    
    // MARK: - Method
    
    func initViews(){
        tableView.dataSource = self
        tableView.delegate = self
        setNavigationBar()
        
        items.append(Post(fullname: "Sherzod", user_img: "im_person1", post_img1: "im_post1",post_img2: "im_post1_2"))
        items.append(Post(fullname: "Malika", user_img: "im_person2", post_img1: "im_post2",post_img2: "im_post2_2"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "camera_ic")
        let send = UIImage(named: "near_me_ic")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    // MARK: - Action
    
    @objc func leftTapped(){
        
    }
    
    @objc func rightTapped(){
        
    }
    // MARK: - Table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.nameLabel.text = item.fullname
        cell.personImageView.image = UIImage(named: item.user_img!)
        cell.postView1.image = UIImage(named: item.post_img1!)
        cell.postView2.image = UIImage(named: item.post_img2!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
}
