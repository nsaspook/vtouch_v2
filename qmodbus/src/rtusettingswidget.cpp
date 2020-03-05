#include "serialsettingswidget.h"
#include "rtusettingswidget.h"
#include "ui_serialsettingswidget.h"
#include "modbus.h"

RtuSettingsWidget::RtuSettingsWidget(QWidget *parent) :
    SerialSettingsWidget(parent)
{
}

RtuSettingsWidget::~RtuSettingsWidget()
{
}

void RtuSettingsWidget::changeModbusInterface(const QString& port, char parity)
{
    releaseSerialModbus();

    m_serialModbus = modbus_new_rtu( port.toLatin1().constData(),
            ui->baud->currentText().toInt(),
            parity,
            ui->dataBits->currentText().toInt(),
            ui->stopBits->currentText().toInt() );

    if (!modbus_rtu_set_serial_mode(m_serialModbus, MODBUS_RTU_RS485))
    {
        ;
    }


    if( modbus_connect( m_serialModbus ) == -1 )
    {
        emit connectionError( tr( "Could not connect serial port!" ) );

        releaseSerialModbus();
    }
    if (!modbus_rtu_set_rts(m_serialModbus, MODBUS_RTU_RTS_UP))
    {
        ;
    }
}
