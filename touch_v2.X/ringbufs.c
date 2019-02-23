#include  <string.h>
#include  "ringbufs.h"

/*
 * general ring buffer fuctions from the internet
 */
uint8_t modulo_inc(const uint8_t value, const uint8_t modulus)
{
	uint8_t my_value = value + 1;
	if (my_value >= modulus) {
		my_value = 0;
	}
	return my_value;
}

uint8_t modulo_dec(const uint8_t value, const uint8_t modulus)
{
	uint8_t my_value = (0 == value) ? (modulus - 1) : (value - 1);
	return my_value;
}

void ringBufS_init(volatile ringBufS_t *_this)
{
	/*****
	  The following clears:
	    -> buf
	    -> head
	    -> tail
	    -> count
	  and sets head = tail
	 ***/
	memset(_this, 0, sizeof(*_this));
}

int8_t ringBufS_empty(ringBufS_t *_this)
{
	return(0 == _this->count);
}

int8_t ringBufS_full(ringBufS_t *_this)
{
	return(_this->count >= RBUF_SIZE);
}

uint8_t ringBufS_get(ringBufS_t *_this)
{
	uint8_t c;
	if (_this->count > 0) {
		c = _this->buf[_this->tail];
		_this->tail = modulo_inc(_this->tail, RBUF_SIZE);
		--_this->count;
	} else {
		c = 0; // return null with empty buffer
	}
	return(c);
}

void ringBufS_put(ringBufS_t *_this, const uint8_t c)
{
	if (_this->count < RBUF_SIZE) {
		_this->buf[_this->head] = c;
		_this->head = modulo_inc(_this->head, RBUF_SIZE);
		++_this->count;
	}
}

void ringBufS_put_dma(ringBufS_t *_this, const uint8_t c)
{
	if (_this->count < RBUF_SIZE) {
		_this->buf[_this->head] = c;
		++_this->head;
		++_this->count;
	}
}

void ringBufS_flush(ringBufS_t *_this, const int8_t clearBuffer)
{
	_this->count = 0;
	_this->head = 0;
	_this->tail = 0;
	if (clearBuffer) {
		memset(_this->buf, 0, sizeof(_this->buf));
	}
}

