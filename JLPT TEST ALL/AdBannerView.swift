//
//  AdBannerView.swift
//  JlptN3Test
//
//  Created by Jeamin on 8/25/24.
//

import SwiftUI
import GoogleMobileAds

struct AdBannerView: UIViewControllerRepresentable {
    var adUnitID: String
   
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let bannerView = GADBannerView(adSize: GADAdSizeBanner)
        bannerView.adUnitID = adUnitID
        bannerView.rootViewController = viewController
        bannerView.load(GADRequest())
        viewController.view.addSubview(bannerView)
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bannerView.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            bannerView.bottomAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

class ViewController: UIViewController {

  var bannerView: GADBannerView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let viewWidth = view.frame.inset(by: view.safeAreaInsets).width

    // Here the current interface orientation is used. Use
    // GADLandscapeAnchoredAdaptiveBannerAdSizeWithWidth or
    // GADPortraitAnchoredAdaptiveBannerAdSizeWithWidth if you prefer to load an ad of a
    // particular orientation,
    let adaptiveSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(viewWidth)
    bannerView = GADBannerView(adSize: adaptiveSize)

    addBannerViewToView(bannerView)
  }

  func addBannerViewToView(_ bannerView: GADBannerView) {
    bannerView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(bannerView)
    view.addConstraints(
      [NSLayoutConstraint(item: bannerView,
                          attribute: .bottom,
                          relatedBy: .equal,
                          toItem: view.safeAreaLayoutGuide,
                          attribute: .bottom,
                          multiplier: 1,
                          constant: 0),
       NSLayoutConstraint(item: bannerView,
                          attribute: .centerX,
                          relatedBy: .equal,
                          toItem: view,
                          attribute: .centerX,
                          multiplier: 1,
                          constant: 0)
      ])
   }
}
