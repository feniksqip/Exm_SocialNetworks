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
        [self presentViewController:composeCtrl animated:YES completion:nil];
    }
    
        
    
 //   SLComposeViewController *socialComposeCtrl = [[SLComposeViewController alloc] init];
//    if (socialComposeCtrl tw) {
//        <#statements#>
//    } else {
//        <#statements#>
//    }
    
}

- (IBAction)facebookBtn:(id)sender {
}
@end
