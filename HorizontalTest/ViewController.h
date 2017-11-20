//
//  ViewController.h
//  HorizontalTest
//
//  Created by Evgeniy on 17.11.17.
//  Copyright © 2017 Evgeniy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *mainScrollView;

@property (weak, nonatomic) IBOutlet UIScrollView *secondScroll;

@property (weak, nonatomic) IBOutlet UIScrollView *yetScroll;

@end

