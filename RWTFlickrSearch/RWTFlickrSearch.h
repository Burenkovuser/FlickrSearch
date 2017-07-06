//
//  RWTFlickrSearch.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@protocol RWTFlickrSearch <NSObject>

- (RACSignal *)flickrSearchSignal:(NSString *)searchString;

@end

//Этот протокол определяет начальный интерфейс для модели слоя, и перемещает себя ответственность за поиск на Flickr из в viewmodel.
