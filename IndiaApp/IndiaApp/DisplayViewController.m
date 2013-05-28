//
//  DisplayViewController.m
//  IndiaApp
//
//  Created by Fnu, Rohit on 5/27/13.
//  Copyright (c) 2013 Fnu, Rohit. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController
@synthesize currentPhoto,currentImage;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIImage *image = [UIImage imageNamed:currentPhoto.filename];
    [self.currentImage setImage:image];
    [self setTitle:[currentPhoto name]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    InfoViewController *IVC = [segue destinationViewController];
    [IVC setCurrentPhoto:self.currentPhoto];
}

@end
