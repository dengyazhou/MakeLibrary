//
//  XMLiveMicService.m
//  XMLiveMic
//
//  Created by xmly on 2022/5/1.
//

#import "XMLiveMicService.h"

@implementation XMLiveMicService

- (void)serviceStart:(NSString *)name {
    NSString *str = [NSString stringWithFormat:@"MicService:%@",name];
    NSLog(@"%@",str);
}

@end
