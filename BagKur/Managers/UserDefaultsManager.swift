//
//  UserDefaultsManager.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import Foundation

enum UserDefaultsKeys {
  static let isOnboardingShowed = "isOnboardingShowed"
}

final class UserDefaultsManager {
  static let shared = UserDefaultsManager()
  
  private init() {}
  
  var isOnboardingShowed: Bool {
    get {
      return UserDefaults.standard.bool(forKey: UserDefaultsKeys.isOnboardingShowed)
    } set {
      UserDefaults.standard.setValue(newValue, forKey: UserDefaultsKeys.isOnboardingShowed)
    }
  }
}
