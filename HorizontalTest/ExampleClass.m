//
//  ExampleClass.m
//  HorizontalTest
//
//  Created by iOS Evgeny on 20.11.17.
//  Copyright © 2017 Evgeniy. All rights reserved.
//

#import "ExampleClass.h"

@implementation ExampleClass


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.image = [UIImageView new];
        self.image.frame = CGRectMake(0, 0, 375, 163);
        //self.image.backgroundColor = [UIColor greenColor];
        [self addSubview:self.image];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
