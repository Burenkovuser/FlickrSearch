//
//  RWTFlickrSearchViewModel.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import "RWTFlickrSearchViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation RWTFlickrSearchViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize {
    self.title = @"Flickr Search";
    RACSignal *validSearchSignal = [[RACObserve(self, searchText)
                                    map:^id(NSString *text) {
                                        return @(text.length > 3);}]
                                    distinctUntilChanged];
    [validSearchSignal subscribeNext:^(id x) {
        NSLog(@"search text is valid %@", x);
    }];
    
    //создает команду, которая включается, когда validSearchSignal  истинный.
    self.executeSearch =
    [[RACCommand alloc] initWithEnabled:validSearchSignal
                            signalBlock:^RACSignal *(id input) {
                                return  [self executeSearchSignal];
                            }];
}

- (RACSignal *)executeSearchSignal {
    return [[[[RACSignal empty]
              logAll]
             delay:2.0]
            logAll];
}

@end
