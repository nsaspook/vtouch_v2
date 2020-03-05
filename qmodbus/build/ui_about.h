/********************************************************************************
** Form generated from reading UI file 'about.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ABOUT_H
#define UI_ABOUT_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDialog>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_AboutDialog
{
public:
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout;
    QVBoxLayout *verticalLayout_2;
    QLabel *label_2;
    QSpacerItem *verticalSpacer;
    QSpacerItem *horizontalSpacer_2;
    QVBoxLayout *verticalLayout;
    QLabel *aboutTextLabel;
    QLabel *label;
    QLabel *label_3;
    QLabel *aboutTextLabel_2;
    QLabel *aboutTextLabel_3;
    QSpacerItem *verticalSpacer_2;
    QHBoxLayout *horizontalLayout_2;
    QSpacerItem *horizontalSpacer;
    QPushButton *closeButton;

    void setupUi(QDialog *AboutDialog)
    {
        if (AboutDialog->objectName().isEmpty())
            AboutDialog->setObjectName(QString::fromUtf8("AboutDialog"));
        AboutDialog->resize(674, 262);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/logo.png"), QSize(), QIcon::Normal, QIcon::Off);
        AboutDialog->setWindowIcon(icon);
        verticalLayout_3 = new QVBoxLayout(AboutDialog);
        verticalLayout_3->setObjectName(QString::fromUtf8("verticalLayout_3"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(0);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        label_2 = new QLabel(AboutDialog);
        label_2->setObjectName(QString::fromUtf8("label_2"));
        label_2->setMaximumSize(QSize(96, 96));
        label_2->setPixmap(QPixmap(QString::fromUtf8(":/images/logo.png")));
        label_2->setScaledContents(true);

        verticalLayout_2->addWidget(label_2);

        verticalSpacer = new QSpacerItem(20, 20, QSizePolicy::Minimum, QSizePolicy::Preferred);

        verticalLayout_2->addItem(verticalSpacer);


        horizontalLayout->addLayout(verticalLayout_2);

        horizontalSpacer_2 = new QSpacerItem(10, 10, QSizePolicy::Fixed, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(10);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        aboutTextLabel = new QLabel(AboutDialog);
        aboutTextLabel->setObjectName(QString::fromUtf8("aboutTextLabel"));
        aboutTextLabel->setTextFormat(Qt::PlainText);
        aboutTextLabel->setOpenExternalLinks(true);

        verticalLayout->addWidget(aboutTextLabel);

        label = new QLabel(AboutDialog);
        label->setObjectName(QString::fromUtf8("label"));
        label->setText(QString::fromUtf8("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"http://qmodbus.sourceforge.net\"><span style=\" text-decoration: underline; color:#0000ff;\">http://qmodbus.sourceforge.net</span></a></p></body></html>"));
        label->setTextFormat(Qt::RichText);
        label->setOpenExternalLinks(true);

        verticalLayout->addWidget(label);

        label_3 = new QLabel(AboutDialog);
        label_3->setObjectName(QString::fromUtf8("label_3"));
        label_3->setText(QString::fromUtf8("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"http://www.ed-chemnitz.de\"><span style=\" text-decoration: underline; color:#0000ff;\">http://www.ed-chemnitz.de</span></a></p></body></html>"));
        label_3->setTextFormat(Qt::RichText);
        label_3->setOpenExternalLinks(true);

        verticalLayout->addWidget(label_3);

        aboutTextLabel_2 = new QLabel(AboutDialog);
        aboutTextLabel_2->setObjectName(QString::fromUtf8("aboutTextLabel_2"));
        aboutTextLabel_2->setTextFormat(Qt::PlainText);
        aboutTextLabel_2->setOpenExternalLinks(true);

        verticalLayout->addWidget(aboutTextLabel_2);

        aboutTextLabel_3 = new QLabel(AboutDialog);
        aboutTextLabel_3->setObjectName(QString::fromUtf8("aboutTextLabel_3"));
        aboutTextLabel_3->setText(QString::fromUtf8("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'Sans'; font-size:10pt; font-weight:400; font-style:normal;\">\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">- libmodbus - <a href=\"http://www.libmodbus.org/\"><span style=\" text-decoration: underline; color:#0000ff;\">http://www.libmodbus.org/</span></a></p>\n"
"<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">- QextSerialPort - <a href=\"http://code.google.com/p/qextserialport/\"><span style=\" text-decoration: underline; color:#0000ff;\">http://code.google.com/p/qextserialport/</span></a></p></body></html>"));
        aboutTextLabel_3->setTextFormat(Qt::RichText);
        aboutTextLabel_3->setOpenExternalLinks(true);

        verticalLayout->addWidget(aboutTextLabel_3);

        verticalSpacer_2 = new QSpacerItem(20, 20, QSizePolicy::Minimum, QSizePolicy::Preferred);

        verticalLayout->addItem(verticalSpacer_2);


        horizontalLayout->addLayout(verticalLayout);


        verticalLayout_3->addLayout(horizontalLayout);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer);

        closeButton = new QPushButton(AboutDialog);
        closeButton->setObjectName(QString::fromUtf8("closeButton"));

        horizontalLayout_2->addWidget(closeButton);


        verticalLayout_3->addLayout(horizontalLayout_2);


        retranslateUi(AboutDialog);
        QObject::connect(closeButton, SIGNAL(clicked()), AboutDialog, SLOT(accept()));

        QMetaObject::connectSlotsByName(AboutDialog);
    } // setupUi

    void retranslateUi(QDialog *AboutDialog)
    {
        AboutDialog->setWindowTitle(QApplication::translate("AboutDialog", "About QModBus", nullptr));
        aboutTextLabel->setText(QApplication::translate("AboutDialog", "This is QModBus %1.\n"
"\n"
"Copyright \302\251 2009-2018 Tobias Junghans, EDC Electronic Design Chemnitz GmbH", nullptr));
        aboutTextLabel_2->setText(QApplication::translate("AboutDialog", "This program is published under the terms of the General Public License (GPL) v2.\n"
"\n"
"QModBus incorporates the following 3rd party libraries:", nullptr));
        closeButton->setText(QApplication::translate("AboutDialog", "OK", nullptr));
    } // retranslateUi

};

namespace Ui {
    class AboutDialog: public Ui_AboutDialog {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ABOUT_H
