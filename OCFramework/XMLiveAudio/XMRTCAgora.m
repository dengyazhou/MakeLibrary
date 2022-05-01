//
//  XMRTCAgora.m
//  XMLiveAudio
//
//  Created by xmly on 2022/5/1.
//

#import "XMRTCAgora.h"

@implementation XMRTCAgora

+ (instancetype)createAgora {
    NSLog(@"%s",__func__);
    return [[XMRTCAgora alloc] init];
}

- (void)playSong:(NSString *)songId {
    NSString *str = [NSString stringWithFormat:@"Agora播放：%@",songId];
    NSLog(@"%@",str);
}

@end
