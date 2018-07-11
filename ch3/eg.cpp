#include <iostream>
#include <Eigen/Core>
#include <Eigen/Dense>

using namespace std;

int main (int argc,char** argv)
{
	//四元数
    Eigen::Quaterniond q1 = Eigen::Quaterniond(0.35, 0.2, 0.3, 0.1).normalized();
    Eigen::Quaterniond q2 = Eigen::Quaterniond(-0.5, 0.4, -0.1, 0.2).normalized();
    //平移向量
    Eigen::Vector3d t1 = Eigen::Vector3d(0.3, 0.1, 0.1);
    Eigen::Vector3d t2 = Eigen::Vector3d(-0.1, 0.5, 0.3);
    //目标向量
    Eigen::Vector3d p1 = Eigen::Vector3d(0.5, 0, 0.2);
    Eigen::Vector3d p2;

    //打印输出
     cout << q1.coeffs() << "\n"
          << q2.coeffs() << "\n"
          << t1.transpose() << "\n"
          << t2.transpose() << endl;

    //四元数求解
    p2 = q2 * q1.inverse() * (p1 - t1) + t2;
    cout << p2.transpose() << endl;

    //欧拉矩阵
    Eigen::Isometry3d T1 = Eigen::Isometry3d::Identity();
    Eigen::Isometry3d T2 = Eigen::Isometry3d::Identity();
    T1.rotate(q1.toRotationMatrix());
    T1.pretranslate(t1);
    T2.rotate(q2.toRotationMatrix());
    T2.pretranslate(t2);
     cout << T1.matrix() << endl;
     cout << T2.matrix() << endl;

    //欧拉矩阵求解
    p2 = T2 * T1.inverse() * p1;
    cout << p2.transpose() << endl;


}
