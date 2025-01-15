//
//  BannerCollectionViewCell.swift
//  BagKur
//
//  Created by Burak Eryavuz on 29.12.2024.
//

import UIKit

final class BannerCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  
  func configure(with activity: Activity) {
    imageView.image = activity.image
    titleLabel.text = activity.title
    
    setNeedsLayout()
    layoutIfNeeded()
    
    setGradientLayer()
  }
  
  private func setGradientLayer() {
    imageView.layer.sublayers?
            .filter { $0 is CAGradientLayer }
            .forEach { $0.removeFromSuperlayer() }
    
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [Styles.Color.codGray.cgColor, UIColor.clear.cgColor]
    
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
    
    gradientLayer.frame = CGRect(x: 0, y: imageView.bounds.height / 2, width: UIScreen.main.bounds.width, height: imageView.bounds.height / 2)
    
    imageView.layer.addSublayer(gradientLayer)
  }
}
