//
//  RWTFlickrSearchViewModel.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "RWTViewModelServices.h"

@interface RWTFlickrSearchViewModel : NSObject

- (instancetype) initWithServices:(id<RWTViewModelServices>)services;

@property(nonatomic, strong) NSString *searchText;
@property(nonatomic, strong) NSString * title;
@property (strong, nonatomic) RACCommand *executeSearch;//RACCommand это и сигнал действия пользователя и одновременно текущие состояние интерфейса




@end
