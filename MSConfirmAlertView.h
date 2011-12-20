//
//  MSConfirmAlertView.h
//
//  Created by Matt Stith on 2/4/09.
//  Copyright 2009 Insomnia Addict. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MSConfirmAlertView : UIAlertView <UIAlertViewDelegate> {
	id target;
	SEL method;
}
-(id)initWithTitle:(NSString*)title message:(NSString*)messageText cancel:(NSString*)cancelText confirm:(NSString*)confirmText target:(id)tar selector:(SEL)select;
-(void)setTarget:(id)tar selector:(SEL)select;
@end
