//
//  RapAlertController.h
//
//  Created by RapKit on 17/12/2016.
//  Copyright © 2016 RapKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RapAlertController : UIAlertController

/// RapAlertController
+ (instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle popoverSourceView:(UIView *)sourceView;

@end
