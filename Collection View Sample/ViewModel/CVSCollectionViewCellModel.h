//
//  CVSCollectionViewCellModel.h
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import <Foundation/Foundation.h>

@class CVSCollectionItemViewController, CVSCollectionItem;

@interface CVSCollectionViewCellModel : NSObject

@property (nonatomic, assign) BOOL hasContent;
@property (nonatomic, strong) CVSCollectionItemViewController *contentViewController;

- (void)setupWithItem:(CVSCollectionItem *)item;

@end
