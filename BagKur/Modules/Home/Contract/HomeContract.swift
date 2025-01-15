//
//  HomeContract.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

protocol HomeView: BaseView {
  func setupUI(with homeItems: [HomeItem])
}

protocol HomePresentation: AnyObject {
  func viewDidLoad()
  
  func didSelectHomeItem(index: Int)
  
  func settingsButtonTapped()
}

protocol HomeInteractorInput: AnyObject {
  
}

protocol HomeInteractorOutput: AnyObject {
  
}

protocol HomeWireframe: AnyObject {
  func routeToActivities(homeItem: HomeItem)
}
