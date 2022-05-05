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
    
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath stringByAppendingPathComponent:@"/Frameworks/XMLiveAudio.framework/Image.bundle"];
    NSLog(@"%@",bundlePath);
    NSBundle *resoure_bundle = [NSBundle bundleWithPath:bundlePath];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 70, 70)];
    imageView.image = [UIImage imageNamed:@"默认头像1" inBundle:resoure_bundle compatibleWithTraitCollection:nil];
    [self.view addSubview:imageView];
    
    XMMicRTC *rtc = [XMMicRTC creatMicRTC];
    [rtc playMic:@"世界"];
    
    XMLiveMicService *service = [[XMLiveMicService alloc] init];
    [service serviceStart:@"嘿嘿"];
}


@end
