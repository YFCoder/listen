//
//  ViewController.m
//  listen
//
//  Created by 黄志伟 on 16/5/31.
//  Copyright © 2016年 黄志伟. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    // 给出soundID
    
    CFURLRef url = (__bridge CFURLRef)[[NSBundle mainBundle] URLForResource:@"春上村树" withExtension:nil];
    SystemSoundID soundID = 0;
    
    AudioServicesCreateSystemSoundID(url, &soundID);
    //播放音乐
    AudioServicesPlayAlertSound(soundID);
    
}

@end
