//
//  MSConfirmAlertView.m
//
//  Created by Matt Stith on 2/4/09.
//  Copyright 2009 Insomnia Addict. All rights reserved.
//

#import "MSConfirmAlertView.h"


@implementation MSConfirmAlertView
-(id)initWithTitle:(NSString*)title message:(NSString*)messageText cancel:(NSString*)cancelText confirm:(NSString*)confirmText target:(id)tar selector:(SEL)select{
	self = [super initWithTitle:title message:messageText delegate:self cancelButtonTitle:cancelText otherButtonTitles:confirmText,nil];
	if (self) {
		[self setTarget:tar selector:select];
	}
	return self;
}
-(void)setTarget:(id)tar selector:(SEL)select {
	if (![tar respondsToSelector:select]) {
		NSAssert(NO,@"Target doesn't respond to selector");
	}
	target = tar;
	method = select;
}
-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if ([alertView cancelButtonIndex] == buttonIndex) {
		return;
	} else {
		if ([target respondsToSelector:method]) {
			[target performSelector:method];
		}
	}
}
@end
