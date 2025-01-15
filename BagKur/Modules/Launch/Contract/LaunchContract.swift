//
//  LaunchContract.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

protocol LaunchView: BaseView {
  func setupUI()
}

protocol LaunchPresentation: AnyObject {
  func viewDidLoad()
  
  func viewDidAppear()
}

protocol LaunchInteractorInput: AnyObject {
  
}

protocol LaunchInteractorOutput: AnyObject {
  
}

protocol LaunchWireframe: AnyObject {
  func routeToOnboarding()
  func routeToHome()
}
