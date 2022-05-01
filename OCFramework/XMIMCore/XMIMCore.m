//
//  XMIMCore.m
//  XMIMCore
//
//  Created by xmly on 2022/5/1.
//

#import "XMIMCore.h"

@implementation XMIMCore

+ (instancetype)createIMCore {
    NSLog(@"%s",__func__);
    return [[XMIMCore alloc] init];
}

- (void)playSong:(NSString *)songId {
    NSString *str = [NSString stringWithFormat:@"XMIMCore:%@",songId];
    NSLog(@"%@",str);
}



@end
