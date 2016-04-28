//
//  ViewController.m
//  KD4
//
//  Created by watanabe_daisuke on 2016/04/25.
//  Copyright © 2016年 watanabe_daisuke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// なんでヘッダにUIImageViewを宣言してるのに、UIButtonだけこっちに宣言してるの？
@property (weak, nonatomic) IBOutlet UIButton *ViewController;

// これも同上の理由でヘッダファイルに書くべき
- (IBAction)CameraButton:(UIButton *)sender;
@end

@implementation ViewController

// できればハンドラ系は下の方に書きたいね。
- (IBAction)CameraButton:(UIButton *)sender {
    // カメラおしても何もおこらないじゃん。
    // 何度もループする原因、前に考察したよね？それがしっかり理解できてれば、ループ問題は解決できるはずです。
}

//書き出し ← この認識は間違い。この画面のロードが終了した時点で呼ばれるハンドラってだけ。
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = self.view.frame;
    [self.view addSubview:self.imageView];
}

- (void)viewDidAppear:(BOOL)animated {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imagePicker animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (void)imagePickerController :(UIImagePickerController *)picker
        didFinishPickingImage :(UIImage *)image editingInfo :(NSDictionary *)editingInfo {
    NSLog(@"selected");
    [self.imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end