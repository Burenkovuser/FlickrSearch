//
//  RWTFlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"

@implementation RWTFlickrSearchViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.searchText = @"search text";
    self.title = @"Flickr Search";
}

@end
