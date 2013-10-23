//
//  VerElementoDViewController.m
//  Turistiando
//
//  Created by Macias on 15/09/13.
//  Copyright (c) 2013 Turistiando Colombia. All rights reserved.
//

#import "VerElementoDViewController.h"
#import "CrearExperienciaActivCell.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "Turistiando.h"

@interface VerElementoDViewController ()

@end

@implementation VerElementoDViewController

@synthesize fotoprevia = _fotoprevia;


/*!
___________________________________________________________________________________________________
Metodos de inicializacion.
!*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    _tablaExperiencias.dataSource = self;
    _tablaExperiencias.delegate = self;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*!
 ___________________________________________________________________________________________________
 Metodos de objetos de interfaz.
 !*/


/*!
 @method Metodo que determina si es possible mostar la vista de la libreria de fotos, si  el dispositivo soporta lo el tipo fuerte soliciado se presenta la vista
 !*/
-(void) presentarImagePickerL:(UIImagePickerControllerSourceType)sourceType sender:(UIButton *)sender
{
    if([UIImagePickerController isSourceTypeAvailable:sourceType])
    {
        NSArray * arregloTipoMedia = [UIImagePickerController availableMediaTypesForSourceType:sourceType];
        if ([arregloTipoMedia containsObject:(NSString *)kUTTypeImage]) {
            UIImagePickerController *picker = [[UIImagePickerController alloc]init];
            picker.sourceType = sourceType;
            picker.mediaTypes = @[(NSString *)kUTTypeImage];
            picker.allowsEditing = YES;
            picker.delegate = self;
            
            [self presentViewController:picker animated: YES  completion:nil];
            
            
        }
    }
}

/*!
 @method Metodo que determina si es possible mostar la vista de la camara , si  el dispositivo soporta lo el tipo fuerte soliciado se presenta la vista
 !*/
-(void) presentarImagePicker:(UIImagePickerControllerSourceType)sourceType sender:(id)sender
{
    if([UIImagePickerController isSourceTypeAvailable:sourceType])
    {
        NSArray * arregloTipoMedia = [UIImagePickerController availableMediaTypesForSourceType:sourceType];
        //pregunta si el controlador puede manejar fotos
        if ([arregloTipoMedia containsObject:(NSString *)kUTTypeImage]) {
            //inicializa el controlador que maneja la camara y lo configura con lo solicitado
            UIImagePickerController *pickerC = [[UIImagePickerController alloc]init];
            pickerC.sourceType = sourceType;
            pickerC.mediaTypes = @[(NSString *)kUTTypeImage];
            pickerC.allowsEditing = YES;
            pickerC.delegate = self;
            
            [self presentViewController:pickerC animated: YES  completion:nil];

            
        }
    }
}

/*!
 @method Metodo que al presionar el boton de cancelar en la camara se quite el controlador
 !*/
-(void) imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*!
 @method Metodo que se ejecuta cuando el usuario acepta la foto que toma. Ademas la muestra en la vista anterior.
 !*/

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // se extrae el objeto de la foto del controlador de la camara y se pregunta si fue editada
    UIImage *editada = info[UIImagePickerControllerEditedImage];
    
    if (!editada) editada = info[UIImagePickerControllerOriginalImage];
    UIImageView* vistaI = [[UIImageView alloc]initWithImage:editada];
    CGRect frame1 = vistaI.frame;
    frame1.size.height = 105;
    frame1.size.width = 180;
    vistaI.frame = frame1;
    vistaI.center = CGPointMake(165, 175);
    self.fotoprevia = vistaI;
    [self.tablaExperiencias reloadData];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CrearExperienciaActivCell* celda = [tableView dequeueReusableCellWithIdentifier:@"nuevo" forIndexPath:indexPath];
    if (self.fotoprevia!=nil) {
        
        celda.tomarFoto.hidden = YES;
        celda.libreria.hidden = YES;
        [celda addSubview:self.fotoprevia];
    }
    return celda;
}

/*!
 ___________________________________________________________________________________________________
 Metodos Auxiliares.
 !*/

/*!
 @method Metodo que es usado como accion para cuando el usuario presione el Boton de tomar foto. La funcion de este metodo es llamar al metodo que presenta la vista de la camara.
 !*/

-(IBAction)tomarFoto:(id)sender
{
    [self presentarImagePicker: UIImagePickerControllerSourceTypeCamera sender:sender];
}


/*!
 @method Metodo que es usado como accion para cuando el usuario presione el Boton de escojer foto de libreria.  La funcion de este metodo es llamar al metodo que presenta la vista de la libreria.
 !*/
- (IBAction)escojerFoto:(UIButton *)sender {
    
    [self presentarImagePickerL: UIImagePickerControllerSourceTypePhotoLibrary sender:sender];
    
}
- (IBAction)agregar:(id)sender {
    self.fotoprevia = nil;
}


@end
