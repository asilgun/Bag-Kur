//
//  OnboardingViewController.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//
//

import UIKit
import AdvancedPageControl

final class OnboardingViewController: BaseViewController {
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var pageControl: AdvancedPageControlView!
  @IBOutlet weak var continueButton: UIButton!
  
  private var items: [OnboardingItem] = []
  
  var presenter: OnboardingPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
  
  @IBAction func continueButtonTapped(_ sender: UIButton) {
    generateSelectionFeedback()
    
    presenter.continueButtonTapped()
  }
}

extension OnboardingViewController: OnboardingView {
  func setupUI(with items: [OnboardingItem]) {
    self.items = items

    view.backgroundColor = Styles.Color.codGray
    
    titleLabel.text = items[0].title
    subtitleLabel.text = items[0].subtitle
    
    let nib = UINib(nibName: CollectionCellIdentifier.onboarding, bundle: nil)
    collectionView.register(nib, forCellWithReuseIdentifier: CollectionCellIdentifier.onboarding)
    
    setCollectionViewFlowLayout()
    
    setAdvancedPageControl()
    
    collectionView.reloadData()
  }
  
  func updateUI() {
    titleLabel.text = items[1].title
    subtitleLabel.text = items[1].subtitle
    
    pageControl.setPage(1)
    
    let indexPath = IndexPath(item: 1, section: 0)
    collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: false)
  }

  private func setCollectionViewFlowLayout() {
    let itemWitdh = UIScreen.main.bounds.width
    let itemHeight = collectionView.bounds.height
    
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 0
    layout.minimumInteritemSpacing = 0
    layout.itemSize = CGSize(width: itemWitdh, height: itemHeight)
    
    collectionView.collectionViewLayout = layout
  }
  
  private func setAdvancedPageControl() {
    pageControl.numberOfPages = items.count
    pageControl.drawer = ExtendedDotDrawer(numberOfPages: items.count,
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
}

extension OnboardingViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let item = items[indexPath.row]
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCellIdentifier.onboarding, for: indexPath) as! OnboardingCollectionViewCell
    cell.configure(with: item.image)
    
    return cell
  }
}

extension OnboardingViewController: UICollectionViewDelegate {
  
}

extension OnboardingViewController: UIScrollViewDelegate {
  
}
