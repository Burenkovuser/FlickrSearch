//
//  RWTFlickrSearchViewModel.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//  Copyright © 2017 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface RWTFlickrSearchViewModel : NSObject

@property(nonatomic, strong) NSString *searchText;
@property(nonatomic, strong) NSString * title;
@property (strong, nonatomic) RACCommand *executeSearch;//RACCommand это и сигнал действия пользователя и одновременно текущие состояние интерфейса

@end
