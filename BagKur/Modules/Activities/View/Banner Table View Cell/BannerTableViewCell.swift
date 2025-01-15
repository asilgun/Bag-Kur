//
//  BannerTableViewCell.swift
//  BagKur
//
//  Created by Burak Eryavuz on 29.12.2024.
//

import UIKit
import AdvancedPageControl

final class BannerTableViewCell: UITableViewCell {
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var pageControl: AdvancedPageControlView!
  
  var activities: [Activity] = []
  var timer: Timer?
  var currentIndex = 0
  var isScrollToForward = true
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    let nib = UINib(nibName: CollectionCellIdentifier.activitiesBanner, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: CollectionCellIdentifier.activitiesBanner)
  }
  
  func configure(with activities: [Activity]) {
    self.activities = activities
    
    setCollectionViewFlowLayout()
    
    collectionView.reloadData()
    
    setAdvancedPageControl()
    
    timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNext), userInfo: nil, repeats: true)
  }
  
  @objc func scrollToNext() {
    if isScrollToForward {
      currentIndex += 1
      if currentIndex >= activities.count {
        isScrollToForward = false
        currentIndex -= 2
      }
    } else {
      currentIndex -= 1
      if currentIndex < 0 {
        isScrollToForward = true
        currentIndex += 2
      }
    }
    
    pageControl.setPage(currentIndex)
    
    let indexPath = IndexPath(item: currentIndex, section: 0)
    collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
  }
  
  private func setAdvancedPageControl() {
    pageControl.numberOfPages = activities.count
    pageControl.drawer = ExtendedDotDrawer(numberOfPages: activities.count,
                                           height: 6,
                                           width: 6,
                                           space: 4,
                                           indicatorColor: UIColor.white,
                                           dotsColor: Styles.Color.manateeGray,
                                           isBordered: false,
                                           borderWidth: 0,
                                           indicatorBorderColor: .clear,
                                           indicatorBorderWidth: 0)
  }
  
  private func setCollectionViewFlowLayout() {
    let itemWidth = UIScreen.main.bounds.width
    
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 0
    layout.minimumInteritemSpacing = 0
    layout.itemSize = CGSize(width: itemWidth, height: itemWidth / 0.93)
    
    collectionView.collectionViewLayout = layout
  }
}

extension BannerTableViewCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return activities.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let activity = activities[indexPath.row]
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCellIdentifier.activitiesBanner, for: indexPath) as! BannerCollectionViewCell
    
    cell.configure(with: activity)
    
    return cell
  }
}

extension BannerTableViewCell: UICollectionViewDelegate {
  
}

extension BannerTableViewCell: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    currentIndex = Int(round(scrollView.contentOffset.x / scrollView.frame.size.width))
    
    pageControl.setPage(currentIndex)
  }
  
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
    timer?.invalidate()
    timer = nil
  }
  
  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNext), userInfo: nil, repeats: true)
  }
  
  func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
    pageControl.setPage(currentIndex)
  }
}
