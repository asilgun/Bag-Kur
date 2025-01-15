//
//  ActivitiesDetailViewController.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 12.01.2025.
//
//

import Foundation
import UIKit

final class ActivitiesDetailViewController: BaseViewController {
  @IBOutlet weak var backButton: UIBarButtonItem!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var collectionView: UICollectionView!
  
  private var activityGroup: ActivityGroup!
  
  var presenter: ActivitiesDetailPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
  @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
    generateSelectionFeedback()
    
    presenter.backButtonTapped()
  }
}

extension ActivitiesDetailViewController: ActivitiesDetailView {
  func setupUI(with activityGroup: ActivityGroup) {
    self.activityGroup = activityGroup
    
    let nib = UINib(nibName: CollectionCellIdentifier.activities, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: CollectionCellIdentifier.activities)
    
    setCollectionViewFlowLayout()
    
    titleLabel.text = activityGroup.type.rawValue
  }
  
  private func setCollectionViewFlowLayout() {
    let itemWidth = (UIScreen.main.bounds.width - 48) / 2
    
    let layout = UICollectionViewFlowLayout()
    layout.minimumLineSpacing = 16
    layout.minimumInteritemSpacing = 16
    layout.scrollDirection = .vertical
    layout.itemSize = CGSize(width: itemWidth, height: 210)
    
    collectionView.collectionViewLayout = layout
  }
}

extension ActivitiesDetailViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return activityGroup.activities.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let activity = activityGroup.activities[indexPath.row]
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCellIdentifier.activities, for: indexPath) as! ActivitiesCollectionViewCell
    
    cell.configure(with: activity)
    
    return cell
  }
}

extension ActivitiesDetailViewController: UICollectionViewDelegate {
  
}
