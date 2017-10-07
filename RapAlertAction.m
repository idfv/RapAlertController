//
//  RapAlertAction.m
//
//  Created by RapKit on 17/12/2016.
//  Copyright © 2016 RapKit. All rights reserved.
//

#import "RapAlertAction.h"

#import <objc/runtime.h>

@implementation RapAlertAction

+ (instancetype)actionWithTitle:(NSString *)title style:(UIAlertActionStyle)style handler:(void (^)(UIAlertAction * _Nonnull))handler
{
    RapAlertAction *aa = [super actionWithTitle:title style:style handler:handler];
    
    if (style != UIAlertActionStyleDestructive) {
        unsigned int count  = 0;
        Ivar *ivars         = class_copyIvarList([UIAlertAction class], &count);
        for (unsigned int i = 0; i < count; i++) {
            
            Ivar ivar = ivars[i];
            NSString *ivarName = [NSString stringWithCString:ivar_getName(ivar) encoding:NSUTF8StringEncoding];
            
            if ([ivarName isEqualToString:@"_titleTextColor"]) {
                [aa setValue:[UIColor darkGrayColor] /* or your custom color */ forKey:@"titleTextColor"];
            }
            
        }
    }
    
    return aa;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"<%@> Undefined key: %@, value: %@", self.class, key, value);
}

@end
