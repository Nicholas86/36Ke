//
//  AppDelegate.m
//  ResideMenuDemo
//
//  Created by lmj on 15/11/6.
//  Copyright (c) 2015年 lmj. All rights reserved.
//

#import "AppDelegate.h"
#import "NewfeatureViewController.h"
#import "NewsViewController.h"
#import "LMTabBarController.h"
#import "REFrostedViewController.h"
#import "LMMenuViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 1.创建窗口
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    // 2.显示窗口
    [self.window makeKeyAndVisible];
    
    // 3.设置窗口的根控制器
    LMTabBarController *tabBar = [[LMTabBarController alloc] initColumn:@"all" title:@"新闻"];
    NewsViewController *news = [[NewsViewController alloc] init];
    NewfeatureViewController *newfeature = [[NewfeatureViewController alloc] init];
    LMMenuViewController *menuController = [[LMMenuViewController alloc] initWithStyle:UITableViewStylePlain];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:news];
    REFrostedViewController *frostedViewController = [[REFrostedViewController alloc] initWithContentViewController:tabBar menuViewController:menuController];
    frostedViewController.direction = REFrostedViewControllerDirectionLeft;
    frostedViewController.liveBlurBackgroundStyle = REFrostedViewControllerLiveBackgroundStyleLight;
    frostedViewController.liveBlur = YES;
//    frostedViewController.delegate = self;
    
    
    self.window.rootViewController = frostedViewController;
    
    return YES;
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
