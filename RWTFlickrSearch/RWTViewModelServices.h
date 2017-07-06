//
//  RWTViewModelServices.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//
//

#import <Foundation/Foundation.h>
#import "RWTFlickrSearch.h"

@protocol RWTViewModelServices <NSObject>

- (id<RWTFlickrSearch>) getFlickrSearchService;

@end
//чтобы получить ссылку на реализацию протокола RWTFlickrSearch.
