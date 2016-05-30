//
//  ViewController.m
//  Aula6_Calculadora
//
//  Created by md10 on 5/24/16.
//  Copyright © 2016 Infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btNamber:(UIButton *)sender {
    
    NSLog(@"Botao %@", sender.titleLabel.text);
    
    if (self.lbResultado.text.intValue == 0){
        
        self.lbResultado.text = sender.titleLabel.text;
    
    } else {
        
        NSString * num = sender.titleLabel.text;
        NSString * newNumber = [NSString stringWithFormat:@"%@%@", self.lbResultado.text, num];
        
        self.lbResultado.text = newNumber;
    }
}


- (IBAction)btOperador:(UIButton *)sender {
    
    operador = sender.titleLabel.text;
    primeiroNumero = self.lbResultado.text.integerValue;
    self.lbResultado.text = @"0";
}

- (IBAction)btTotal:(UIButton *)sender {
    
    if ([operador isEqual:@"+"]){
        primeiroNumero = primeiroNumero + self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"-"]) {
        primeiroNumero = primeiroNumero - self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"%"]) {
        primeiroNumero = primeiroNumero / self.lbResultado.text.integerValue;
        
    } else if ([operador isEqual:@"x"]) {
        primeiroNumero = primeiroNumero * self.lbResultado.text.integerValue;
        
    }
    
    
    self.lbResultado.text = [NSString stringWithFormat:@"%ld", primeiroNumero];
}

- (IBAction)btClear:(UIButton *)sender {
    
    operador = @"";
    primeiroNumero = 0;
    self.lbResultado.text = @"0";
}
@end
