//
//  HomeCollectionViewCell.swift
//  Trinity
//
//  Created by Adam Muhammad on 19/06/2024.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    static let identifier = "HomeCollectionViewCell"
        
    //    var homeViewModel: HomeViewModel! {
    //        didSet {
    //            fullName.text = homeViewModel.fullName
    //            currentJob.text = homeViewModel?.currentJob
    //            displayAge.text = homeViewModel?.displayAge
    //            contentView.backgroundColor = colors.randomElement()
    //        }
    //    }
        
    private let fullName: UILabel = {
        let fullName = UILabel()
        fullName.textColor = .white
        fullName.font = .systemFont(ofSize: 22, weight: .semibold)
        return fullName
    }()
    
    private let colors: [UIColor] = [
        .systemPink,
        .systemBlue,
        .systemPurple,
        .systemOrange,
        .systemGreen,
        .systemRed,
        .systemYellow,
        .darkGray,
        .systemTeal,
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 8
        contentView.layer.masksToBounds = true
        contentView.addSubview(fullName)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        fullName.text = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        fullName.frame = CGRect(
            x: 10,
            y: 10,
            width: contentView.frame.size.width-20,
            height: 22
        )
    }
    
    func configure(with homeViewModel: HomeViewModel) {
        fullName.text = homeViewModel.fullName
        contentView.backgroundColor = colors.randomElement()
    }
}
