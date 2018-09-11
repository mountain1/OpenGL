//
//  ViewController.m
//  转场动画
//
//  Created by Dean on 2018/7/11.
//  Copyright © 2018年 tz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) NSArray *imgs;
@property (nonatomic, assign) NSInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _imgs = @[@"view0", @"view1", @"view2"];
    _index = 0;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
    _index++;
    if (_index == 3) {
        _index = 0;
    }
    NSString *imgName = _imgs[_index];
    self.imgView.image = [UIImage imageNamed:imgName];
    CATransition *anim = [CATransition animation];
    anim.type = @"pageCurl";
    anim.startProgress = 0.3;
    anim.endProgress = 0.6;
    anim.duration = 0.5;
    [self.imgView.layer addAnimation:anim forKey:nil];
}
@end
