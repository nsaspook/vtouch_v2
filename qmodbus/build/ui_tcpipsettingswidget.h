/********************************************************************************
** Form generated from reading UI file 'tcpipsettingswidget.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TCPIPSETTINGSWIDGET_H
#define UI_TCPIPSETTINGSWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "ipaddressctrl.h"

QT_BEGIN_NAMESPACE

class Ui_TcpIpSettingsWidget
{
public:
    QVBoxLayout *verticalLayout;
    QCheckBox *cbEnabled;
    QGroupBox *groupBox;
    QGridLayout *gridLayout;
    QLabel *label;
    QLabel *label_2;
    IPAddressCtrl *edNetworkAddress;
    QLineEdit *edPort;

    void setupUi(QWidget *TcpIpSettingsWidget)
    {
        if (TcpIpSettingsWidget->objectName().isEmpty())
            TcpIpSettingsWidget->setObjectName(QString::fromUtf8("TcpIpSettingsWidget"));
        TcpIpSettingsWidget->resize(547, 217);
        verticalLayout = new QVBoxLayout(TcpIpSettingsWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(2, 2, 2, 2);
        cbEnabled = new QCheckBox(TcpIpSettingsWidget);
        cbEnabled->setObjectName(QString::fromUtf8("cbEnabled"));

        verticalLayout->addWidget(cbEnabled);

        groupBox = new QGroupBox(TcpIpSettingsWidget);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        gridLayout = new QGridLayout(groupBox);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        gridLayout->setContentsMargins(2, 2, 2, 2);
        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        label_2 = new QLabel(groupBox);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 0, 1, 1, 1);

        edNetworkAddress = new IPAddressCtrl(groupBox);
        edNetworkAddress->setObjectName(QString::fromUtf8("edNetworkAddress"));
        QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
        sizePolicy.setHorizontalStretch(1);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(edNetworkAddress->sizePolicy().hasHeightForWidth());
        edNetworkAddress->setSizePolicy(sizePolicy);
        edNetworkAddress->setMinimumSize(QSize(260, 0));

        gridLayout->addWidget(edNetworkAddress, 1, 0, 1, 1);

        edPort = new QLineEdit(groupBox);
        edPort->setObjectName(QString::fromUtf8("edPort"));

        gridLayout->addWidget(edPort, 1, 1, 1, 1);


        verticalLayout->addWidget(groupBox);


        retranslateUi(TcpIpSettingsWidget);

        QMetaObject::connectSlotsByName(TcpIpSettingsWidget);
    } // setupUi

    void retranslateUi(QWidget *TcpIpSettingsWidget)
    {
        TcpIpSettingsWidget->setWindowTitle(QApplication::translate("TcpIpSettingsWidget", "Form", nullptr));
        cbEnabled->setText(QApplication::translate("TcpIpSettingsWidget", "Active", nullptr));
        groupBox->setTitle(QApplication::translate("TcpIpSettingsWidget", "Modbus Server", nullptr));
        label->setText(QApplication::translate("TcpIpSettingsWidget", "Network Address", nullptr));
        label_2->setText(QApplication::translate("TcpIpSettingsWidget", "Port", nullptr));
        edPort->setText(QApplication::translate("TcpIpSettingsWidget", "502", nullptr));
    } // retranslateUi

};

namespace Ui {
    class TcpIpSettingsWidget: public Ui_TcpIpSettingsWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TCPIPSETTINGSWIDGET_H
