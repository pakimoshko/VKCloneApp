//
//  FeedViewController.swift
//  VK
//
//  Created by Dmitrii Buiskii on 3/22/24.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        cell.postName.text = posts[indexPath.row].name
        cell.postDate.text = posts[indexPath.row].date
        cell.postText.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        
        
        return cell
    }
    
    @IBOutlet weak var table: UITableView!
    
    
    
    var posts: [Post] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        APIManager.shared.getPost(id: "post1", imageID: "IMG_6122"){res1 in
            self.posts.append(res1!)
            APIManager.shared.getPost(id: "post2", imageID: "IMG_6123"){res2 in
                self.posts.append(res2!)
                APIManager.shared.getPost(id: "post3", imageID: "IMG_6124"){res3 in
                    self.posts.append(res3!)
                    DispatchQueue.main.async{
                        self.table.reloadData()
                    }
                }
                
                
            }
            
            
        }
        
        
        
        
        
        
        
        
    }
}
