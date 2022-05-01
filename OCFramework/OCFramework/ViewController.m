//
//  ViewController.m
//  OCFramework
//
//  Created by xmly on 2022/4/30.
//

#import "ViewController.h"
#import <XMLiveAudio/XMLiveAudio.h>
#import <XMMic/XMMic.h>
#import <XMMic/XMMicRTC.h>
#import <XMIMCore/XMIMCore.h>
#import <XMLiveMic/XMLiveMic.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    Header search path  修改
//    Library search path
//    Other link flags 修改

#pragma mark 1、framework 动态库
    //1、工程中，'Link Binary With Libraries'中，自动添加了.framework
    //2、动态库创建的文件如果需要被外部访问需要添加在Headers的Public中
    XMRTCZego *zego = [XMRTCZego createRTC];//没有联想就自己硬敲
    [zego playSong:@"你好"];
    
    XMRTCAgora *agora = [XMRTCAgora createAgora];
    [agora playSong:@"世界"];
    
#pragma mark 2、静态库
    //1、在需要使用的工程中，'Link Binary With Libraries'中，添加.a
    //2、静态库创建的文件如果需要被外部访问需要添加在Copy Files中
    XMMic *mic = [XMMic creatMic];
    [mic playMic:@"连麦"];
    XMMicRTC *micRTC = [XMMicRTC creatMicRTC];
    [micRTC playMic:@"连麦RTC"];
    
    XMIMCore *imcore = [XMIMCore createIMCore];
    [imcore playSong:@"私信"];
    
#pragma mark 3、framework 静态库
    //1、工程中，'Link Binary With Libraries'中，自动添加了.framework
    //2、动态库创建的文件如果需要被外部访问需要添加在Headers的Public中
    XMLiveMicService *service = [[XMLiveMicService alloc] init];
    [service serviceStart:@"开始service服务"];
    
#pragma mark 4、Mach-O Type 修改库的类型
    //Executable(可执行文件)、Dynamic Library(动态库)、Bundle、Static Library(静态库)、Relocatable Object File
    
#pragma mark 5.1、在新创建的OCTestFrameworkDemo工程中使用 framework动态库
    //1、把创建好的动态库，直接拖入OCTestFrameworkDemo工程
    //2、在OCTestFrameworkDemo工程的General->Frameworks,Libraries,and Embedded Content中，自己拖入的动态库Embed，修改为Embed & Sign
    //3、报错，在Build Settings中把Validate Workspace现成Yes，此时编译可以过了，但是有警告，再改回NO，可以编译过了，也没警告了。
    
#pragma mark 5.2、在新创建的OCTestFrameworkDemo工程中使用 .a静态库
    //1、直接把.a拖入OCTestFrameworkDemo工程
    //2、把include/XMMic里面的头文件拖入OCTestFrameworkDemo该工程
    
#pragma mark 5.3、在新创建的OCTestFrameworkDemo工程中使用 framework静态库
    //1、把创建好的动态库，直接拖入OCTestFrameworkDemo工程
    
#pragma mark 6、合并 真机和模拟器 静态库
    //真机 arm64, 模拟器 x86_64
    //lipo -create 真机framework 模拟器framework -output framework(生成的)
    //lipo -info framework //查看framework架构
    //lipo framework1 -remove arm64 -output framework(生成的) //framework是framework1移除arm64之后的架构
    //lipo framework1 -thin arm64 -output framework(生成的) //framework是从framework1中取出的arm64架构
    
#pragma mark 7、.a的本质是.o的合集
    //.a 是目标文件.o的合集，通过 ar -t 可以查看
    //ar -t，只能查看单架构的，所以如果想查看多架构的.a，需要先从.a中剥离出一种架构，然后查看这种架构的即可
    
}


@end
