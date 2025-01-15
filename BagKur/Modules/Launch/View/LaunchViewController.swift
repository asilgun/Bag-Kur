//
//  LaunchViewController.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class LaunchViewController: BaseViewController {
  var presenter: LaunchPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    presenter.viewDidAppear()
  }
}

extension LaunchViewController: LaunchView {
  func setupUI() {
    view.backgroundColor = Styles.Color.codGray
  }
}
