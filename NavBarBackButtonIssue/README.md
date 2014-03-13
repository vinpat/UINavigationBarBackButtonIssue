UINavigationBarBackButtonIssue
==============================

There is back button displayed for first UIViewController in stack of UINavigationController, I hope which is bug related to iOS 7.1 

1. if no title set 
2. If title set (self.navigationItem.title = @"Test 2") 
3. If tile set (self.title = @"Test 3") 

Method used for displaying view controllers as follow. 
[self.navigationController setViewControllers:@[controller] animated:YES];