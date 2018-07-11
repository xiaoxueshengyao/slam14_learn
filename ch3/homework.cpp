#include <iostream>
#include <Eigen/Core>
#include <Eigen/Dense>

using namespace std;

int main(int argc,char** argv)
{	
    //课后第5题	
    Eigen::Matrix<double,4,4> matrix_44;
    cout << "Eigen matrix_44 \n"<< matrix_44 << endl;
    
    Eigen::Matrix3d matrix_abstract = matrix_44.block(0,0,2,2);
    cout << "提取3x3后 \n " << matrix_abstract << endl;
    matrix_abstract = Eigen::Matrix3d::Identity();
    cout << "哈哈\n" << matrix_abstract <<endl;
    
    //课后第7题
    Eigen::Isometry3d T1=Eigen::Isometry3d::Identity();
    Eigen::Quaterniond q1= Eigen::Quaterniond(0.35,0.2,0.3,0.1).normalized();
    cout << "quaterniond \n"<< q1.coeffs() << endl;
    T1.rotate (q1.toRotationMatrix());//四元数转换到旋转矩阵
    T1.pretranslate (Eigen::Vector3d(0.3,0.1,0.1));
	cout << "T1 \n"<< T1.matrix()<<endl;
    Eigen::Vector3d p (0.5,0,0.2);
    Eigen::Vector3d p_w = T1.inverse()*p;
    cout << "p_w" << p_w.transpose()<<endl;
    
    Eigen::Quaterniond q2 =Eigen::Quaterniond(-0.5,0.4,-0.1,0.2).normalized();
    Eigen::Isometry3d T2=Eigen::Isometry3d::Identity();
    T2.rotate (q2.toRotationMatrix());
    T2.pretranslate (Eigen::Vector3d (-0.1,0,0.2));
	cout << "T2 \n" << T2.matrix() <<endl;
    Eigen::Vector3d p_2 = T2*p_w;
    cout << "p_2 = " << p_2.transpose() << endl;	
    /***说实话，看了人家的程序感觉自己的程序简直就是在写草稿。。。必须多练手啊
	我属于边想边写，另一个是想完再写***/
}
