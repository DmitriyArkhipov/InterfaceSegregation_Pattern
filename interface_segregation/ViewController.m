//
//  ViewController.m
//  interface_segregation
//
//  Created by Dmitriy Arkhipov on 06.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"

#import "MobileInterface.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    Photograph *photogragh = [[Photograph alloc] init];
    
    iPhone *iphone = [[iPhone alloc] init];
    
    Camera *camera = [[Camera alloc] init];
    
    
    [photogragh takePhotoWith:iphone];
    
    NSLog(@"===================================");
    
    [photogragh takePhotoWith:camera];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
