//
//  OnboardingCollectionViewCell.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class OnboardingCollectionViewCell: UICollectionViewCell {
  @IBOutlet weak var imageView: UIImageView!
    
  func configure(with image: UIImage) {
    imageView.image = image
    
    setNeedsLayout()
    layoutIfNeeded()
    
    imageView.layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }
    
    let gradientLayer = createGradientLayer(for: imageView)
    gradientLayer.frame = imageView.bounds
    
    imageView.layer.insertSublayer(gradientLayer, at: 0)
  }
  
  private func createGradientLayer(for view: UIView) -> CAGradientLayer {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = view.bounds
    gradientLayer.colors = [Styles.Color.codGray.cgColor, UIColor.clear.cgColor]
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0) // Alt orta
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.5)   // Ortanın altı
    return gradientLayer
  }
}
