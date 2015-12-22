//
//  GlobalUtil.m
//  ParentsCommunity
//
//  Created by LiuBo on 15/12/21.
//  Copyright © 2015年 XES. All rights reserved.
//

#import "GlobalUtil.h"

#define kParentsCommunityAppClientId @"ParentsCommunityAppClientId"

@implementation GlobalUtil

+(NSString *)clientId{
    
    NSString *clentId = [[NSUserDefaults standardUserDefaults] objectForKey:kParentsCommunityAppClientId];
    if (clentId.length <= 0) {
        CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
        clentId = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuid);
        [[NSUserDefaults standardUserDefaults] setObject:clentId forKey:kParentsCommunityAppClientId];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return clentId;
}


@end
