//
//  ViewController.swift
//  AsynkitSample
//
//  Created by Khoi on 5/21/19.
//  Copyright © 2019 Khoi. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class MainViewController: UIViewController {
  
    var collectionNode: ASCollectionNode!
    let languages: [String] = [ "C++","swift" , "java" , "objective C" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 1
        flowLayout.minimumLineSpacing = 1
        flowLayout.headerReferenceSize = CGSize(width: 50, height: 50)
        flowLayout.footerReferenceSize = CGSize(width: 50, height: 50)
            
        collectionNode = ASCollectionNode(frame: self.view.bounds, collectionViewLayout: flowLayout)
        collectionNode.delegate = self
        collectionNode.dataSource = self
        collectionNode.reloadData()
        collectionNode.allowsMultipleSelection = true
        self.collectionNode.registerSupplementaryNode(ofKind: UICollectionElementKindSectionHeader)
        self.collectionNode.registerSupplementaryNode(ofKind: UICollectionElementKindSectionFooter)
        view.addSubnode(collectionNode)
    }
}

extension MainViewController: ASCollectionDelegate, ASCollectionDataSource{
    
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return languages.count
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        let text = self.languages[indexPath.item]
        let cellNodeBlock = { () -> ASCellNode in
            let cellNode = LanguageNodeCell()
            cellNode.language = text
            return cellNode
        }
        return cellNodeBlock
    }
    
    func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 3
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, nodeForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> ASCellNode {
        
        let node = ASCellNode()
        if kind == UICollectionElementKindSectionHeader {
            node.backgroundColor = .red
        } else {
            node.backgroundColor = .blue
        }
        return node
    }
}

