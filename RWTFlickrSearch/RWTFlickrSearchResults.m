//
//  RWTFlickrSearchResults.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 07.07.17.
//
//

#import "RWTFlickrSearchResults.h"

@implementation RWTFlickrSearchResults

- (NSString *)description {
    return [NSString stringWithFormat:@"searchString=%@, totalresults=%lU, photos=%@",
            self.searchString, (unsigned long)self.totalResults, self.photos];
}

@end
