//
//  ViewController.m
//  HallofFramesUpdate
//
//  Created by Chee Vue on 5/20/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "RootViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "ColorSelectViewController.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate, ColorSelectViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *pictures;
@property NSIndexPath *selectedIndexPath;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Picture *michaeljordan = [[Picture alloc] initWithPicture:[UIImage imageNamed:@"michaeljordan.png"] frameColor:[UIColor grayColor]];
    Picture *jenniferlopez = [[Picture alloc] initWithPicture:[UIImage imageNamed:@"jenniferlopez.jpg"] frameColor:[UIColor grayColor]];
    Picture *brucelee = [[Picture alloc] initWithPicture:[UIImage imageNamed:@"brucelee.jpg"] frameColor:[UIColor grayColor]];
    Picture *annakendrick = [[Picture alloc] initWithPicture:[UIImage imageNamed:@"annakendrick.jpg"] frameColor:[UIColor grayColor]];
    Picture *johnnydepp = [[Picture alloc] initWithPicture:[UIImage imageNamed:@"johnnydepp.jpg"] frameColor:[UIColor grayColor]];

    self.pictures = [NSMutableArray arrayWithObjects:michaeljordan, jenniferlopez, brucelee, annakendrick, johnnydepp, nil];

}

#pragma mark - UITableView Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.pictures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PictureCollectionViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    Picture *picture = [self.pictures objectAtIndex:indexPath.row];  //get picture at row index

    cell.imageView.image = picture.image;
    cell.backgroundColor = picture.frameColor;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.selectedIndexPath = indexPath;
}

#pragma mark - Custom Delegate Methods

-(void)colorSelectViewController:(id)viewController didSelectColor:(UIColor *)color{
    //We want the delegate to provide the color selected and set the color to the table cell's background
    Picture *picture = [self.pictures objectAtIndex:self.selectedIndexPath.row]; //get picture at row index
    picture.frameColor = color;

    [self.tableView reloadData];
    //[self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Segue Methods

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ColorSelectViewController *colorSelectVC = [segue destinationViewController];
    colorSelectVC.delegate = self;
}

@end
