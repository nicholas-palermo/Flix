//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Nicholas Palermo on 2/16/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Labels for title
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        //Labels for synopsis
        synopsisLabel.text = movie["overview"] as? String
        
        //Labels for release date
        let releaseDate = movie["release_date"] as? String
        releaseDateLabel.text = "Release Date: \(releaseDate ?? "2020-01-01")"
        
        //Label for ratings
        let ratings = movie["vote_average"] as? Double
        ratingsLabel.text = "Ratings: \(ratings ?? 0.00)/10.0"
        
        //Image view for Poster
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        //Image view for backdrop
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    

/*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
 */
}
