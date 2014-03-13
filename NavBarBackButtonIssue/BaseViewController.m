//
//  BaseViewController.m
//  NavBarBackButtonIssue
//
//  Created by Vinod on 13/03/14.
//  Copyright (c) 2014 Vinod Patel. All rights reserved.
//

#import "BaseViewController.h"
#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import "Test3ViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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
    // Do any additional setup after loading the view.
    
    UIButton * button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(20, self.view.frame.size.height - 200, 80, 50);
    [button1 setTitle:@"Test 1" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor redColor];
    [button1 addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(120, self.view.frame.size.height - 200, 80, 50);
    [button2 setTitle:@"Test 2" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor greenColor];
    [button2 addTarget:self action:@selector(test2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton * button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(220, self.view.frame.size.height - 200, 80, 50);
    [button3 setTitle:@"Test 3" forState:UIControlStateNormal];
    button3.backgroundColor = [UIColor blueColor];
    [button3 addTarget:self action:@selector(test3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)test1 {
    
    if (![self isKindOfClass:NSClassFromString(@"Test1ViewController")]) {
        Test1ViewController * test1Cont = [[Test1ViewController alloc] init];
        [self.navigationController setViewControllers:@[test1Cont] animated:YES];
    }
}

- (void)test2 {
    
    if (![self isKindOfClass:NSClassFromString(@"Test2ViewController")]) {
        Test2ViewController * test2Cont = [[Test2ViewController alloc] init];
        [self.navigationController setViewControllers:@[test2Cont] animated:YES];
    }
}

- (void)test3 {
    
    if (![self isKindOfClass:NSClassFromString(@"Test3ViewController")]) {
        Test3ViewController * test3Cont = [[Test3ViewController alloc] init];
        [self.navigationController setViewControllers:@[test3Cont] animated:YES];
    }
}

@end
