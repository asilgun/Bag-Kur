//
//  UITextViewExtension.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

extension UITextView {
  func centerVertically() {
    var topCorrect = (bounds.size.height - contentSize.height * zoomScale) / 2
    topCorrect = topCorrect < 0.0 ? 0.0 : topCorrect
    
    contentInset.top = -topCorrect / 2
  }
  
  func addPlaceholder(text: String, textColor: UIColor) {
    let placeholderLabel = UILabel()
    
    placeholderLabel.accessibilityIdentifier = "PlaceholderLabel"
    placeholderLabel.font = self.font
    placeholderLabel.text = text
    placeholderLabel.textColor = textColor
    placeholderLabel.numberOfLines = 0
    placeholderLabel.textAlignment = .center
    placeholderLabel.translatesAutoresizingMaskIntoConstraints = false
    
    self.addSubview(placeholderLabel)
  }
  
  func updatePlaceholder() {
    for subview in self.subviews {
      if let placeholderLabel = subview as? UILabel, placeholderLabel.accessibilityIdentifier == "PlaceholderLabel" {
        placeholderLabel.isHidden = !self.text.isEmpty
      }
    }
  }
  
  var currentLineCount: Int {
    let margin = textContainerInset.top + textContainerInset.bottom
    let lineHeight = font?.lineHeight ?? 0
    let lineCount = (frame.height - margin) / lineHeight
    
    return Int(lineCount)
  }
  
  var textLineCount: Int {
    let margin = textContainerInset.top + textContainerInset.bottom
    let lineHeight = font?.lineHeight ?? 0
    let lineCount = (contentSize.height - margin) / lineHeight
    
    return Int(lineCount)
  }
  
  func heightForMaximumLineCount(_ maxLineCount: Int) -> CGFloat {
    let margin = textContainerInset.top + textContainerInset.bottom
    let lineHeight = font?.lineHeight ?? 0
    let maxHeight = CGFloat(maxLineCount) * lineHeight
    
    return maxHeight + margin
  }
  
  func animateTyping(text: String, completion: (() -> Void)?, characterDelay: TimeInterval = 0.25) {
    var delay = characterDelay
    
    self.text = ""
    
    let writingTask = DispatchWorkItem { [weak self] in
      guard let self = self else { return }
      
      text.forEach { char in
        DispatchQueue.main.async { [weak self] in
          guard let self = self else { return }
          self.text?.append(char)
          
          if self.text == text {
            completion?()
          }
        }
        
        if delay < 1.5 && (char == "," || char == ".") {
          delay += 0.25
        }
        
        Thread.sleep(forTimeInterval: delay / 100)
      }
    }
    
    let queue: DispatchQueue = .init(label: "typespeed", qos: .userInteractive)
    queue.asyncAfter(deadline: .now() + 0.05, execute: writingTask)
  }
}
