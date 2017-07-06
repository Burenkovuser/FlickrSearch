//
//  RWTViewModelServicesImpl.m
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//
//

#import "RWTViewModelServicesImpl.h"
#import "RWTFlickrSearchImpl.h"

@interface RWTViewModelServicesImpl ()

@property (strong, nonatomic) RWTFlickrSearchImpl *searchService;

@end

@implementation RWTViewModelServicesImpl

- (instancetype)init {
    if (self = [super init]) {
        _searchService = [RWTFlickrSearchImpl new];
    }
    return self;
}

- (id<RWTFlickrSearch>)getFlickrSearchService {
    return self.searchService;
}

@end

//Этот класс просто создает экземпляр RWTFlickrSearchImpl, модель слоя сервиса для поиска Flickr, и предоставляет его в viewmodel по запросу.
