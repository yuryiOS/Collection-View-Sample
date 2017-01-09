//
//  CVSCollectionViewDataSource.h
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

@import UIKit;

@class CVSCollectionViewController;

@interface CVSCollectionViewDataSource : NSObject<UICollectionViewDataSource>

@property (nonatomic, weak) CVSCollectionViewController *collectionViewController;

@end
