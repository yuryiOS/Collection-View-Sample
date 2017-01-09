//
//  CVSCollectionItemViewController.m
//  Collection View Sample
//
//  Created by Yury on 1/7/17.
//
//

#import "CVSCollectionItemViewController.h"
#import "CVSCollectionItemViewModel.h"

@interface CVSCollectionItemViewController ()<UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UISwitch *switchControl;

@end

@implementation CVSCollectionItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateData];
}

- (void)updateData{
    self.view.backgroundColor = self.viewModel.color;
    _textField.text = self.viewModel.text;
    _switchControl.on = self.viewModel.isOn;
}

- (CVSCollectionItemViewModel *)viewModel{
    if (!_viewModel){
        _viewModel = [CVSCollectionItemViewModel new];
        __weak CVSCollectionItemViewController *weakSelf = self;
        _viewModel.dataUpdated = ^(){
            [weakSelf updateData];
        };
    }
    
    return _viewModel;
}

#pragma mark <UITextFieldDelegate>
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    [self.viewModel updateText:newString];
    
    return NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    
    return YES;
}

#pragma mark - Actions
- (IBAction)colorButtonPressed:(id)sender{
    [self.viewModel changeColor];
}

- (IBAction)switchControlValueChanged:(id)sender{
    UISwitch *switchControl = (UISwitch *)sender;
    [self.viewModel updateIsOn:switchControl.isOn];
}

@end
