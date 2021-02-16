#include <iostream>
#include <cmath>
#include <mpi.h>

#define N 8

double *matrixMulVect(const double *M, const double *V) { //TODO не забыть почистить результат
    auto *res = (double *) calloc(N, sizeof(double));
    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            res[i] += M[i * N + j] * V[j];
        }
    }
    return res;
}

double *calcNextYn(double *A, double *xn, const double *b) {
    auto *yn = (double *) calloc(N, sizeof(double));
    double *firstArg = matrixMulVect(A, xn);
    for (int i = 0; i < N; ++i) {
        yn[i] = firstArg[i] - b[i];
    }
    delete[](firstArg);
    return yn;
}

double scalarVectMul(const double *v1, const double *v2) {
    double ans = 0;
    for (int i = 0; i < N; ++i) {
        ans += v1[i] * v2[i];
    }
    return ans;
}

double calcNextTau(double *A, double *yn) {
    double *A_yn = matrixMulVect(A, yn);
    double numerator = scalarVectMul(yn, A_yn);
    double denominator = scalarVectMul(A_yn, A_yn);
    delete[](A_yn);
    return numerator / denominator;
}

double *calcNextX(double *prevX, double tau, const double *yn) {
    for (int i = 0; i < N; ++i) {
        prevX[i] -= tau * yn[i];
    }
    return prevX;
}

double calcVectLen(double *v) {
    return sqrt(scalarVectMul(v, v));
}

const double epsilon = 0.00005;

bool canFinish(double *A, double *xn, double *b) {
    static double bLen = calcVectLen(b);
    double *numerator = matrixMulVect(A, xn);
    for (int i = 0; i < N; ++i) {
        numerator[i] -= b[i];
    }
    bool ans = (calcVectLen(numerator) / bLen) < epsilon;
    delete[](numerator);
    return ans;
}


double *calcX(double *A, double *b, double *x) {
    double *yn = calcNextYn(A, x, b);
    double tau = calcNextTau(A, yn);
    while (!canFinish(A, x, b)) {
//        printf("!\n");
        x = calcNextX(x, tau, yn);
    }
    return x;
}


/*
 * раскидать недостающие строки по одной в каждый процесс ранга rank < N % cnt
 * ну и загрузку данных проводить придеться так же
 */

inline void allocMem(double **matrixPart, double **bPart, double **xPart, int rank, int cntOfProcesses) {
    if (rank == 0) {
        *matrixPart = new double[N * N];
    } else if (rank < N % cntOfProcesses) {
        *matrixPart = new double[N * N / cntOfProcesses + N];
    } else {
        *matrixPart = new double[N * N / cntOfProcesses];
    }
    *bPart = new double[N];
    *xPart = new double[N];
}

void loadData(double *matrixPart, double *bPart, double *xPart, int rank, int cntOfProcesses) {
    for (int i = 0; i < N; ++i) {
        bPart[i] = N + 1;
        xPart[i] = 0;
        for (int j = 0; j < N; ++j) {
            matrixPart[i * N + j] = i == j ? 2.0 : 1.0;
        }
    }
}

int main(int argc, char **argv) {
    int cntOfProcesses, rank;
    MPI_Init(&argc, &argv);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &cntOfProcesses);

    double *matrixPart, *bPart, *xPart;
    allocMem(&matrixPart, &bPart, &xPart, rank, cntOfProcesses);

    if (rank == 0) {
        loadData(matrixPart, bPart, xPart, rank, cntOfProcesses);
    }

    delete[](matrixPart);
    delete[](bPart);
    if (rank != 0) {
        delete[](xPart);
    }
    MPI_Finalize();

}