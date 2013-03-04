//
//  Config.h
//  Colorful
//
//  Created by Neal Ehardt on 3/4/13.
//  Copyright (c) 2013 groovebug. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject

+ (id)objectForKey:(NSString *)key;
+ (UIColor *)backgroundColor;
+ (UIColor *)accentColor;

@end


@interface HeadingLabel : UILabel

@end