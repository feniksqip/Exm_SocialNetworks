//
//  ViewController.m
//  Exm_SocialNetworks
//
//  Created by Admin on 09.01.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)twitterBtn:(id)sender {
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
        SLComposeViewController *composeCtrl = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
        NSString *text = @"Text for Twitter !";
        [composeCtrl setInitialText:text];
        [composeCtrl addURL:[NSURL URLWithString:@"https://twitter.com/feniksqip"]];
        [composeCtrl addImage:[UIImage imageNamed:@"Ship.jpg"]];
        [self presentViewController:composeCtrl animated:YES completion:nil];
    }
    else {
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=TWITTER"]];
       // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs://"]];
        // For iOS 8 and above
        NSURL *settingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:settingsURL];
    }

}

- (IBAction)facebookBtn:(id)sender {
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *composeCtrl = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        NSString *text = @"One, two, sri Facebook !";
        [composeCtrl setInitialText:text];
        [composeCtrl addURL:[NSURL URLWithString:@"https://twitter.com/feniksqip"]];
        [composeCtrl addImage:[UIImage imageNamed:@"Ship.jpg"]];
        [self presentViewController:composeCtrl animated:YES completion:nil];
    }
    else {
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=FACEBOOK"]];
        // [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs://"]];
        // For iOS 8 and above
        NSURL *settingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        [[UIApplication sharedApplication] openURL:settingsURL];
    }
}
@end
