//
//  ActivitiesContract.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation

protocol ActivitiesView: BaseView {
  func setupUI(with activityGroups: [ActivityGroup])
}

protocol ActivitiesPresentation: AnyObject {
  func viewDidLoad()
  
  func backButtonTapped()
  func seeAllButtonTapped(with activityGroup: ActivityGroup)
}

protocol ActivitiesInteractorInput: AnyObject {
  
}

protocol ActivitiesInteractorOutput: AnyObject {
  
}

protocol ActivitiesWireframe: AnyObject {
  func routeToActivitiesDetail(with activityGroup: ActivityGroup)
  
  func pop()
}
