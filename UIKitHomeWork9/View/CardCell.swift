//
//  CardCell.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import UIKit

class CardCell: UICollectionViewCell {
    static let id: String = "CardCell"
    
    let color = UIColor(red: 236/255, green: 236/255, blue: 236/255, alpha: 1.0)
    
    lazy var screenWidht = UIScreen.main.bounds.width - 90
    
    lazy var avatarImg = CustomImageView()
    
    lazy var usersName = CustomLabel(font: .systemFont(ofSize: 20, weight: .bold))
    
    lazy var titleImage = CustomImageView()
    
    lazy var date = CustomLabel(font: .systemFont(ofSize: 14, weight: .light), textColor: .gray)
    
    lazy var title = CustomLabel(font: .systemFont(ofSize: 22, weight: .semibold))
    
    lazy var contentLabel = CustomLabel(font: .systemFont(ofSize: 18, weight: .medium))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubviews(view: avatarImg, usersName, titleImage, date, title, contentLabel)
        contentView.backgroundColor = color
        
    }
    
    func setupCell(item: CardModel?) {
        guard let item = item else {return}
        avatarImg.image = UIImage(named: item.avatarImage)
        usersName.text = item.userName
        titleImage.image = UIImage(named: item.titleImage)
        date.text = item.date
        title.text = item.title
        contentLabel.text = item.content
        
        setConstraint()
        
    }
    
    func setConstraint() {
        
        let imageRatio = titleImage.image?.getRatio() ?? 0
        let imageHeight = imageRatio * screenWidht
        
        NSLayoutConstraint.activate([
            avatarImg.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            avatarImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImg.widthAnchor.constraint(equalToConstant: 44),
            avatarImg.heightAnchor.constraint(equalToConstant: 44),
            
            usersName.centerYAnchor.constraint(equalTo: avatarImg.centerYAnchor),
            usersName.leadingAnchor.constraint(equalTo: avatarImg.trailingAnchor, constant: 10),
            usersName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
          
            
            titleImage.topAnchor.constraint(equalTo: avatarImg.bottomAnchor, constant: 20),
            titleImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            titleImage.widthAnchor.constraint(equalToConstant: screenWidht),
            titleImage.heightAnchor.constraint(equalToConstant: imageHeight),
            
            date.topAnchor.constraint(equalTo: titleImage.bottomAnchor, constant: 10),
            date.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            title.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 5),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            contentLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            contentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
