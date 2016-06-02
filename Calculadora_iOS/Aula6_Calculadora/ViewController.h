//
//  ViewController.h
//  Aula6_Calculadora
//
//  Created by md10 on 5/24/16.
//  Copyright © 2016 Infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    NSInteger primeiroNumero;
    NSString * operador;
}

- (IBAction)btNamber:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UILabel *lbResultado;


- (IBAction)btOperador:(UIButton *)sender;


- (IBAction)btTotal:(UIButton *)sender;


- (IBAction)btClear:(UIButton *)sender;


@end

