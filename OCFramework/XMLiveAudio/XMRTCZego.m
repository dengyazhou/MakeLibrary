//
//  XMRTCZego.m
//  XMLiveAudio
//
//  Created by xmly on 2022/4/30.
//

#import "XMRTCZego.h"

@implementation XMRTCZego

+ (instancetype)createRTC {
    NSLog(@"%s",__func__);
    return [[XMRTCZego alloc] init];
}

- (void)playSong:(NSString *)songId {
    NSString *str = [NSString stringWithFormat:@"Zego播放：%@",songId];
    NSLog(@"%@",str);
}


@end
