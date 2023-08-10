//
//  ViewController.m
//  ZDOpenIM
//
//  Created by mac on 2023/8/9.
//

#import "ViewController.h"
#import "ZDOpenIM-Swift.h"
#import <OpenIMSDK/OpenIMSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ChatListViewController *vc = [[ChatListViewController alloc] init];
    [self.view addSubview:vc.view];
    
    [OIMManager.manager initSDKWithApiAdrr:@"" wsAddr:@"" dataDir:nil logLevel:6 objectStorage:@"minio" onConnecting:^{
        NSLog(@"\nconnecting");
    } onConnectFailure:^(NSInteger code, NSString * _Nullable msg) {
        NSLog(@"\n connect failure");
    } onConnectSuccess:^{
        NSLog(@"\nconnect success");
    } onKickedOffline:^{
        NSLog(@"\nkicked offline");
    } onUserTokenExpired:^{
        NSLog(@"\nuser token expired");
    }];
    
    [OIMManager.manager login:@"" token:@"" onSuccess:^(NSString * _Nullable data) {
        <#code#>
    } onFailure:^(NSInteger code, NSString * _Nullable msg) {
        <#code#>
    }];
}


@end
