//
//  XMMic.m
//  XMMic
//
//  Created by xmly on 2022/4/30.
//

#import "XMMic.h"

@implementation XMMic

+ (instancetype)creatMic {
    NSLog(@"%s",__func__);
    return [[XMMic alloc] init];
}

-(void)playMic:(NSString *)songId {
    NSString *str = [NSString stringWithFormat:@"播放mic：%@",songId];
    NSLog(@"%@",str);
}

@end
