//
//  ActivitiesViewController.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class ActivitiesViewController: BaseViewController {
  @IBOutlet weak var backButton: UIBarButtonItem!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var tableView: UITableView!
  
  var activityGroups: [ActivityGroup] = []
  
  var presenter: ActivitiesPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
  
  @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
    presenter.backButtonTapped()
  }
}

extension ActivitiesViewController: ActivitiesView {
  func setupUI(with activityGroups: [ActivityGroup]) {
    self.activityGroups = activityGroups
    
    let bannerNib = UINib(nibName: TableCellIdentifier.activitiesBanner, bundle: nil)
    tableView.register(bannerNib, forCellReuseIdentifier: TableCellIdentifier.activitiesBanner)
    
    let activityGroupNib = UINib(nibName: TableCellIdentifier.activityGroup, bundle: nil)
    tableView.register(activityGroupNib, forCellReuseIdentifier: TableCellIdentifier.activityGroup)
    
    tableView.contentInsetAdjustmentBehavior = .never
    tableView.contentInset = .zero
    
    tableView.reloadData()
  }
}

extension ActivitiesViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return activityGroups.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let activityGroup = activityGroups[indexPath.row]
    let isBanner = activityGroup.type == .banner
    let targetIdentifier = isBanner ? TableCellIdentifier.activitiesBanner : TableCellIdentifier.activityGroup
    
    let cell = tableView.dequeueReusableCell(withIdentifier: targetIdentifier, for: indexPath)
    cell.selectionStyle = .none
    
    if isBanner {
      let cell = cell as! BannerTableViewCell
      
      cell.configure(with: activityGroup.activities)
    } else {
      let cell = cell as! ActivityGroupTableViewCell
      
      cell.configure(with: activityGroup.activities, title: activityGroup.type.rawValue)
      
      cell.seeAllButtonTapped = { [weak self] in
        self?.generateSelectionFeedback()
        
        self?.presenter.seeAllButtonTapped(with: activityGroup)
      }
    }
    
    return cell
  }
}

extension ActivitiesViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    let activityGroup = activityGroups[indexPath.row]
    let isBanner = activityGroup.type == .banner
    
    if isBanner {
      return (UIScreen.main.bounds.width / 0.93) + 16
    } else {
      return 250 + 16
    }
  }
}
