//
//  XMMicRTC.h
//  XMMic
//
//  Created by xmly on 2022/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMMicRTC : NSObject

+ (instancetype)creatMicRTC;
- (void)playMic:(NSString *)songId;

@end

NS_ASSUME_NONNULL_END
