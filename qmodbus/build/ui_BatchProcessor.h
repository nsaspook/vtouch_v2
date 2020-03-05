/********************************************************************************
** Form generated from reading UI file 'BatchProcessor.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_BATCHPROCESSOR_H
#define UI_BATCHPROCESSOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDialog>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_BatchProcessor
{
public:
    QVBoxLayout *verticalLayout;
    QGridLayout *gridLayout;
    QLabel *label_3;
    QSpinBox *intervalSpinBox;
    QSpacerItem *horizontalSpacer_5;
    QLabel *label_5;
    QComboBox *functionCode;
    QLabel *label_4;
    QLineEdit *outputFileEdit;
    QToolButton *openOutputFileButton;
    QLineEdit *slaveEdit;
    QLabel *label_6;
    QHBoxLayout *horizontalLayout;
    QSpacerItem *horizontalSpacer;
    QPushButton *startButton;
    QPushButton *stopButton;
    QSpacerItem *horizontalSpacer_8;
    QPushButton *closeButton;

    void setupUi(QDialog *BatchProcessor)
    {
        if (BatchProcessor->objectName().isEmpty())
            BatchProcessor->setObjectName(QString::fromUtf8("BatchProcessor"));
        BatchProcessor->resize(515, 173);
        verticalLayout = new QVBoxLayout(BatchProcessor);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QString::fromUtf8("gridLayout"));
        label_3 = new QLabel(BatchProcessor);
        label_3->setObjectName(QString::fromUtf8("label_3"));

        gridLayout->addWidget(label_3, 1, 0, 1, 1);

        intervalSpinBox = new QSpinBox(BatchProcessor);
        intervalSpinBox->setObjectName(QString::fromUtf8("intervalSpinBox"));
        intervalSpinBox->setMinimum(1);

        gridLayout->addWidget(intervalSpinBox, 1, 1, 1, 1);

        horizontalSpacer_5 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer_5, 1, 2, 1, 2);

        label_5 = new QLabel(BatchProcessor);
        label_5->setObjectName(QString::fromUtf8("label_5"));

        gridLayout->addWidget(label_5, 2, 0, 1, 1);

        functionCode = new QComboBox(BatchProcessor);
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->setObjectName(QString::fromUtf8("functionCode"));

        gridLayout->addWidget(functionCode, 2, 1, 1, 4);

        label_4 = new QLabel(BatchProcessor);
        label_4->setObjectName(QString::fromUtf8("label_4"));

        gridLayout->addWidget(label_4, 4, 0, 1, 1);

        outputFileEdit = new QLineEdit(BatchProcessor);
        outputFileEdit->setObjectName(QString::fromUtf8("outputFileEdit"));

        gridLayout->addWidget(outputFileEdit, 4, 1, 1, 3);

        openOutputFileButton = new QToolButton(BatchProcessor);
        openOutputFileButton->setObjectName(QString::fromUtf8("openOutputFileButton"));

        gridLayout->addWidget(openOutputFileButton, 4, 4, 1, 1);

        slaveEdit = new QLineEdit(BatchProcessor);
        slaveEdit->setObjectName(QString::fromUtf8("slaveEdit"));

        gridLayout->addWidget(slaveEdit, 0, 1, 1, 3);

        label_6 = new QLabel(BatchProcessor);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout->addWidget(label_6, 0, 0, 1, 1);


        verticalLayout->addLayout(gridLayout);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);

        startButton = new QPushButton(BatchProcessor);
        startButton->setObjectName(QString::fromUtf8("startButton"));

        horizontalLayout->addWidget(startButton);

        stopButton = new QPushButton(BatchProcessor);
        stopButton->setObjectName(QString::fromUtf8("stopButton"));
        stopButton->setEnabled(false);

        horizontalLayout->addWidget(stopButton);

        horizontalSpacer_8 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_8);

        closeButton = new QPushButton(BatchProcessor);
        closeButton->setObjectName(QString::fromUtf8("closeButton"));

        horizontalLayout->addWidget(closeButton);


        verticalLayout->addLayout(horizontalLayout);

#ifndef QT_NO_SHORTCUT
        label_3->setBuddy(intervalSpinBox);
        label_5->setBuddy(functionCode);
        label_4->setBuddy(outputFileEdit);
        label_6->setBuddy(slaveEdit);
#endif // QT_NO_SHORTCUT
        QWidget::setTabOrder(slaveEdit, intervalSpinBox);
        QWidget::setTabOrder(intervalSpinBox, functionCode);
        QWidget::setTabOrder(functionCode, outputFileEdit);
        QWidget::setTabOrder(outputFileEdit, openOutputFileButton);
        QWidget::setTabOrder(openOutputFileButton, startButton);
        QWidget::setTabOrder(startButton, stopButton);
        QWidget::setTabOrder(stopButton, closeButton);

        retranslateUi(BatchProcessor);
        QObject::connect(closeButton, SIGNAL(clicked()), BatchProcessor, SLOT(accept()));
        QObject::connect(openOutputFileButton, SIGNAL(clicked()), BatchProcessor, SLOT(browseOutputFile()));
        QObject::connect(startButton, SIGNAL(clicked()), BatchProcessor, SLOT(start()));
        QObject::connect(stopButton, SIGNAL(clicked()), BatchProcessor, SLOT(stop()));

        QMetaObject::connectSlotsByName(BatchProcessor);
    } // setupUi

    void retranslateUi(QDialog *BatchProcessor)
    {
        BatchProcessor->setWindowTitle(QApplication::translate("BatchProcessor", "QModBus Batch Processor", nullptr));
        label_3->setText(QApplication::translate("BatchProcessor", "Interval (in seconds)", nullptr));
        label_5->setText(QApplication::translate("BatchProcessor", "Function code", nullptr));
        functionCode->setItemText(0, QApplication::translate("BatchProcessor", "Read Coils (0x01)", nullptr));
        functionCode->setItemText(1, QApplication::translate("BatchProcessor", "Read Discrete Inputs (0x02)", nullptr));
        functionCode->setItemText(2, QApplication::translate("BatchProcessor", "Read Holding Registers (0x03)", nullptr));
        functionCode->setItemText(3, QApplication::translate("BatchProcessor", "Read Input Registers (0x04)", nullptr));
        functionCode->setItemText(4, QApplication::translate("BatchProcessor", "Write Single Coil (0x05)", nullptr));
        functionCode->setItemText(5, QApplication::translate("BatchProcessor", "Write Single Register (0x06)", nullptr));
        functionCode->setItemText(6, QApplication::translate("BatchProcessor", "Write Multiple Coils (0x0f)", nullptr));
        functionCode->setItemText(7, QApplication::translate("BatchProcessor", "Write Multiple Registers (0x10)", nullptr));

        label_4->setText(QApplication::translate("BatchProcessor", "Output file", nullptr));
        openOutputFileButton->setText(QApplication::translate("BatchProcessor", "...", nullptr));
        label_6->setText(QApplication::translate("BatchProcessor", "IDs && registers", nullptr));
        startButton->setText(QApplication::translate("BatchProcessor", "Start", nullptr));
        stopButton->setText(QApplication::translate("BatchProcessor", "Stop", nullptr));
        closeButton->setText(QApplication::translate("BatchProcessor", "Close", nullptr));
    } // retranslateUi

};

namespace Ui {
    class BatchProcessor: public Ui_BatchProcessor {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_BATCHPROCESSOR_H
