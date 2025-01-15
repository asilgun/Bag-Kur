//
//  HomeViewController.swift
//  Bağ Kur iOS Application
//
//  Created by Semih Ahmet İlgün on 29.12.2024.
//  
//

import Foundation
import UIKit

final class HomeViewController: BaseViewController {
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var settingsButton: UIBarButtonItem!
  @IBOutlet weak var tableView: UITableView!
  
  private var homeItems: [HomeItem] = []
  
  var presenter: HomePresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
  
  @IBAction func settingsButtonTapped(_ sender: UIBarButtonItem) {
    presenter.settingsButtonTapped()
  }
}

extension HomeViewController: HomeView {
  func setupUI(with homeItems: [HomeItem]) {
    self.homeItems = homeItems
    
    let appearance = UINavigationBarAppearance()
     appearance.configureWithTransparentBackground()
     appearance.backgroundColor = .clear
     appearance.shadowColor = .clear
     
     navigationController?.navigationBar.standardAppearance = appearance
     navigationController?.navigationBar.scrollEdgeAppearance = appearance
    
    let nib = UINib(nibName: TableCellIdentifier.home, bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: TableCellIdentifier.home)
    
    tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
    
    tableView.reloadData()
  }
}

extension HomeViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return homeItems.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let homeItem = homeItems[indexPath.row]
    
    let cell = tableView.dequeueReusableCell(withIdentifier: TableCellIdentifier.home, for: indexPath) as! HomeTableViewCell
    cell.selectionStyle = .none
    
    cell.configure(with: homeItem)
    
    return cell
  }
}

extension HomeViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    presenter.didSelectHomeItem(index: indexPath.row)
  }
}
