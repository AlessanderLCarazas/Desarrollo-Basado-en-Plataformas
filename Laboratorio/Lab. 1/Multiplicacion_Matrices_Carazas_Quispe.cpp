#include <iostream>

using namespace std;

void llenar(int M[][10], int fc)
{
    for(int i=0;i<fc;i++)
        for(int j=0;j<fc;j++)
        {
            cout<<"Ingrese valor: ";
            cin>>M[i][j];
        }
}
void mostrar(int M[][10], int fc)
{
    for(int i=0;i<fc;i++)
    {
        for(int j=0;j<fc;j++)
            cout<<M[i][j]<<"\t";
        cout<<endl;
    }
}

void multiplicacion_matrices(int M[][10],int M1[][10], int Mr[][10],int fc)
{
     for(int i=0;i<fc;i++)
    {
            for(int j=0;j<fc;j++)
            {
                Mr[i][j]=0;
                for(int k=0;k<fc;k++)
                {
                    Mr[i][j]=Mr[i][j]+M[i][k]*M1[k][j];
                }
            }
    }
    mostrar(Mr, fc);
}

int main()
{
    int M[10][10],M1[10][10], fc;
    cout<<"Cantidad de elementos para ambas matrices cuadradas:";
    cin>>fc;
    cout<<"\nIngrese los datos para la Matriz 1: "<< endl;
    llenar(M, fc);
    mostrar(M, fc);
    cout<<"\nIngrese los datos para la Matriz 2: "<< endl;
    llenar(M1, fc);
    mostrar(M1, fc);
    int Mr[10][10];
    cout<<"\nMultiplicaion de las Matrices: "<<endl;
    multiplicacion_matrices(M, M1, Mr, fc);

    return 0;
}
