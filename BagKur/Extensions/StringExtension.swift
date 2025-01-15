//
//  StringExtension.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

extension String {
  
  func heightForLabel(font: UIFont, width: CGFloat) -> CGFloat {
    let rect = CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude)
    let label = UILabel(frame: rect)
    label.numberOfLines = 0
    label.lineBreakMode = .byTruncatingTail
    label.adjustsFontSizeToFitWidth = true
    label.minimumScaleFactor = 0.85
    label.font = font
    label.text = self
    label.sizeToFit()
    
    return label.frame.height
  }
  
  func widthForLabel(font: UIFont) -> CGFloat {
    let label = UILabel(frame: .zero)
    label.numberOfLines = 0
    label.lineBreakMode = .byTruncatingTail
    label.adjustsFontSizeToFitWidth = true
    label.minimumScaleFactor = 0.85
    label.font = font
    label.text = self
    label.sizeToFit()
    
    return label.intrinsicContentSize.width
  }
}
