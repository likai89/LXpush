//
//  FirstViewController.m
//  LXpush
//
//  Created by 李凯 on 16/7/25.
//  Copyright © 2016年 likai. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"首页";
    // Do any additional setup after loading the view.
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)btnclick {
    SecondViewController * secondVC = [[SecondViewController alloc]init];
    
        [self.navigationController pushViewController:secondVC animated:YES];


}
#pragma mark 获取点击的坐标点
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self.view];
    NSLog(@"%f============%f",touchPoint.x,touchPoint.y);
    int stringFloat = (int)(touchPoint.x);
    int stringFloat1 = (int)(touchPoint.y);
    NSLog(@"%i=========%i",stringFloat,stringFloat1);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    SecondViewController * secondVC = [[SecondViewController alloc]init];
//    
//    [self.navigationController pushViewController:secondVC animated:YES];
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
