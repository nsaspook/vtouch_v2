/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   tserv.h
 * Author: root
 *
 * Created on April 17, 2020, 9:49 AM
 */

#ifndef TSERV_H
#define TSERV_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <fcntl.h> 
#include <errno.h>
#include <termios.h>
#include <unistd.h>
#include <time.h>
#include <stdbool.h>

#define LOG_FILE "/media/disk/minicom1.txt"

	int get_log(int);
#ifdef __cplusplus
}
#endif

#endif /* TSERV_H */

