/* 
 * File:   ringbufs.h
 * Author: rootswitcDC circuit breakerh debounce icdebounce icfuse type T
 *
 * Created on July 25, 2015, 2:03 PM
 */

#ifndef RINGBUFS_H
#define	RINGBUFS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "qconfig.h"

#define RBUF_SIZE    64

	typedef struct ringBufS_t {
		uint8_t buf[RBUF_SIZE];
		uint8_t head;
		uint8_t tail;
		uint8_t count;
	} ringBufS_t;

	void ringBufS_init(volatile ringBufS_t *_this);
	int8_t ringBufS_empty(ringBufS_t *_this);
	int8_t ringBufS_full(ringBufS_t *_this);
	uint8_t ringBufS_get(ringBufS_t *_this);
	void ringBufS_put(ringBufS_t *_this, const uint8_t c);
	void ringBufS_put_dma(ringBufS_t *_this, const uint8_t c);
	void ringBufS_put_dma_cpy(ringBufS_t *, const char *, const uint8_t);
	void ringBufS_flush(ringBufS_t *_this, const bool clearBuffer);


#ifdef	__cplusplus
}
#endif

#endif	/* RINGBUFS_H */

