//
//  ViewController.h
//  UIWebView2
//
//  Created by Aditya Narayan on 12/2/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController : UIViewController 

@property (strong, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)buttonPressed:(id)sender;

@end

