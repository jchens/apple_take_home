//
//  ViewController.swift
//  BookStore
//

import UIKit

// Didn't end up using this due to my approach
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let books = DataLoader().bookData
        print(books)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


