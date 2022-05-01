//
//  XMMic.h
//  XMMic
//
//  Created by xmly on 2022/4/30.
//

#import <Foundation/Foundation.h>

@interface XMMic : NSObject

+ (instancetype)creatMic;
- (void)playMic:(NSString *)songId;

@end
