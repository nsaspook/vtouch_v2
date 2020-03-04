/********************************************************************************
** Form generated from reading UI file 'serialsettingswidget.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SERIALSETTINGSWIDGET_H
#define UI_SERIALSETTINGSWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SerialSettingsWidget
{
public:
    QGridLayout *gridLayout;
    QCheckBox *checkBox;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QComboBox *serialPort;
    QComboBox *baud;
    QComboBox *dataBits;
    QComboBox *stopBits;
    QComboBox *parity;

    void setupUi(QWidget *SerialSettingsWidget)
    {
        if (SerialSettingsWidget->objectName().isEmpty())
            SerialSettingsWidget->setObjectName(QString::fromUtf8("SerialSettingsWidget"));
        SerialSettingsWidget->resize(658, 124);
        SerialSettingsWidget->setMinimumSize(QSize(0, 124));
        gridLayout = new QGridLayout(SerialSettingsWidget);
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        checkBox = new QCheckBox(SerialSettingsWidget);
        checkBox->setObjectName(QString::fromUtf8("checkBox"));

        gridLayout->addWidget(checkBox, 0, 0, 1, 1);

        label = new QLabel(SerialSettingsWidget);
        label->setObjectName(QString::fromUtf8("label"));

        gridLayout->addWidget(label, 1, 0, 1, 1);

        label_2 = new QLabel(SerialSettingsWidget);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        gridLayout->addWidget(label_2, 1, 1, 1, 1);

        label_3 = new QLabel(SerialSettingsWidget);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 1, 2, 1, 1);

        label_4 = new QLabel(SerialSettingsWidget);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 1, 3, 1, 1);

        label_5 = new QLabel(SerialSettingsWidget);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout->addWidget(label_5, 1, 4, 1, 1);

        serialPort = new QComboBox(SerialSettingsWidget);
        serialPort->setObjectName(QString::fromUtf8("serialPort"));

        gridLayout->addWidget(serialPort, 2, 0, 1, 1);

        baud = new QComboBox(SerialSettingsWidget);
        baud->addItem(QString());
        baud->addItem(QString());
        baud->addItem(QString());
        baud->addItem(QString());
        baud->addItem(QString());
        baud->addItem(QString());
        baud->addItem(QString());
        baud->setObjectName(QString::fromUtf8("baud"));

        gridLayout->addWidget(baud, 2, 1, 1, 1);

        dataBits = new QComboBox(SerialSettingsWidget);
        dataBits->addItem(QString());
        dataBits->addItem(QString());
        dataBits->setObjectName(QString::fromUtf8("dataBits"));

        gridLayout->addWidget(dataBits, 2, 2, 1, 1);

        stopBits = new QComboBox(SerialSettingsWidget);
        stopBits->addItem(QString());
        stopBits->addItem(QString());
        stopBits->addItem(QString());
        stopBits->setObjectName(QString::fromUtf8("stopBits"));

        gridLayout->addWidget(stopBits, 2, 3, 1, 1);

        parity = new QComboBox(SerialSettingsWidget);
        parity->addItem(QString());
        parity->addItem(QString());
        parity->addItem(QString());
        parity->setObjectName(QString::fromUtf8("parity"));

        gridLayout->addWidget(parity, 2, 4, 1, 1);


        retranslateUi(SerialSettingsWidget);

        baud->setCurrentIndex(2);
        dataBits->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(SerialSettingsWidget);
    } // setupUi

    void retranslateUi(QWidget *SerialSettingsWidget)
    {
        SerialSettingsWidget->setWindowTitle(QApplication::translate("SerialSettingsWidget", "Form", nullptr));
        checkBox->setText(QApplication::translate("SerialSettingsWidget", "Active", nullptr));
        label->setText(QApplication::translate("SerialSettingsWidget", "Serial port", nullptr));
        label_2->setText(QApplication::translate("SerialSettingsWidget", "Baud", nullptr));
        label_3->setText(QApplication::translate("SerialSettingsWidget", "Data bits", nullptr));
        label_4->setText(QApplication::translate("SerialSettingsWidget", "Stop bits", nullptr));
        label_5->setText(QApplication::translate("SerialSettingsWidget", "Parity", nullptr));
        baud->setItemText(0, QApplication::translate("SerialSettingsWidget", "1200", nullptr));
        baud->setItemText(1, QApplication::translate("SerialSettingsWidget", "4800", nullptr));
        baud->setItemText(2, QApplication::translate("SerialSettingsWidget", "9600", nullptr));
        baud->setItemText(3, QApplication::translate("SerialSettingsWidget", "19200", nullptr));
        baud->setItemText(4, QApplication::translate("SerialSettingsWidget", "38400", nullptr));
        baud->setItemText(5, QApplication::translate("SerialSettingsWidget", "57600", nullptr));
        baud->setItemText(6, QApplication::translate("SerialSettingsWidget", "115200", nullptr));

        dataBits->setItemText(0, QApplication::translate("SerialSettingsWidget", "7", nullptr));
        dataBits->setItemText(1, QApplication::translate("SerialSettingsWidget", "8", nullptr));

        stopBits->setItemText(0, QApplication::translate("SerialSettingsWidget", "1", nullptr));
        stopBits->setItemText(1, QApplication::translate("SerialSettingsWidget", "1.5", nullptr));
        stopBits->setItemText(2, QApplication::translate("SerialSettingsWidget", "2", nullptr));

        parity->setItemText(0, QApplication::translate("SerialSettingsWidget", "none", nullptr));
        parity->setItemText(1, QApplication::translate("SerialSettingsWidget", "odd", nullptr));
        parity->setItemText(2, QApplication::translate("SerialSettingsWidget", "even", nullptr));

    } // retranslateUi

};

namespace Ui {
    class SerialSettingsWidget: public Ui_SerialSettingsWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SERIALSETTINGSWIDGET_H
