//
//  TestViewController.m
//  HorizontalTest
//
//  Created by Evgeniy on 17.11.17.
//  Copyright © 2017 Evgeniy. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.mainScrollView.contentSize = CGSizeMake(1000, 200);
    UIImage* imageHul = [UIImage imageNamed:@"hulk"];
    UIImage* imageIron = [UIImage imageNamed:@"ironman"];
    
    UIImageView* imageHulk = [[UIImageView alloc] initWithImage:imageHul];
    UIImageView* imageIronMan = [[UIImageView alloc] initWithImage:imageIron];
    
    
    
    
    self.mainScrollView.pagingEnabled = YES;
    
    NSMutableArray* array = [NSMutableArray arrayWithObjects:imageIronMan, imageHulk, nil];
    CGFloat width = self.mainScrollView.frame.size.width;
    for (UIImageView* view in array) {
        UIImageView* image = view;
        image.frame = CGRectMake((self.view.frame.size.width * [array indexOfObject:view]) + 6, 0, self.mainScrollView.frame.size.width - 12, self.mainScrollView.frame.size.height);
        
        CGSize contentSize = self.mainScrollView.frame.size;
        contentSize.width = array.count * width;
        self.mainScrollView.contentSize = contentSize;
        [self.mainScrollView addSubview:image];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
