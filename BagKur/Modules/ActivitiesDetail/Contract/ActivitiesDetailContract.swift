//
//  ActivitiesDetailContract.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 12.01.2025.
//  
//

import Foundation

protocol ActivitiesDetailView: BaseView {
  func setupUI(with activityGroup: ActivityGroup)
}

protocol ActivitiesDetailPresentation: AnyObject {
  func viewDidLoad()
  
  func backButtonTapped()
}

protocol ActivitiesDetailInteractorInput: AnyObject {
  
}

protocol ActivitiesDetailInteractorOutput: AnyObject {
  
}

protocol ActivitiesDetailWireframe: AnyObject {
  func pop()
}
