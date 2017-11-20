//
//  ViewController.m
//  HorizontalTest
//
//  Created by Evgeniy on 17.11.17.
//  Copyright © 2017 Evgeniy. All rights reserved.
//

#import "ViewController.h"
#import "ExampleClass.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray * imagesArray;
@property (strong, nonatomic) NSMutableArray * imageArrayOne;
//@property (strong, nonatomic) UIImageView* imageTiger;
@property (assign, nonatomic) CGFloat dynamic;

@property (nonatomic, strong) ExampleClass* imageTiger;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ExampleClass* exClass = [[ExampleClass alloc] init];
    
    
    
    UIImage* imageTig = [UIImage imageNamed:@"tiger"];
    UIImage* imageMou = [UIImage imageNamed:@"mount"];
    UIImage* imageIron = [UIImage imageNamed:@"ironman"];
    
    UIImage* imageHul = [UIImage imageNamed:@"hulk"];
    UIImage* imageAmer = [UIImage imageNamed:@"america"];
    UIImage* imageFor = [UIImage imageNamed:@"for"];
    
    UIImage* imageHor = [UIImage imageNamed:@"hor"];
    UIImage* imageGab = [UIImage imageNamed:@"gabe"];
    UIImage* imageSpedy = [UIImage imageNamed:@"spider"];
    //self.mainScrollView.frame = self.view.frame;
    self.mainScrollView.pagingEnabled = YES;
    self.secondScroll.pagingEnabled = YES;
    self.yetScroll.pagingEnabled = YES;
//    self.imageTiger = [[UIImageView alloc] initWithImage:imageTig];
//
//    UIImageView* imageMount = [[UIImageView alloc] initWithImage:imageMou];
//    UIImageView* imageIronMan = [[UIImageView alloc] initWithImage:imageIron];
//
//    UIImageView* imageHulk = [[UIImageView alloc] initWithImage:imageHul];
//    UIImageView* imageAmerica = [[UIImageView alloc] initWithImage:imageAmer];
//    UIImageView* imageForest = [[UIImageView alloc] initWithImage:imageFor];
//
//    UIImageView* imageThor = [[UIImageView alloc] initWithImage:imageHor];
//    UIImageView* imageSpider = [[UIImageView alloc] initWithImage:imageSpedy];
//    UIImageView* imageGabe = [[UIImageView alloc] initWithImage:imageGab];
    
    self.mainScrollView.delegate = self;
    ExampleClass* imageMount = [[ExampleClass alloc] init];
    imageMount.image.image = imageMou;
    [imageMount addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageIronMan = [[ExampleClass alloc] init];
    imageIronMan.image.image =imageIron;
    [imageIronMan addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageHulk = [[ExampleClass alloc] init];
    imageHulk.image.image = imageHul;
    [imageHulk addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageAmerica = [[ExampleClass alloc] init];
    imageAmerica.image.image = imageAmer;
    [imageAmerica addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageForest = [[ExampleClass alloc] init];
    imageForest.image.image = imageFor;
    [imageForest addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageThor = [[ExampleClass alloc] init];
    imageThor.image.image = imageHor;
    [imageThor addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageSpider = [[ExampleClass alloc] init];
    imageSpider.image.image = imageSpedy;
    [imageSpider addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    ExampleClass* imageGabe = [[ExampleClass alloc] init];
    imageGabe.image.image = imageGab;
    [imageGabe addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];

    self.imageTiger = [[ExampleClass alloc] init];
    self.imageTiger.image.image = imageTig;
    //imageTiger.backgroundColor = [UIColor redColor];
    [self.imageTiger addTarget:self action:@selector(longTapFrom:) forControlEvents:UIControlEventTouchDown];
    [self.imageTiger addTarget:self action:@selector(longTapFrom2:) forControlEvents:UIControlEventTouchUpInside];
    [self.imageTiger addTarget:self action:@selector(longTapFrom3:) forControlEvents:UIControlEventTouchUpOutside];
    
    //NSMutableArray *wordsArray = [NSMutableArray arrayWithObjects:@"AAA", @"BBB", @"CCCC", @"dd", @"eeeee", @"ffff", @"g", @"hhh", @"iiiiiii",  @"jjjj", @"kkkkk", @"lllll", nil];
    self.imageArrayOne = [NSMutableArray arrayWithObjects:self.imageTiger,imageMount,imageForest, nil];//imageIronMan,imageHulk,imageAmerica,
    //NSMutableArray* imageArrayTwo = [NSMutableArray arrayWithObjects:imageIronMan,imageHulk,imageAmerica, nil];//
    //NSMutableArray* imageArrayThree = [NSMutableArray arrayWithObjects:imageGabe,imageThor,imageSpider, nil];//
    self.imageTiger.userInteractionEnabled = YES;
//    UILongPressGestureRecognizer* longTap = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longTapFrom:)];
//    longTap.minimumPressDuration = 0.01;
//    longTap.delegate = self;
    //[self.imageTiger addGestureRecognizer:longTap];
    
//    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(longTapFrom:)];
//
//    [self.imageTiger addGestureRecognizer:tap];
    
    
    
    [self setScroll:self.imageArrayOne in:self.mainScrollView];
    
    //[self setScroll:imageArrayTwo in:self.secondScroll];
    
   // [self setScroll:imageArrayThree in:self.yetScroll];
    
}


- (void)scrollViewDidScroll:(UIScrollView *)sender{
    //executes when you scroll the scrollView
    //NSLog(@"scrollViewDidScroll");
    [UIView animateWithDuration:0.2 animations:^{
        self.imageTiger.transform = CGAffineTransformMakeScale(0.9f, 0.9f);
    }];
}



- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    //decelerate = NO;
    
        NSLog(@"STOP");
        [UIView animateWithDuration:0.2 animations:^{
            self.imageTiger.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
        }];
    

}

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    /* Detect touch anywhere */
//    UITouch *touch = [touches anyObject];
//    CGPoint touchPoint = [touch locationInView:self.imageTiger];
//    NSLog(@"scrollViewDidScroll");
//
//
//}

- (void) longTapFrom3:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        self.imageTiger.transform = CGAffineTransformMakeScale(0.1f, 0.1f);
    }];
}

- (void) longTapFrom2:(id)sender {
    NSLog(@"Tapped end");
    [UIView animateWithDuration:0.2 animations:^{
        self.imageTiger.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
    }];
}

- (void) longTapFrom:(id)sender {
    NSLog(@"Teped");
    
    [UIView animateWithDuration:0.2 animations:^{
        self.imageTiger.transform = CGAffineTransformMakeScale(0.9f, 0.9f);
    }];
    
    
    
//    if (longTap.state == UIGestureRecognizerStateBegan) {
//
//        [UIView animateWithDuration:0.3 animations:^{
//            self.imageTiger.transform = CGAffineTransformMakeScale(0.9f, 0.9f);
//
//        }];
//
//    }else if (longTap.state == UIGestureRecognizerStateChanged) {
//        //NSLog(@"Tap %@", NSStringFromCGPoint([longTap locationInView:self.imageTiger]));
//        //self.dynamic = self.imageTiger.frame.origin.x;
//
//
//    }
//
//    else if (longTap.state == UIGestureRecognizerStateEnded) {
//        //NSLog(@"2HEIGHT ----- %f, 2WIDTH ----- %f, 2pointX ---- %f, 2pointY --- %f",self.imageTiger.frame.size.height, self.imageTiger.frame.size.width, self.imageTiger.frame.origin.x, self.imageTiger.frame.origin.y);
//        [UIView animateWithDuration:0.3 animations:^{
//            self.imageTiger.transform = CGAffineTransformMakeScale(1.0f, 1.0f);
//        }];
//    }
}

- (void) setScroll:(NSMutableArray*) array in:(UIScrollView*) scroll {
    CGFloat Width = scroll.frame.size.width;
    for (int i = 0; i < array.count; i++) {
        UIImageView* image = array[i];
        image.frame = CGRectMake((self.view.frame.size.width * i) + 6, 0, scroll.frame.size.width - 12, scroll.frame.size.height);
        //image.contentMode = UIViewContentModeScaleAspectFit;
        //        self.mainScrollView.contentSize.width = self.imageArrayOne * 6;
        image.layer.cornerRadius = 30;
        image.clipsToBounds = YES;
        CGSize contentSize = scroll.frame.size;
        contentSize.width = array.count * Width; //self.mainScrollView.frame.size.width * i + 1;//self.imageArrayOne.count * Width;
        scroll.contentSize = contentSize;
        [scroll addSubview:image];
    }
}


@end
