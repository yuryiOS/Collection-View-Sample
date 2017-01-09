//
//  CVSCollectionItemViewModel.h
//  Collection View Sample
//
//  Created by Yury on 1/8/17.
//
//

#import <Foundation/Foundation.h>

@class CVSCollectionItem;

@interface CVSCollectionItemViewModel : NSObject

@property (nonatomic, strong, nullable) UIColor *color;
@property (nonatomic, strong, nullable) NSString *text;
@property (nonatomic, assign) BOOL isOn;

- (void)setupWithItem:(nonnull CVSCollectionItem *)item;

- (void)changeColor;
- (void)updateText:(nullable NSString *)text;
- (void)updateIsOn:(BOOL)isOn;

@property (nonatomic, copy, nonnull) void (^dataUpdated)();

@end
