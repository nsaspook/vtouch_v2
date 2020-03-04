/****************************************************************************
** Meta object code from reading C++ file 'tcpipsettingswidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../qmodbus/src/tcpipsettingswidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tcpipsettingswidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_TcpIpSettingsWidget_t {
    QByteArrayData data[8];
    char stringdata0[88];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_TcpIpSettingsWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_TcpIpSettingsWidget_t qt_meta_stringdata_TcpIpSettingsWidget = {
    {
QT_MOC_LITERAL(0, 0, 19), // "TcpIpSettingsWidget"
QT_MOC_LITERAL(1, 20, 13), // "tcpPortActive"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 3), // "val"
QT_MOC_LITERAL(4, 39, 15), // "connectionError"
QT_MOC_LITERAL(5, 55, 3), // "msg"
QT_MOC_LITERAL(6, 59, 20), // "on_cbEnabled_clicked"
QT_MOC_LITERAL(7, 80, 7) // "checked"

    },
    "TcpIpSettingsWidget\0tcpPortActive\0\0"
    "val\0connectionError\0msg\0on_cbEnabled_clicked\0"
    "checked"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_TcpIpSettingsWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x06 /* Public */,
       4,    1,   32,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    1,   35,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,
    QMetaType::Void, QMetaType::QString,    5,

 // slots: parameters
    QMetaType::Void, QMetaType::Bool,    7,

       0        // eod
};

void TcpIpSettingsWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<TcpIpSettingsWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->tcpPortActive((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->connectionError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->on_cbEnabled_clicked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (TcpIpSettingsWidget::*)(bool );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TcpIpSettingsWidget::tcpPortActive)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (TcpIpSettingsWidget::*)(const QString & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&TcpIpSettingsWidget::connectionError)) {
                *result = 1;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject TcpIpSettingsWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_TcpIpSettingsWidget.data,
    qt_meta_data_TcpIpSettingsWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *TcpIpSettingsWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *TcpIpSettingsWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_TcpIpSettingsWidget.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "IModbus"))
        return static_cast< IModbus*>(this);
    return QWidget::qt_metacast(_clname);
}

int TcpIpSettingsWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void TcpIpSettingsWidget::tcpPortActive(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void TcpIpSettingsWidget::connectionError(const QString & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
