//
//  ViewController.m
//  OCTestFrameworkDemo
//
//  Created by xmly on 2022/5/1.
//

#import "ViewController.h"
#import <XMLiveAudio/XMLiveAudio.h>
#import "include/XMMic/XMMicRTC.h" //#import "XMMicRTC.h"
#import <XMLiveMic/XMLiveMic.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //XMLiveAuido 是framework动态库
    //XMMic 是.a静态库
    //XMLiveMic 是framework静态库
    
    XMRTCZego *zego = [XMRTCZego createRTC];
    [zego playSong:@"哈哈"];
    
    XMMicRTC *rtc = [XMMicRTC creatMicRTC];
    [rtc playMic:@"世界"];
    
    XMLiveMicService *service = [[XMLiveMicService alloc] init];
    [service serviceStart:@"嘿嘿"];
}


@end
