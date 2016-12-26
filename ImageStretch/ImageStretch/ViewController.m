//
//  ViewController.m
//  Text_ImageView
//
//  Created by 毛韶谦 on 2016/12/19.
//  Copyright © 2016年 毛韶谦. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *textImageView;
@property (strong, nonatomic) IBOutlet UIImageView *originalImageView;
@property (strong, nonatomic) IBOutlet UIImageView *badImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"圆角矩形-7-拷贝"];

    
    //原始图片样式添加
    self.originalImageView.image = image;
    
    //没处理好的图片
    self.badImageView.image = image;
    
    //图片处理后的
    [self.textImageView setImage:[image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height*0.5]];
    
    
    
//    CGFloat top = 25; // 顶端盖高度
//    CGFloat bottom = 25 ; // 底端盖高度
//    CGFloat left = 10; // 左端盖宽度
//    CGFloat right = 10; // 右端盖宽度
//    UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
//    // 指定为拉伸模式，伸缩后重新赋值
//    _textImageView.image = [_textImageView.image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeTile];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
