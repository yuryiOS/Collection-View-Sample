//
//  CVSCollectionItem.h
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

@import UIKit;

@interface CVSCollectionItem : NSObject

//A Model class should not be dependent on UIKit. Color property should be represented without UIColor class. This is left as it is for the sake of brevity.
@property (nonatomic, strong) UIColor *color;

@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) BOOL isOn;

@end
