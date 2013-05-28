//
//  InfoViewController.m
//  IndiaApp
//
//  Created by Fnu, Rohit on 5/27/13.
//  Copyright (c) 2013 Fnu, Rohit. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize currentPhoto,detailsLabel;
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
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"infoview"]];
    
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
    [detailsLabel setText:currentPhoto.notes];
    [detailsLabel setEditable:NO];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return NO;
}

- (IBAction)Dismiss:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
@end
