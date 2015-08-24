//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Auriel on 7/19/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRHypnosisView.h"

@interface BNRAppDelegate ()

@end

@implementation BNRAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    
      // Override point for customization after application launch.
      //CGRect secondFrame = CGRectMake(160, 240, 100, 150);
    CGRect firstFrame = self.window.bounds;
    

    
    BNRHypnosisView *firstView = [[BNRHypnosisView alloc] initWithFrame:firstFrame];
    [self.window addSubview:firstView];
    //firstView.backgroundColor = [UIColor redColor];
    
    [self.window addSubview:firstView];
//    CGRect secondFrame = CGRectMake(20, 30, 50, 50);
//    
//    BNRHypnosisView *secondView = [[BNRHypnosisView alloc] initWithFrame:secondFrame];
//    secondView.backgroundColor = [UIColor blueColor];
//    //[self.window addSubview:secondView];
//    [firstView addSubview:secondView];
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void) drawRect:(CGRect)rect
{
    CGRect bounds = self.window.bounds;
    CGPoint center;
    center.x =  bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    // add an arc to the path at center with radius of redius, from 0 to 2*PI (a circle)
    [path addArcWithCenter:center radius: radius startAngle:0.0 endAngle: M_PI * 2.0 clockwise:YES];
    
    //draw line
    [path stroke];

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
