#include "principal.h"
#include "ui_principal.h"
#include <stdio.h>
#include <stdlib.h>
extern int yy1restart( FILE* archivo);
extern int yy1parse();

extern int yy2restart( FILE* archivo);
extern int yy2parse();

Principal::Principal(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::Principal)
{
    ui->setupUi(this);
}

Principal::~Principal()
{
    delete ui;
}

void Principal::on_pushButton_clicked()
{
    FILE* input = fopen("/home/lezs/Escritorio/prueba.txt" , "r" );
    yy1restart(input);
    yy1parse();

}

void Principal::on_pushButton_2_clicked()
{
    FILE* input = fopen("/home/lezs/Escritorio/prueba2.txt" , "r" );
    yy2restart(input);
    yy2parse();
}
