//
//  XMIMCore.h
//  XMIMCore
//
//  Created by xmly on 2022/5/1.
//

#import <Foundation/Foundation.h>

@interface XMIMCore : NSObject

+ (instancetype)createIMCore;

- (void)playSong:(NSString *)songId;

@end
