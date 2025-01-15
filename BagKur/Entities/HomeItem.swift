//
//  HomeItem.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class HomeItem {
  let image: UIImage
  let title: String
  let subtitle: String
  let activityGroups: [ActivityGroup]
  
  init(image: UIImage, title: String, subtitle: String, activityGroups: [ActivityGroup]) {
    self.image = image
    self.title = title
    self.subtitle = subtitle
    self.activityGroups = activityGroups
  }
}
