//
//  AppDelegate.m
//  GetUDID
//
//  Created by 维奕 on 2017/8/14.
//  Copyright © 2017年 维奕. All rights reserved.
//

#import "AppDelegate.h"
#import "FCUUID.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //需要添加security.framework
    
    NSLog(@"%@",[FCUUID uuid]);// 每次运行应用都会变
  
    NSLog(@"%@",[FCUUID uuidForDevice]);//抹掉iPhone的时候才会变，适合做唯一标识

    NSLog(@"%@",[FCUUID uuidForInstallation]);// 重新安装的时候会变
    
    NSLog(@"%@",[FCUUID uuidForSession]);// 每次运行应用都会变
    
    NSLog(@"%@",[FCUUID uuidForVendor]);// 卸载后重装会变
    
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
