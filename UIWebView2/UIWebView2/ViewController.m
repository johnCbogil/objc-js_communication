//
//  ViewController.m
//  UIWebView2
//
//  Created by Aditya Narayan on 12/2/14.
//  Copyright (c) 2014 John Bogil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView.delegate = self;
    
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"test2" withExtension:@"html"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}


-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    
    JSContext *context = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    context[@"submitButton"] = ^(NSString *param1){
        [self log];
    };
}

-(void)log{
    NSLog(@"Hello");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    NSString * jsCallBack = [NSString stringWithFormat:@"alertFunction()"];
    [self.webView stringByEvaluatingJavaScriptFromString:jsCallBack];
}
@end
