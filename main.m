/*
    Stack implementation with Array.
 */
#import <Foundation/Foundation.h>
#import "Stack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stack *st = [[Stack alloc]init];

        NSOperationQueue *queue1 = [[NSOperationQueue alloc]init];
        queue1.maxConcurrentOperationCount = 1;
        
        NSOperationQueue *queue2 = [[NSOperationQueue alloc]init];
        queue2.maxConcurrentOperationCount = 1;
        
        NSOperationQueue *queue3 = [[NSOperationQueue alloc]init];
        queue3.maxConcurrentOperationCount = 1;
        
        NSOperationQueue *queue4 = [[NSOperationQueue alloc]init];
        queue4.maxConcurrentOperationCount = 1;
        
        NSOperationQueue *queue5 = [[NSOperationQueue alloc]init];
        queue5.maxConcurrentOperationCount = 1;
        
        NSNumber *n1 = @1;
        NSNumber *n2 = @2;
        NSNumber *n3 = @3;

        NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
            [st push:n1];
        }];
        
        NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
            [st push:n2];
        }];
        
        NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
            [st pop];
        }];
        
        NSBlockOperation *op4 = [NSBlockOperation blockOperationWithBlock:^{
            [st push:n3];
        }];
        
        NSBlockOperation *op5 = [NSBlockOperation blockOperationWithBlock:^{
            [st top];
        }];
        
        [queue1 addOperation:op1];
        [queue2 addOperation:op2];
        [queue3 addOperation:op3];
        [queue4 addOperation:op4];
        [queue5 addOperation:op5];
    }
    return 0;
}
