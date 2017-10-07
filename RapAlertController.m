//
//  RapAlertController.m
//
//  Created by RapKit on 17/12/2016.
//  Copyright © 2016 RapKit. All rights reserved.
//

#import "RapAlertController.h"

@implementation RapAlertController

+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle popoverSourceView:(UIView *)sourceView
{
    RapAlertController *ac = [self alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    
    // for iPad
    if (preferredStyle == UIAlertControllerStyleActionSheet) {
        if (@available(iOS 8.0, *)) {
            ac.popoverPresentationController.sourceView = sourceView;
            ac.popoverPresentationController.sourceRect = sourceView.bounds;
        }
    }
    
    return ac;
}

@end
