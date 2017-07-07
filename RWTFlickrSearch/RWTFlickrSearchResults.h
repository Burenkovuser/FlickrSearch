//
//  RWTFlickrSearchResults.h
//  RWTFlickrSearch
//
//  Created by Vasilii on 07.07.17.
//
//

#import <Foundation/Foundation.h>

@interface RWTFlickrSearchResults : NSObject

@property (strong, nonatomic) NSString *searchString;
@property (strong, nonatomic) NSArray *photos;
@property (nonatomic) NSUInteger totalResults;

@end
