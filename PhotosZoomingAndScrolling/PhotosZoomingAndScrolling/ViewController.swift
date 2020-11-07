//
//  ViewController.swift
//  PhotosZoomingAndScrolling
//
//  Created by Игорь Пенкин on 07.11.2020.
//

import UIKit

class ViewController: UIViewController {

    var fullScreenScrollView: FullScreenScrollView!
    let image = UIImage(named: "image5")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenScrollView = FullScreenScrollView(frame: view.bounds)
        view.addSubview(fullScreenScrollView)
        setupFullScreenScrollView()
        self.fullScreenScrollView.set(image: image)
    }
    
    func setupFullScreenScrollView() {
        fullScreenScrollView.translatesAutoresizingMaskIntoConstraints = false
        fullScreenScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        fullScreenScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        fullScreenScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        fullScreenScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
}

