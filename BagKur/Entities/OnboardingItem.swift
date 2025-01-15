//
//  OnboardingItem.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class OnboardingItem {
  let image: UIImage
  let title: String
  let subtitle: String
  
  init(image: UIImage, title: String, subtitle: String) {
    self.image = image
    self.title = title
    self.subtitle = subtitle
  }
}
