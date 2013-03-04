//
//  Config.m
//  Colorful
//
//  Created by Neal Ehardt on 3/4/13.
//  Copyright (c) 2013 groovebug. All rights reserved.
//

#import "Config.h"
#import "UIColor+HexString.h"

@implementation Config

+ (id)objectForKey:(NSString *)key
{
    static NSDictionary *plistDict = nil;
    if (!plistDict) {
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"Config" ofType:@"plist"];
        plistDict = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    }
    return [plistDict objectForKey:key];
}

+ (UIColor *)backgroundColor
{
    return [UIColor colorWithHexString:[self objectForKey:@"BackgroundColor"]];
}

+ (UIColor *)accentColor
{
    return [UIColor colorWithHexString:[self objectForKey:@"AccentColor"]];
}

@end
