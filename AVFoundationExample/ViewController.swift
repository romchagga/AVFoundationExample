//
//  ViewController.swift
//  AVFoundationExample
//
//  Created by macbook on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isPlaying = false
    
    var playButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "play.circle"), for: .normal)
        button.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConstrainst()
    }
    
    @objc func playButtonTapped() {
       
        if isPlaying {
            playButton.setImage(UIImage(systemName: "play.circle"), for: .normal)
            isPlaying = false
        }  else {
            playButton.setImage(UIImage(systemName: "stop.circle"), for: .normal)
            isPlaying = true
        }
    }

    func setConstrainst() {
        view.addSubview(playButton)
        
        NSLayoutConstraint.activate([
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

