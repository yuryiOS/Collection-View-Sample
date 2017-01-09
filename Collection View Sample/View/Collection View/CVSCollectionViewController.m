//
//  CVSCollectionViewController.m
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import "CVSCollectionViewController.h"
#import "CVSCollectionViewDataSource.h"

@interface CVSCollectionViewController ()<UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) CVSCollectionViewDataSource *customDataSource;

@end

@implementation CVSCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

- (void)setup{
    self.collectionView.dataSource = self.customDataSource;
}

- (CVSCollectionViewDataSource *)customDataSource{
    if (!_customDataSource){
        _customDataSource = [CVSCollectionViewDataSource new];
    }
    
    return _customDataSource;
}

#pragma mark <UICollectionViewDelegateFlowLayout>

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static CGFloat WidthCoefficient = 1.0;
    static CGFloat HeightCoefficient = 0.75;
    
    return CGSizeMake(self.view.bounds.size.width * WidthCoefficient, self.view.bounds.size.height * HeightCoefficient);
}

@end
