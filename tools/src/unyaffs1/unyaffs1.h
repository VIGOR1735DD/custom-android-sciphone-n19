/*
 * definition copied from yaffs project
 */

#ifndef __UNYAFFS_H__
#define __UNYAFFS_H__


#define YAFFS_MAX_NAME_LENGTH       255
#define YAFFS_MAX_ALIAS_LENGTH      159
/* Definition of types */
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned __u32;

typedef struct {
    unsigned chunkId:20;
    unsigned serialNumber:2;
    unsigned byteCount:10;
    unsigned junk:16;
    unsigned objectId:16;
} yaffs_PackedTags2TagsPart;

typedef struct {
    yaffs_PackedTags2TagsPart t;
} yaffs_PackedTags2;

typedef enum {
    YAFFS_ECC_RESULT_UNKNOWN,
    YAFFS_ECC_RESULT_NO_ERROR,
    YAFFS_ECC_RESULT_FIXED,
    YAFFS_ECC_RESULT_UNFIXED
} yaffs_ECCResult;

typedef enum {
    YAFFS_OBJECT_TYPE_UNKNOWN,
    YAFFS_OBJECT_TYPE_FILE,
    YAFFS_OBJECT_TYPE_SYMLINK,
    YAFFS_OBJECT_TYPE_DIRECTORY,
    YAFFS_OBJECT_TYPE_HARDLINK,
    YAFFS_OBJECT_TYPE_SPECIAL
} yaffs_ObjectType;


/* -------------------------- Object structure -------------------------------*/
/* This is the object structure as stored on NAND */

typedef struct {
    yaffs_ObjectType type;

    /* Apply to everything  */
    int parentObjectId;
    __u16 sum__NoLongerUsed;        /* checksum of name. No longer used */
    char name[YAFFS_MAX_NAME_LENGTH + 1];

    __u32 yst_mode;         /* protection */

    __u32 yst_uid;
    __u32 yst_gid;
    __u32 yst_atime;
    __u32 yst_mtime;
    __u32 yst_ctime;

    /* File size  applies to files only */
    int fileSize;

    /* Equivalent object id applies to hard links only. */
    int equivalentObjectId;

    /* Alias is for symlinks only. */
    char alias[YAFFS_MAX_ALIAS_LENGTH + 1];

    __u32 yst_rdev;     /* device stuff for block and char devices (major/min) */

    __u32 roomToGrow[12];

} yaffs_ObjectHeader;

#endif
