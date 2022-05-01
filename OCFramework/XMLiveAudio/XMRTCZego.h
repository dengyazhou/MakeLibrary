//
//  XMRTCZego.h
//  XMLiveAudio
//
//  Created by xmly on 2022/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMRTCZego : NSObject

+ (instancetype)createRTC;

- (void)playSong:(NSString *)songId;

@end

NS_ASSUME_NONNULL_END
