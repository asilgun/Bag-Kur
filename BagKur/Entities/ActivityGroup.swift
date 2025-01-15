//
//  ActivityGroup.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import Foundation

enum ActivityGroupType: String {
  case banner
  case films = "🎬 Filmler ve Diziler"
  case events = "🎭 Aktivite ve Etkinlikler"
  case games = "🏓 Oyunlar"
  case books = "📚 Kitaplar"
  
}

final class ActivityGroup {
  let type: ActivityGroupType
  let activities: [Activity]
  
  init(type: ActivityGroupType, activities: [Activity]) {
    self.type = type
    self.activities = activities
  }
}
