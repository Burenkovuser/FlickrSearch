//
//  RWTViewModelServicesImpl.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 06.07.17.
//
//

#import <Foundation/Foundation.h>
#import "RWTViewModelServices.h"

@interface RWTViewModelServicesImpl : NSObject <RWTViewModelServices>

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;

@end
