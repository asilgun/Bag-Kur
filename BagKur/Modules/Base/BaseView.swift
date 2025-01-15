//
//  BaseView.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//
//

import UIKit

protocol BaseView: class {
  func setTitle(_ title: String)
}

extension BaseView where Self: UIViewController {
  func setTitle(_ title: String) {
    self.title = title
    
    navigationItem.title = title
  }
 
  func generateNotificationFeedback(with style: UINotificationFeedbackGenerator.FeedbackType) {
    UINotificationFeedbackGenerator()
      .notificationOccurred(style)
  }
  
  func generateImpactFeedback(with style: UIImpactFeedbackGenerator.FeedbackStyle) {
    UIImpactFeedbackGenerator(style: style)
      .impactOccurred()
  }
  
  func generateSelectionFeedback() {
    UISelectionFeedbackGenerator()
      .selectionChanged()
  }
}

extension BaseView {
   func getWindow() -> UIWindow! {
    if #available(iOS 13.0, *) {
      let keyWindow = UIApplication.shared.connectedScenes
        .map { $0 as? UIWindowScene }
        .compactMap { $0 }
        .first?.windows
        .filter { $0.isKeyWindow }.first
      
      return keyWindow
    }
    
    return (UIApplication.shared.delegate as! AppDelegate).window
  }
}
