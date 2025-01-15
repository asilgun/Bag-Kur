//
//  HomeTableViewCell.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class HomeTableViewCell: UITableViewCell {
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var photoImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  
  func configure(with homeItem: HomeItem) {
    photoImageView.image = homeItem.image
    titleLabel.text = homeItem.title
    subtitleLabel.text = homeItem.subtitle
  }
}
