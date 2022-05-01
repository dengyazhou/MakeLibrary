//
//  XMRTCAgora.h
//  XMLiveAudio
//
//  Created by xmly on 2022/5/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMRTCAgora : NSObject

+ (instancetype)createAgora;

- (void)playSong:(NSString *)songId;

@end

NS_ASSUME_NONNULL_END
