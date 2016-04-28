//
//  ViewController.h
//  KD4
//
//  Created by watanabe_daisuke on 2016/04/25.
//  Copyright © 2016年 watanabe_daisuke. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (strong, nonatomic) UIImageView *imageView; //イメージビューを宣言
@property (weak, nonatomic) IBOutlet UIButton *ViewController; //Buttonを宣言

- (IBAction)CameraButton:(UIButton *)sender;

@end
