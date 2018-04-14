//
//  DetailViewController.swift
//  KeyedArchiverDemo
//
//  Created by Mohamed Sobhi  Fouda on 4/9/18.
//  Copyright © 2018 Mohamed Sobhi Fouda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK - q
    
//    var detailItem: NSDate? {
//        didSet {
//            // Update the view.
//            configureView()
//        }
//    }
    
    var detailItem: Person? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

