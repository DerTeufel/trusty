/*
* Copyright (c) 2015 MediaTek Inc.
*
* Permission is hereby granted, free of charge, to any person obtaining
* a copy of this software and associated documentation files
* (the "Software"), to deal in the Software without restriction,
* including without limitation the rights to use, copy, modify, merge,
* publish, distribute, sublicense, and/or sell copies of the Software,
* and to permit persons to whom the Software is furnished to do so,
* subject to the following conditions:
*
* The above copyright notice and this permission notice shall be
* included in all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#ifndef __TRUSTZONE_TA_SECURE_TIMER__
#define __TRUSTZONE_TA_SECURE_TIMER__


#define TZ_TA_SECURETIME_UUID         "b25bf100-d276-11e2-9c9c-9c9c9c9c9c9c"


#define uint64 unsigned long long

#define TZ_SECURETIME_BIRTHDATE 1392967151
#define TZCMD_SECURETIME_GET_CURRENT_COUNTER            0x00000000  // used for getting encrypted prtime struct to save file when shutdown and suspend or after THREAD_SAVEFILE_VALUE second
#define TZCMD_SECURETIME_SET_CURRENT_COUNTER            0x00000001  //  used for set new playready time using the current rtc counter and encrypted saved prtime struct when resume and bootup
#define TZCMD_SECURETIME_INC_CURRENT_COUNTER            0x00000002  //  used for increase current counter at least PR_TIME_INC_COUNTER secs and no more than PR_TIME_MAX_COUNTER_OFFSET secs
#define TZCMD_SECURETIME_SET_CURRENT_PRTIME            0x00000003   // used for network time-sync module to sync pr_time
#define GB_TIME_INC_COUNTER 5
#define GB_TIME_MAX_COUNTER_OFFSET 8

#define GB_TIME_FILE_BASE        50000
#define GB_TIME_FILE_ERROR_SIGN  (GB_TIME_FILE_BASE + 1)
#define GB_TIME_FILE_OK_SIGN   (GB_TIME_FILE_BASE + 2)
#define GB_NO_SECURETD_FILE        (GB_TIME_FILE_BASE + 3)
#define GB_TIME_ERROR_SETPRTIME   (GB_TIME_FILE_BASE + 4)

#define DRM_UINT64 unsigned long long


typedef struct TZ_GB_SECURETIME_INFO{
volatile unsigned long long hwcounter;
volatile unsigned long long gb_time;
char signature[8];
}TZ_GB_SECURETIME_INFO;

struct TM_GB {
   int     tm_sec;         /* seconds */
   int     tm_min;         /* minutes */
   int     tm_hour;        /* hours */
   int     tm_mday;        /* day of the month */
   int     tm_mon;         /* month */
   int     tm_year;        /* year */
   int     tm_wday;        /* day of the week */
   int     tm_yday;        /* day in the year */
   int     tm_isdst;       /* daylight saving time */

   long int tm_gmtoff;     /* Seconds east of UTC.  */
   const char *tm_zone;    /* Timezone abbreviation.  */
};

//end of SUPPORT_GB_SECURE_CLOCK

typedef struct SECURETIME_IVDATA {
    unsigned long long qwInitializationVector;
    unsigned long long qwBlockOffset;
    unsigned long  bByteOffset;
} SECURETIME_IVDATA;


typedef struct TZ_SECURETIME_ENCINFO{
    char                                        role[100];
    unsigned int                         dataSize;                  //total enc buffer size
    unsigned int                         segNum;                  //trunk number
    SECURETIME_IVDATA          iv[10];                      //IV data for each trunk
    unsigned int                         offset[10];               //pointer to an integer array, each element describe clear data size
    unsigned int                         length[10];              //pointer to an integer array, each element describe enc data size
    unsigned int                      dstHandle;              //true : dstData is a handle; false : dstData is a buffer;
}TZ_SECURETIME_ENCINFO;

unsigned long long GetTee_SecureTime(); //only be userd in tee, in user or kernel, should call the tee_service call


#endif /* __TRUSTZONE_TA_PLAYREADY__ */

