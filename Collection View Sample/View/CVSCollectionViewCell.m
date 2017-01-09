//
//  CVSCollectionViewCell.m
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import "CVSCollectionViewCell.h"
#import "CVSCollectionViewCellModel.h"

@implementation CVSCollectionViewCell

- (CVSCollectionViewCellModel *)viewModel{
    if (!_viewModel){
        _viewModel = [CVSCollectionViewCellModel new];
    }
    
    return _viewModel;
}

@end
