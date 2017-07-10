//
//  Created by Colin Eberhardt on 23/04/2014.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "RWTSearchResultsViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import "CETableViewBindingHelper.h"

@interface RWTSearchResultsViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *searchResultsTable;
@property (strong, nonatomic) RWTSearchResultsViewModel *viewModel;
@property (strong, nonatomic) CETableViewBindingHelper *bindingHelper;

@end

@implementation RWTSearchResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self bindViewModel];
    
    UINib *nib = [UINib nibWithNibName:@"RWTSearchResultsTableViewCell" bundle:nil];
    
    self.bindingHelper =
    [CETableViewBindingHelper bindingHelperForTableView:self.searchResultsTable
                                           sourceSignal:RACObserve(self.viewModel, searchResults)
                                       selectionCommand:nil
                                           templateCell:nib];
}

- (instancetype)initWithViewModel:(RWTSearchResultsViewModel *)viewModel {
    if (self = [super init]) {
        _viewModel = viewModel;
    }
    return self;
}

- (void)bindViewModel {
    self.title = self.viewModel.title;
}
//источники данных для таблицы
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.searchResults.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [self.viewModel.searchResults[indexPath.row] title];
    return cell;
}



@end
