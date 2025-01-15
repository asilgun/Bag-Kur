//
//  ActivitiesCollectionViewCell.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class ActivitiesCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  
  func configure(with activity: Activity) {
    setNeedsLayout()
    layoutIfNeeded()
    
    imageView.image = activity.image
    titleLabel.text = activity.title
  }
}
