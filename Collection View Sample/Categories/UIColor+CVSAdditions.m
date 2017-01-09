//
//  UIColor+CVSAdditions.m
//  Collection View Sample
//
//  Created by Yury on 1/8/17.
//
//

#import "UIColor+CVSAdditions.h"

@implementation UIColor (CVSAdditions)

+ (UIColor *)randomColor{
    CGFloat red = arc4random() % 255 / 255.0;
    CGFloat green = arc4random() % 255 / 255.0;
    CGFloat blue = arc4random() % 255 / 255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
