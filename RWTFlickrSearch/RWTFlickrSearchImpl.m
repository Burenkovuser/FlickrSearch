//
//  RWTFlickrSearchImpl.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//
//

#import "RWTFlickrSearchImpl.h"

@implementation RWTFlickrSearchImpl

- (RACSignal *)flickrSearchSignal:(NSString *)searchString {
    return [[[[RACSignal empty]
              logAll]
             delay:2.0]
            logAll];
}

@end
