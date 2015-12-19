//
//  FBGameViewController.m
//  Jigsaw
//
//  Created by nctarena on 15/12/18.
//  Copyright © 2015年 fb. All rights reserved.
//

#import "FBGameViewController.h"
#import "FBImageTools.h"

@interface FBGameViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation FBGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.image = [FBImageTools scaleImage:self.image andSize:self.imageView.bounds.size];
    NSArray *imageArray = [FBImageTools cutImage:self.image andHNum:3 andVNum:3 andSize:self.imageView.bounds.size];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
