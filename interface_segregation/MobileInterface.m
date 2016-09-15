//
//  MobileInterface.m
//  interface_segregation
//
//  Created by Dmitriy Arkhipov on 06.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "MobileInterface.h"

@implementation iPhone

- (void) call {
    NSLog(@"iPhone call");
}

- (void) takePhoto {
    NSLog(@"iPhone takePhoto");
}

- (void) makeVideo {
    NSLog(@"iPhone makeVideo");
}

- (void) playMusic {
    NSLog(@"iPhone playMusic");
}

@end


@implementation Camera

- (void) takePhoto {
    NSLog(@"Camera takePhoto");
}

@end


@implementation Photograph

- (void) takePhotoWith:(id<IPhotoMaker>)photoMaker {

    [photoMaker takePhoto];
}
@end