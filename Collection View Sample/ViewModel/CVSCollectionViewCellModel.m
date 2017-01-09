//
//  CVSCollectionViewCellModel.m
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import "CVSCollectionViewCellModel.h"
#import "CVSCollectionItemViewController.h"
#import "CVSCollectionItemViewModel.h"

@implementation CVSCollectionViewCellModel

- (CVSCollectionItemViewController *)contentViewController{
    if (!_contentViewController){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        _contentViewController = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(CVSCollectionItemViewController.class)];
    }
    
    return _contentViewController;
}

- (void)setupWithItem:(CVSCollectionItem *)item{
    [self.contentViewController.viewModel setupWithItem:item];
}

@end
