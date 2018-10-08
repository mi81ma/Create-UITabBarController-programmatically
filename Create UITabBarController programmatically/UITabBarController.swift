//
//  UITabBarController.swift
//  Create UITabBarController programmatically
//
//  Created by masato on 8/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit
class ViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self

    }


// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Override vieWillAppear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


// ******************************************************
// Create Tab one
        let tabOne = TabOneViewController()


//        let tabOneBarItem = UITabBarItem(
//            title: "Tab 1",
//            image: UIImage(named: "defaultImage.png"),
//            selectedImage: UIImage(named: "selectedImage.png")
//
//        )


        // represent .favorites Icon
        let tabOneBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)


        tabOne.tabBarItem = tabOneBarItem

// ******************************************************
// Create Tab two
        let tabTwo = TabTwoViewController()

        let tabTwoBarItem2 = UITabBarItem(
            title: "Tab 2",
            image: #imageLiteral(resourceName: "Fill 96"),
            selectedImage: #imageLiteral(resourceName: "Fill 96")
        )



        tabTwo.tabBarItem = tabTwoBarItem2


        self.viewControllers = [tabOne, tabTwo]
    }
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// UITabBarControllerDelegate method
// get the Tab tile in console
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }


}
