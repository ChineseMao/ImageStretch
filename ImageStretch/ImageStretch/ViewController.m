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
    
    // 处理图片
    switch (3) {
        case 1:
        {
            //图片处理后的 将被弃用 方法一：
            
            //这个函数是UIImage的一个实例函数，它的功能是创建一个内容可拉伸，而边角不拉伸的图片，需要两个参数，第一个是左边不拉伸区域的宽度，第二个参数是上面不拉伸的高度。
            //根据设置的宽度和高度，将接下来的一个像素进行左右扩展和上下拉伸。
            [self.textImageView setImage:[image stretchableImageWithLeftCapWidth:image.size.width*0.5 topCapHeight:image.size.height*0.5]];
            //注意：可拉伸的范围都是距离leftCapWidth后的1竖排像素，和距离topCapHeight后的1横排像素。

        }
            break;
        case 2:
        {
            //处理图片 iOS 6 方法二：
            CGFloat width = image.size.width;
            CGFloat height = image.size.height;
            
            CGFloat top = height/2.0f - 0.5f; // 顶端盖高度
            CGFloat bottom = height/2.0f - 0.5f ; // 底端盖高度
            CGFloat left = width/2.0f - 0.5f; // 左端盖宽度
            CGFloat right = width/2.0f - 0.5f; // 右端盖宽度
            UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
            // 指定为拉伸模式，伸缩后重新赋值
            
            //UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
            //UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图片
            _textImageView.image = [image resizableImageWithCapInsets:insets resizingMode:UIImageResizingModeTile];
            
        }
            break;
        case 3:
        {
            //处理图片 iOS 5 方法三：
            CGFloat width = image.size.width;
            CGFloat height = image.size.height;
            
            CGFloat top = height/2.0f - 0.5f; // 顶端盖高度
            CGFloat bottom = height/2.0f - 0.5f ; // 底端盖高度
            CGFloat left = width/2.0f - 0.5f; // 左端盖宽度
            CGFloat right = width/2.0f - 0.5f; // 右端盖宽度
            UIEdgeInsets insets = UIEdgeInsetsMake(top, left, bottom, right);
            
            //创建 一个可变的image版本，内部平铺，类：UIImageResizingModeTile模式；
            self.textImageView.image = [image resizableImageWithCapInsets:insets];
        }
            break;
        case 4:
            
            break;
        case 5:
            
            break;
            
        default:
            break;
    }
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
