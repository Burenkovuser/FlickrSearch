//
//  RWTSearchResultsViewModel.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 09.07.17.
//
//

#import "RWTSearchResultsViewModel.h"

@implementation RWTSearchResultsViewModel

- (instancetype)initWithSearchResults:(RWTFlickrSearchResults *)results services:(id<RWTViewModelServices>)services {
    if (self = [super init]) {
        _title = results.searchString;
        _searchResults = results.photos;
    }
    return self;
} 

@end
