//
//  sePuedeComprarCollectionViewController.swift
//  com.randomName
//
//  Created by Julian Pardo on 16/09/18.
//  Copyright © 2018 RandomName. All rights reserved.
//

import UIKit

private let reuseIdentifier = "collectionCell"

class sePuedeComprarCollectionViewController: UICollectionViewController {
    
    var items : [ItemModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        items.append(ItemModel.init(image: "SoccerBall", title: "Balón de fútbol", subtitle: "Edición limitada"))
        items.append(ItemModel.init(image: "Monopoly.png", title: "Monopolio", subtitle: "Versión clásica"))
        items.append(ItemModel.init(image: "Steam", title: "Tarjeta de regalo", subtitle: "3000 puntos"))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ItemCollectionViewCell else {return UICollectionViewCell()}
        // Configure the cell
        cell.image.image = items[indexPath.row].image
        cell.title.text = items[indexPath.row].title
        cell.subtitle.text = items[indexPath.row].subtitle
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "pagarWindow") {
            PresentationService.controller?.present(controller, animated: true, completion: nil)
        }
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
