/********************************************************************************
** Form generated from reading UI file 'ipaddressctrl.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_IPADDRESSCTRL_H
#define UI_IPADDRESSCTRL_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QWidget>
#include "iplineedit.h"

QT_BEGIN_NAMESPACE

class Ui_IPAddressCtrl
{
public:
    QHBoxLayout *horizontalLayout;
    IpLineEdit *ipEd0;
    QLabel *label;
    IpLineEdit *ipEd1;
    QLabel *label_2;
    IpLineEdit *ipEd2;
    QLabel *label_3;
    IpLineEdit *ipEd3;

    void setupUi(QWidget *IPAddressCtrl)
    {
        if (IPAddressCtrl->objectName().isEmpty())
            IPAddressCtrl->setObjectName(QString::fromUtf8("IPAddressCtrl"));
        IPAddressCtrl->resize(350, 41);
        horizontalLayout = new QHBoxLayout(IPAddressCtrl);
        horizontalLayout->setSpacing(2);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(2, 2, 2, 2);
        ipEd0 = new IpLineEdit(IPAddressCtrl);
        ipEd0->setObjectName(QString::fromUtf8("ipEd0"));

        horizontalLayout->addWidget(ipEd0);

        label = new QLabel(IPAddressCtrl);
        label->setObjectName(QString::fromUtf8("label"));
        label->setScaledContents(true);

        horizontalLayout->addWidget(label);

        ipEd1 = new IpLineEdit(IPAddressCtrl);
        ipEd1->setObjectName(QString::fromUtf8("ipEd1"));

        horizontalLayout->addWidget(ipEd1);

        label_2 = new QLabel(IPAddressCtrl);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setScaledContents(true);

        horizontalLayout->addWidget(label_2);

        ipEd2 = new IpLineEdit(IPAddressCtrl);
        ipEd2->setObjectName(QString::fromUtf8("ipEd2"));

        horizontalLayout->addWidget(ipEd2);

        label_3 = new QLabel(IPAddressCtrl);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setScaledContents(true);

        horizontalLayout->addWidget(label_3);

        ipEd3 = new IpLineEdit(IPAddressCtrl);
        ipEd3->setObjectName(QString::fromUtf8("ipEd3"));

        horizontalLayout->addWidget(ipEd3);


        retranslateUi(IPAddressCtrl);

        QMetaObject::connectSlotsByName(IPAddressCtrl);
    } // setupUi

    void retranslateUi(QWidget *IPAddressCtrl)
    {
        IPAddressCtrl->setWindowTitle(QApplication::translate("IPAddressCtrl", "Form", nullptr));
        label->setText(QApplication::translate("IPAddressCtrl", ".", nullptr));
        label_2->setText(QApplication::translate("IPAddressCtrl", ".", nullptr));
        label_3->setText(QApplication::translate("IPAddressCtrl", ".", nullptr));
    } // retranslateUi

};

namespace Ui {
    class IPAddressCtrl: public Ui_IPAddressCtrl {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_IPADDRESSCTRL_H
