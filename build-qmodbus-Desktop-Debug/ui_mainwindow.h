/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.12.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QIcon>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTabWidget>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "asciisettingswidget.h"
#include "rtusettingswidget.h"
#include "tcpipsettingswidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindowClass
{
public:
    QAction *actionQuit;
    QAction *actionAbout_QModBus;
    QAction *actionBatchProcessing;
    QWidget *centralWidget;
    QHBoxLayout *horizontalLayout_3;
    QVBoxLayout *verticalLayout;
    QTabWidget *tabWidget;
    QWidget *tab;
    QHBoxLayout *horizontalLayout;
    RtuSettingsWidget *rtuSettingsWidget;
    QWidget *tab_2;
    QHBoxLayout *horizontalLayout_2;
    TcpIpSettingsWidget *tcpSettingsWidget;
    QWidget *tab_3;
    QHBoxLayout *horizontalLayout_21;
    AsciiSettingsWidget *asciiSettingsWidget;
    QGroupBox *groupBox_2;
    QGridLayout *gridLayout_2;
    QLabel *label_6;
    QLabel *label_7;
    QLabel *label_8;
    QLabel *label_9;
    QSpinBox *slaveID;
    QComboBox *functionCode;
    QSpinBox *startAddr;
    QSpinBox *numCoils;
    QSpacerItem *horizontalSpacer;
    QSpacerItem *verticalSpacer;
    QCheckBox *checkBoxHexData;
    QTextEdit *requestPreview;
    QPushButton *sendBtn;
    QGroupBox *groupBox_4;
    QVBoxLayout *verticalLayout_2;
    QTableWidget *regTable;
    QGroupBox *groupBox_3;
    QGridLayout *gridLayout_4;
    QLabel *label_10;
    QSpacerItem *horizontalSpacer_2;
    QPushButton *clearBusRawData;
    QPlainTextEdit *rawData;
    QSpacerItem *verticalSpacer_2;
    QFrame *line;
    QSpacerItem *verticalSpacer_3;
    QLabel *label_11;
    QSpacerItem *horizontalSpacer_3;
    QPushButton *clearBusMonTable;
    QTableWidget *busMonTable;
    QStatusBar *statusBar;
    QMenuBar *menuBar;
    QMenu *menuFile;
    QMenu *menuHelp;
    QMenu *menuTools;

    void setupUi(QMainWindow *MainWindowClass)
    {
        if (MainWindowClass->objectName().isEmpty())
            MainWindowClass->setObjectName(QString::fromUtf8("MainWindowClass"));
        MainWindowClass->resize(1021, 595);
        QIcon icon;
        icon.addFile(QString::fromUtf8(":/images/logo.png"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindowClass->setWindowIcon(icon);
        actionQuit = new QAction(MainWindowClass);
        actionQuit->setObjectName(QString::fromUtf8("actionQuit"));
        actionAbout_QModBus = new QAction(MainWindowClass);
        actionAbout_QModBus->setObjectName(QString::fromUtf8("actionAbout_QModBus"));
        actionBatchProcessing = new QAction(MainWindowClass);
        actionBatchProcessing->setObjectName(QString::fromUtf8("actionBatchProcessing"));
        centralWidget = new QWidget(MainWindowClass);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        horizontalLayout_3 = new QHBoxLayout(centralWidget);
        horizontalLayout_3->setSpacing(6);
        horizontalLayout_3->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_3->setObjectName(QString::fromUtf8("horizontalLayout_3"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        tabWidget = new QTabWidget(centralWidget);
        tabWidget->setObjectName(QString::fromUtf8("tabWidget"));
        tab = new QWidget();
        tab->setObjectName(QString::fromUtf8("tab"));
        horizontalLayout = new QHBoxLayout(tab);
        horizontalLayout->setSpacing(6);
        horizontalLayout->setContentsMargins(11, 11, 11, 11);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        rtuSettingsWidget = new RtuSettingsWidget(tab);
        rtuSettingsWidget->setObjectName(QString::fromUtf8("rtuSettingsWidget"));

        horizontalLayout->addWidget(rtuSettingsWidget);

        tabWidget->addTab(tab, QString());
        tab_2 = new QWidget();
        tab_2->setObjectName(QString::fromUtf8("tab_2"));
        horizontalLayout_2 = new QHBoxLayout(tab_2);
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        tcpSettingsWidget = new TcpIpSettingsWidget(tab_2);
        tcpSettingsWidget->setObjectName(QString::fromUtf8("tcpSettingsWidget"));

        horizontalLayout_2->addWidget(tcpSettingsWidget);

        tabWidget->addTab(tab_2, QString());
        tab_3 = new QWidget();
        tab_3->setObjectName(QString::fromUtf8("tab_3"));
        horizontalLayout_21 = new QHBoxLayout(tab_3);
        horizontalLayout_21->setSpacing(6);
        horizontalLayout_21->setContentsMargins(11, 11, 11, 11);
        horizontalLayout_21->setObjectName(QString::fromUtf8("horizontalLayout_21"));
        asciiSettingsWidget = new AsciiSettingsWidget(tab_3);
        asciiSettingsWidget->setObjectName(QString::fromUtf8("asciiSettingsWidget"));

        horizontalLayout_21->addWidget(asciiSettingsWidget);

        tabWidget->addTab(tab_3, QString());

        verticalLayout->addWidget(tabWidget);

        groupBox_2 = new QGroupBox(centralWidget);
        groupBox_2->setObjectName(QString::fromUtf8("groupBox_2"));
        gridLayout_2 = new QGridLayout(groupBox_2);
        gridLayout_2->setSpacing(6);
        gridLayout_2->setContentsMargins(11, 11, 11, 11);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        label_6 = new QLabel(groupBox_2);
        label_6->setObjectName(QString::fromUtf8("label_6"));

        gridLayout_2->addWidget(label_6, 0, 0, 1, 1);

        label_7 = new QLabel(groupBox_2);
        label_7->setObjectName(QString::fromUtf8("label_7"));

        gridLayout_2->addWidget(label_7, 0, 1, 1, 1);

        label_8 = new QLabel(groupBox_2);
        label_8->setObjectName(QString::fromUtf8("label_8"));

        gridLayout_2->addWidget(label_8, 0, 2, 1, 1);

        label_9 = new QLabel(groupBox_2);
        label_9->setObjectName(QString::fromUtf8("label_9"));

        gridLayout_2->addWidget(label_9, 0, 3, 1, 1);

        slaveID = new QSpinBox(groupBox_2);
        slaveID->setObjectName(QString::fromUtf8("slaveID"));
        slaveID->setMinimum(1);
        slaveID->setMaximum(254);

        gridLayout_2->addWidget(slaveID, 1, 0, 1, 1);

        functionCode = new QComboBox(groupBox_2);
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->addItem(QString());
        functionCode->setObjectName(QString::fromUtf8("functionCode"));

        gridLayout_2->addWidget(functionCode, 1, 1, 1, 1);

        startAddr = new QSpinBox(groupBox_2);
        startAddr->setObjectName(QString::fromUtf8("startAddr"));
        startAddr->setMaximum(65535);

        gridLayout_2->addWidget(startAddr, 1, 2, 1, 1);

        numCoils = new QSpinBox(groupBox_2);
        numCoils->setObjectName(QString::fromUtf8("numCoils"));
        numCoils->setMinimum(1);
        numCoils->setMaximum(65535);

        gridLayout_2->addWidget(numCoils, 1, 3, 1, 1);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_2->addItem(horizontalSpacer, 1, 4, 1, 1);

        verticalSpacer = new QSpacerItem(20, 20, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_2->addItem(verticalSpacer, 2, 0, 1, 1);

        checkBoxHexData = new QCheckBox(groupBox_2);
        checkBoxHexData->setObjectName(QString::fromUtf8("checkBoxHexData"));

        gridLayout_2->addWidget(checkBoxHexData, 2, 3, 1, 2);

        requestPreview = new QTextEdit(groupBox_2);
        requestPreview->setObjectName(QString::fromUtf8("requestPreview"));
        QSizePolicy sizePolicy(QSizePolicy::Fixed, QSizePolicy::Fixed);
        sizePolicy.setHorizontalStretch(0);
        sizePolicy.setVerticalStretch(0);
        sizePolicy.setHeightForWidth(requestPreview->sizePolicy().hasHeightForWidth());
        requestPreview->setSizePolicy(sizePolicy);
        requestPreview->setMaximumSize(QSize(300, 25));
        QFont font;
        font.setFamily(QString::fromUtf8("Courier"));
        requestPreview->setFont(font);
        requestPreview->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        requestPreview->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
        requestPreview->setUndoRedoEnabled(false);
        requestPreview->setTextInteractionFlags(Qt::TextSelectableByKeyboard|Qt::TextSelectableByMouse);

        gridLayout_2->addWidget(requestPreview, 3, 0, 1, 3);

        sendBtn = new QPushButton(groupBox_2);
        sendBtn->setObjectName(QString::fromUtf8("sendBtn"));

        gridLayout_2->addWidget(sendBtn, 3, 3, 1, 1);


        verticalLayout->addWidget(groupBox_2);

        groupBox_4 = new QGroupBox(centralWidget);
        groupBox_4->setObjectName(QString::fromUtf8("groupBox_4"));
        verticalLayout_2 = new QVBoxLayout(groupBox_4);
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setContentsMargins(11, 11, 11, 11);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        regTable = new QTableWidget(groupBox_4);
        if (regTable->columnCount() < 3)
            regTable->setColumnCount(3);
        QTableWidgetItem *__qtablewidgetitem = new QTableWidgetItem();
        regTable->setHorizontalHeaderItem(0, __qtablewidgetitem);
        QTableWidgetItem *__qtablewidgetitem1 = new QTableWidgetItem();
        regTable->setHorizontalHeaderItem(1, __qtablewidgetitem1);
        QTableWidgetItem *__qtablewidgetitem2 = new QTableWidgetItem();
        regTable->setHorizontalHeaderItem(2, __qtablewidgetitem2);
        regTable->setObjectName(QString::fromUtf8("regTable"));
        regTable->horizontalHeader()->setDefaultSectionSize(60);
        regTable->verticalHeader()->setVisible(false);
        regTable->verticalHeader()->setDefaultSectionSize(18);

        verticalLayout_2->addWidget(regTable);


        verticalLayout->addWidget(groupBox_4);


        horizontalLayout_3->addLayout(verticalLayout);

        groupBox_3 = new QGroupBox(centralWidget);
        groupBox_3->setObjectName(QString::fromUtf8("groupBox_3"));
        gridLayout_4 = new QGridLayout(groupBox_3);
        gridLayout_4->setSpacing(6);
        gridLayout_4->setContentsMargins(11, 11, 11, 11);
        gridLayout_4->setObjectName(QString::fromUtf8("gridLayout_4"));
        label_10 = new QLabel(groupBox_3);
        label_10->setObjectName(QString::fromUtf8("label_10"));

        gridLayout_4->addWidget(label_10, 0, 0, 1, 1);

        horizontalSpacer_2 = new QSpacerItem(201, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_4->addItem(horizontalSpacer_2, 0, 1, 1, 2);

        clearBusRawData = new QPushButton(groupBox_3);
        clearBusRawData->setObjectName(QString::fromUtf8("clearBusRawData"));

        gridLayout_4->addWidget(clearBusRawData, 0, 3, 1, 1);

        rawData = new QPlainTextEdit(groupBox_3);
        rawData->setObjectName(QString::fromUtf8("rawData"));
        QFont font1;
        font1.setFamily(QString::fromUtf8("Fixedsys"));
        font1.setPointSize(10);
        rawData->setFont(font1);
        rawData->setUndoRedoEnabled(false);
        rawData->setReadOnly(true);

        gridLayout_4->addWidget(rawData, 1, 0, 1, 4);

        verticalSpacer_2 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_4->addItem(verticalSpacer_2, 2, 0, 1, 1);

        line = new QFrame(groupBox_3);
        line->setObjectName(QString::fromUtf8("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        gridLayout_4->addWidget(line, 3, 0, 1, 4);

        verticalSpacer_3 = new QSpacerItem(20, 4, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_4->addItem(verticalSpacer_3, 4, 0, 2, 1);

        label_11 = new QLabel(groupBox_3);
        label_11->setObjectName(QString::fromUtf8("label_11"));

        gridLayout_4->addWidget(label_11, 6, 0, 1, 2);

        horizontalSpacer_3 = new QSpacerItem(156, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout_4->addItem(horizontalSpacer_3, 5, 2, 2, 1);

        clearBusMonTable = new QPushButton(groupBox_3);
        clearBusMonTable->setObjectName(QString::fromUtf8("clearBusMonTable"));

        gridLayout_4->addWidget(clearBusMonTable, 5, 3, 2, 1);

        busMonTable = new QTableWidget(groupBox_3);
        if (busMonTable->columnCount() < 6)
            busMonTable->setColumnCount(6);
        QTableWidgetItem *__qtablewidgetitem3 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(0, __qtablewidgetitem3);
        QTableWidgetItem *__qtablewidgetitem4 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(1, __qtablewidgetitem4);
        QTableWidgetItem *__qtablewidgetitem5 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(2, __qtablewidgetitem5);
        QTableWidgetItem *__qtablewidgetitem6 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(3, __qtablewidgetitem6);
        QTableWidgetItem *__qtablewidgetitem7 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(4, __qtablewidgetitem7);
        QTableWidgetItem *__qtablewidgetitem8 = new QTableWidgetItem();
        busMonTable->setHorizontalHeaderItem(5, __qtablewidgetitem8);
        busMonTable->setObjectName(QString::fromUtf8("busMonTable"));
        busMonTable->setEditTriggers(QAbstractItemView::NoEditTriggers);
        busMonTable->horizontalHeader()->setCascadingSectionResizes(true);
        busMonTable->horizontalHeader()->setDefaultSectionSize(75);
        busMonTable->verticalHeader()->setDefaultSectionSize(18);

        gridLayout_4->addWidget(busMonTable, 7, 0, 1, 4);


        horizontalLayout_3->addWidget(groupBox_3);

        MainWindowClass->setCentralWidget(centralWidget);
        statusBar = new QStatusBar(MainWindowClass);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindowClass->setStatusBar(statusBar);
        menuBar = new QMenuBar(MainWindowClass);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 1021, 25));
        menuFile = new QMenu(menuBar);
        menuFile->setObjectName(QString::fromUtf8("menuFile"));
        menuHelp = new QMenu(menuBar);
        menuHelp->setObjectName(QString::fromUtf8("menuHelp"));
        menuTools = new QMenu(menuBar);
        menuTools->setObjectName(QString::fromUtf8("menuTools"));
        MainWindowClass->setMenuBar(menuBar);

        menuBar->addAction(menuFile->menuAction());
        menuBar->addAction(menuTools->menuAction());
        menuBar->addAction(menuHelp->menuAction());
        menuFile->addAction(actionQuit);
        menuHelp->addAction(actionAbout_QModBus);
        menuTools->addAction(actionBatchProcessing);

        retranslateUi(MainWindowClass);
        QObject::connect(actionQuit, SIGNAL(triggered()), MainWindowClass, SLOT(close()));
        QObject::connect(clearBusRawData, SIGNAL(clicked()), rawData, SLOT(clear()));
        QObject::connect(actionBatchProcessing, SIGNAL(triggered()), MainWindowClass, SLOT(openBatchProcessor()));

        tabWidget->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(MainWindowClass);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindowClass)
    {
        MainWindowClass->setWindowTitle(QApplication::translate("MainWindowClass", "QModBus", nullptr));
        actionQuit->setText(QApplication::translate("MainWindowClass", "Quit", nullptr));
        actionAbout_QModBus->setText(QApplication::translate("MainWindowClass", "About QModBus", nullptr));
        actionBatchProcessing->setText(QApplication::translate("MainWindowClass", "Batch processing", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab), QApplication::translate("MainWindowClass", "Modbus RTU", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_2), QApplication::translate("MainWindowClass", "Modbus TCP", nullptr));
        tabWidget->setTabText(tabWidget->indexOf(tab_3), QApplication::translate("MainWindowClass", "Modbus ASCII", nullptr));
        groupBox_2->setTitle(QApplication::translate("MainWindowClass", "ModBus Request", nullptr));
        label_6->setText(QApplication::translate("MainWindowClass", "Slave ID", nullptr));
        label_7->setText(QApplication::translate("MainWindowClass", "Function code", nullptr));
        label_8->setText(QApplication::translate("MainWindowClass", "Start address", nullptr));
        label_9->setText(QApplication::translate("MainWindowClass", "Num of coils", nullptr));
        functionCode->setItemText(0, QApplication::translate("MainWindowClass", "Read Coils (0x01)", nullptr));
        functionCode->setItemText(1, QApplication::translate("MainWindowClass", "Read Discrete Inputs (0x02)", nullptr));
        functionCode->setItemText(2, QApplication::translate("MainWindowClass", "Read Holding Registers (0x03)", nullptr));
        functionCode->setItemText(3, QApplication::translate("MainWindowClass", "Read Input Registers (0x04)", nullptr));
        functionCode->setItemText(4, QApplication::translate("MainWindowClass", "Write Single Coil (0x05)", nullptr));
        functionCode->setItemText(5, QApplication::translate("MainWindowClass", "Write Single Register (0x06)", nullptr));
        functionCode->setItemText(6, QApplication::translate("MainWindowClass", "Write Multiple Coils (0x0f)", nullptr));
        functionCode->setItemText(7, QApplication::translate("MainWindowClass", "Write Multiple Registers (0x10)", nullptr));

        checkBoxHexData->setText(QApplication::translate("MainWindowClass", "Display hex data", nullptr));
        sendBtn->setText(QApplication::translate("MainWindowClass", "Send", nullptr));
        groupBox_4->setTitle(QApplication::translate("MainWindowClass", "Registers", nullptr));
        QTableWidgetItem *___qtablewidgetitem = regTable->horizontalHeaderItem(0);
        ___qtablewidgetitem->setText(QApplication::translate("MainWindowClass", "Data type", nullptr));
        QTableWidgetItem *___qtablewidgetitem1 = regTable->horizontalHeaderItem(1);
        ___qtablewidgetitem1->setText(QApplication::translate("MainWindowClass", "Register", nullptr));
        QTableWidgetItem *___qtablewidgetitem2 = regTable->horizontalHeaderItem(2);
        ___qtablewidgetitem2->setText(QApplication::translate("MainWindowClass", "Data", nullptr));
        groupBox_3->setTitle(QApplication::translate("MainWindowClass", "Bus Monitor", nullptr));
        label_10->setText(QApplication::translate("MainWindowClass", "Raw data received:", nullptr));
        clearBusRawData->setText(QApplication::translate("MainWindowClass", "Clear", nullptr));
        label_11->setText(QApplication::translate("MainWindowClass", "ModBus requests/responses:", nullptr));
        clearBusMonTable->setText(QApplication::translate("MainWindowClass", "Clear", nullptr));
        QTableWidgetItem *___qtablewidgetitem3 = busMonTable->horizontalHeaderItem(0);
        ___qtablewidgetitem3->setText(QApplication::translate("MainWindowClass", "I/O", nullptr));
        QTableWidgetItem *___qtablewidgetitem4 = busMonTable->horizontalHeaderItem(1);
        ___qtablewidgetitem4->setText(QApplication::translate("MainWindowClass", "Slave ID", nullptr));
        QTableWidgetItem *___qtablewidgetitem5 = busMonTable->horizontalHeaderItem(2);
        ___qtablewidgetitem5->setText(QApplication::translate("MainWindowClass", "Function code", nullptr));
        QTableWidgetItem *___qtablewidgetitem6 = busMonTable->horizontalHeaderItem(3);
        ___qtablewidgetitem6->setText(QApplication::translate("MainWindowClass", "Start address", nullptr));
        QTableWidgetItem *___qtablewidgetitem7 = busMonTable->horizontalHeaderItem(4);
        ___qtablewidgetitem7->setText(QApplication::translate("MainWindowClass", "Num of coils", nullptr));
        QTableWidgetItem *___qtablewidgetitem8 = busMonTable->horizontalHeaderItem(5);
        ___qtablewidgetitem8->setText(QApplication::translate("MainWindowClass", "CRC", nullptr));
        menuFile->setTitle(QApplication::translate("MainWindowClass", "File", nullptr));
        menuHelp->setTitle(QApplication::translate("MainWindowClass", "Help", nullptr));
        menuTools->setTitle(QApplication::translate("MainWindowClass", "Tools", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindowClass: public Ui_MainWindowClass {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
