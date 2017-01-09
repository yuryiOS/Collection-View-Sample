//
//  CVSCollectionItemViewModel.m
//  Collection View Sample
//
//  Created by Yury on 1/8/17.
//
//

@import UIKit;

#import "CVSCollectionItemViewModel.h"
#import "CVSCollectionItem.h"

#import "UIColor+CVSAdditions.h"

@interface CVSCollectionItemViewModel()

@property (nonatomic, strong) CVSCollectionItem *item;

@end

@implementation CVSCollectionItemViewModel

- (void)setupWithItem:(CVSCollectionItem *)item{
    _item = item;
    
    _color = item.color;
    _text = item.text;
    _isOn = item.isOn;
    
    self.dataUpdated();
}

- (void)changeColor{
    _item.color = _color = [UIColor randomColor];
    
    self.dataUpdated();
}

- (void)updateText:(NSString *)text{
    _item.text = _text = text;
    
    self.dataUpdated();
}

- (void)updateIsOn:(BOOL)isOn{
    _item.isOn = _isOn = isOn;
    
    self.dataUpdated();
}

@end
