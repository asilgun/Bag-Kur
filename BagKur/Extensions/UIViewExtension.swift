//
//  UIViewExtension.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import Foundation

import UIKit

extension UIView {
  @IBInspectable var cornerRadius: CGFloat {
    get {
      return layer.cornerRadius
    } set {
      layer.cornerRadius = newValue
      layer.masksToBounds = newValue > 0
    }
  }
}
