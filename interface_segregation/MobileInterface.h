//
//  MobileInterface.h
//  interface_segregation
//
//  Created by Dmitriy Arkhipov on 06.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//
// Пример реализации принципа разделения интерфейсов и полиморфизма в Objective-C
// (+ соблюдается принцип Б.Лисков)

#import <Foundation/Foundation.h>

@protocol ICallService <NSObject>

- (void) call;

@end


@protocol IPhotoMaker <NSObject>

- (void) takePhoto;

@end



@protocol IVideoMaker <NSObject>

- (void) makeVideo;

@end

@protocol IMusicPlayer <NSObject>

- (void) playMusic;

@end


@interface Camera : NSObject <IPhotoMaker>

- (void) takePhoto;

@end



@interface iPhone : NSObject <ICallService,IPhotoMaker,IVideoMaker,IMusicPlayer>

- (void) call;
- (void) takePhoto;
- (void) makeVideo;
- (void) playMusic;

@end



@interface Photograph : NSObject

/**
 клиенту не важно, что передается в метод takePhotoWith - фотокамера или телефон, главное, что этот объект обладается только всем необходимым для фотографирования функционалом и больше ничем.
 
 @param photoMaker Объект умеющий фотографировать
 
 */

- (void) takePhotoWith: (id<IPhotoMaker>) photoMaker;

@end