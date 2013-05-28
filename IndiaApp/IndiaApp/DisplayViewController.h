//
//  DisplayViewController.h
//  IndiaApp
//
//  Created by Fnu, Rohit on 5/27/13.
//  Copyright (c) 2013 Fnu, Rohit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Heritage.h"
#import "InfoViewController.h"
@interface DisplayViewController : UIViewController
@property(nonatomic,strong) Heritage *currentPhoto;
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;
@end
