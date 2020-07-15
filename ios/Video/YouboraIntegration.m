//
//  YouboraIntegration.m
//  newproject
//
//  Created by Tiago Pereira on 13/07/2020.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "YouboraIntegration.h"

@implementation YouboraIntegration

static YBPlugin *plugin;

+(void)startPluginWithOptions:(YBOptions*)options {
  if (!plugin) {
    plugin = [[YBPlugin alloc] initWithOptions:options];
  }
}

+(void)updateTitle:(NSString*)title {
  plugin.options.contentTitle = title;
}

+(void)updateSubtitles:(NSString*)subtitles {
  plugin.options.contentSubtitles = subtitles;
}

+(void)updateResource:(NSString*)resource {
  plugin.options.contentResource = resource;
}

+(void)setAdapter:(AVPlayer*)player {
  [plugin setAdapter: [[YBAVPlayerAdapter alloc] initWithPlayer: player]];
}

+(void)removeAdapter {
  [plugin removeAdapter];
}

+(void)deallocYoubora {
  [plugin removeAdapter];
  [plugin fireStop];
  plugin = nil;
}

@end
