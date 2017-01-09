//
//  CVSCollectionViewDataSource.m
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import "CVSCollectionViewDataSource.h"
#import "CVSCollectionViewController.h"
#import "CVSCollectionItem.h"
#import "CVSCollectionItemViewController.h"
#import "CVSCollectionViewCell.h"
#import "CVSCollectionViewCellModel.h"

static NSUInteger kItemsQuantity = 5;

@interface CVSCollectionViewDataSource()

@property (nonatomic, strong) NSArray<CVSCollectionItem *> *items;

@end

@implementation CVSCollectionViewDataSource

- (id)init{
    if (self = [super init]){
        _items = [self filledItemsList];
    }
    
    return self;
}

#pragma mark - Data
- (NSArray<CVSCollectionItem *> *)filledItemsList{
    NSMutableArray<CVSCollectionItem *> *items = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < kItemsQuantity; i++){
        CVSCollectionItem *item = [CVSCollectionItem new];
        [items addObject:item];
    }
    
    return items.copy;
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * const reuseIdentifier = @"Cell";
    CVSCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    [self setupCell:cell forIndexPath:indexPath];
    
    return cell;
}

#pragma mark - Cell Configuration
- (void)setupCell:(CVSCollectionViewCell *)cell forIndexPath:(NSIndexPath *)indexPath{
    [cell.viewModel setupWithItem:_items[indexPath.row]];
    
    if (!cell.viewModel.hasContent){
        [self addContentViewControllerToCell:cell];
    }
}

- (void)addContentViewControllerToCell:(CVSCollectionViewCell *)cell{
    [cell addSubview:cell.viewModel.contentViewController.view];
    [self.collectionViewController addChildViewController:cell.viewModel.contentViewController];
    [cell.viewModel.contentViewController didMoveToParentViewController:self.collectionViewController];
    cell.viewModel.hasContent = YES;
}

@end
