//
//  ActivityGroupTableViewCell.swift
//  BagKur
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//

import UIKit

final class ActivityGroupTableViewCell: UITableViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var seeAllButton: UIButton!
  @IBOutlet weak var collectionView: UICollectionView!
  
  var activities: [Activity] = []
  
  var seeAllButtonTapped: (() -> Void)?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    let nib = UINib(nibName: CollectionCellIdentifier.activities, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: CollectionCellIdentifier.activities)
  }
  
  func configure(with activities: [Activity], title: String) {
    self.activities = activities
    
    setNeedsLayout()
    layoutIfNeeded()
    
    titleLabel.text = title
    
    setCollectionViewFlowLayout()
    
    collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    
    collectionView.reloadData()
  }
  
  private func setCollectionViewFlowLayout() {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 16
    layout.minimumInteritemSpacing = 16
    layout.itemSize = CGSize(width: 210, height: 210)
    
    collectionView.collectionViewLayout = layout
  }
    
  @IBAction func seeAllButtonTapped(_ sender: UIButton) {
    seeAllButtonTapped?()
  }
}

extension ActivityGroupTableViewCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return activities.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let activity = activities[indexPath.row]
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCellIdentifier.activities, for: indexPath) as! ActivitiesCollectionViewCell
    
    cell.configure(with: activity)
    
    return cell
  }
}

extension ActivityGroupTableViewCell: UICollectionViewDelegate {
  
}
