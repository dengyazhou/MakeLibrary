//
//  XMMicRTC.m
//  XMMic
//
//  Created by xmly on 2022/4/30.
//

#import "XMMicRTC.h"

@implementation XMMicRTC

+ (instancetype)creatMicRTC {
    NSLog(@"%s",__func__);
    return [[XMMicRTC alloc] init];
}

- (void)playMic:(NSString *)songId {
    NSString *str = [NSString stringWithFormat:@"播放micRTC：%@",songId];
    NSLog(@"%@",str);
}


@end
