//
//  YouboraIntegration.h
//
//  Created by Tiago Pereira on 13/07/2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
@import YouboraAVPlayerAdapter;

@interface YouboraIntegration : NSObject

+(void)startPluginWithOptions:(YBOptions*)options;
+(void)updateTitle:(NSString*)title;
+(void)updateSubtitles:(NSString*)subtitles;
+(void)updateResource:(NSString*)resource;
+(void)setAdapter:(AVPlayer*)player;
+(void)removeAdapter;
+(void)finishYoubora;

@end
