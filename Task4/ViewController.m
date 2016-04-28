//
//  ViewController.m
//  KD4
//
//  Created by watanabe_daisuke on 2016/04/25.
//  Copyright © 2016年 watanabe_daisuke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *ViewController;

- (IBAction)CameraButton:(UIButton *)sender;
@end

@implementation ViewController

- (IBAction)CameraButton:(UIButton *)sender {
}
//書き出し
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