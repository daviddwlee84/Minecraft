# Arbritrary Notes

## Release Version Meanings

| My Github Release Tag | Minecraft Official Server | Remark      |
| --------------------- | ------------------------- | ----------- |
| v1.0.X                | 1.16.4                    | Vanilla     |
| v1.1.X                | 1.16.5                    | Vanilla     |
| v2.0.X                | 1.17(.0)                  | Vanilla     |
| v2.1.X                | 1.17.1                    | With Fabric |

## Zip Compression

```txt
$ man zip

    Split archives (archives split over multiple files) require the .zip extension on the last split.

    Split archives.  zip version 3.0 and later can create split archives.  A split archive is a standard zip archive split over multiple files.  (Note that split archives are not just  archives  split
    in  to  pieces,  as the offsets of entries are now based on the start of each split.  Concatenating the pieces together will invalidate these offsets, but unzip can usually deal with it.  zip will
    usually refuse to process such a spliced archive unless the -FF fix option is used to fix the offsets.)

    One use of split archives is storing a large archive on multiple removable media.  For a split archive with 20 split files the files are typically named (replace ARCHIVE with the name of your  ar‐
    chive)  ARCHIVE.z01,  ARCHIVE.z02,  ..., ARCHIVE.z19, ARCHIVE.zip.  Note that the last file is the .zip file.  In contrast, spanned archives are the original multi-disk archive generally requiring
    floppy disks and using volume labels to store disk numbers.  zip supports split archives but not spanned archives, though a procedure exists for converting split archives  of  the  right  size  to
    spanned archives.  The reverse is also true, where each file of a spanned archive can be copied in order to files with the above names to create a split archive.

    Use  -s  to set the split size and create a split archive.  The size is given as a number followed optionally by one of k (kB), m (MB), g (GB), or t (TB) (the default is m).  The -sp option can be
    used to pause zip between splits to allow changing removable media, for example, but read the descriptions and warnings for both -s and -sp below.

    -s splitsize
    --split-size splitsize
            Enable creating a split archive and set the split size.  A split archive is an archive that could be split over many files.  As the archive is created, if the size of  the  archive  reaches
            the  specified  split  size, that split is closed and the next split opened.  In general all splits but the last will be the split size and the last will be whatever is left.  If the entire
            archive is smaller than the split size a single-file archive is created.

            Split archives are stored in numbered files.  For example, if the output archive is named archive and three splits are required, the resulting  archive  will  be  in  the  three  files  ar‐
            chive.z01, archive.z02, and archive.zip.  Do not change the numbering of these files or the archive will not be readable as these are used to determine the order the splits are read.

            Split size is a number optionally followed by a multiplier.  Currently the number must be an integer.  The multiplier can currently be one of k (kilobytes), m (megabytes), g (gigabytes), or
            t (terabytes).  As 64k is the minimum split size, numbers without multipliers default to megabytes.  For example, to create a split archive called foo with the contents of the bar directory
            with splits of 670 MB that might be useful for burning on CDs, the command:

                    zip -s 670m -r foo bar

            could be used.

            Currently  the  old  splits  of  a split archive are not excluded from a new archive, but they can be specifically excluded.  If possible, keep the input and output archives out of the path
            being zipped when creating split archives.

            Using -s without -sp as above creates all the splits where foo is being written, in this case the current directory.  This split mode updates the splits as the  archive  is  being  created,
            requiring  all  splits  to remain writable, but creates split archives that are readable by any unzip that supports split archives.  See -sp below for enabling split pause mode which allows
            splits to be written directly to removable media.

            The option -sv can be used to enable verbose splitting and provide details of how the splitting is being done.  The -sb option can be used to ring the bell when  zip  pauses  for  the  next
            split destination.

            Split  archives  cannot be updated, but see the -O (--out) option for how a split archive can be updated as it is copied to a new archive.  A split archive can also be converted into a sin‐
            gle-file archive using a split size of 0 or negating the -s option:

                    zip -s 0 split.zip --out single.zip

            Also see -U (--copy) for more on using copy mode.

    -Z cm
    --compression-method cm
            Set the default compression method.  Currently the main methods supported by zip are store and deflate.  Compression method can be set to:

            store - Setting the compression method to store forces zip to store entries with no compression.  This is generally faster than compressing entries, but results in no space  savings.   This
            is the same as using -0 (compression level zero).

            deflate - This is the default method for zip.  If zip determines that storing is better than deflation, the entry will be stored instead.

            bzip2  - If bzip2 support is compiled in, this compression method also becomes available.  Only some modern unzips currently support the bzip2 compression method, so test the unzip you will
            be using before relying on archives using this method (compression method 12).

            For example, to add bar.c to archive foo using bzip2 compression:

                    zip -Z bzip2 foo bar.c

            The compression method can be abbreviated:

                    zip -Zb foo bar.c

    -#
    (-0, -1, -2, -3, -4, -5, -6, -7, -8, -9)
            Regulate the speed of compression using the specified digit #, where -0 indicates no compression (store all files), -1 indicates the fastest compression  speed  (less  compression)  and  -9
            indicates the slowest compression speed (optimal compression, ignores the suffix list). The default compression level is -6.

            Though still being worked, the intention is this setting will control compression speed for all compression methods.  Currently only deflation is controlled.
```

## Github CLI

### Github Release

> * [About releases - GitHub Docs](https://docs.github.com/en/github/administering-a-repository/releasing-projects-on-github/about-releases)

```txt
? Title (optional) Chunky radius 5000
? Release notes Write my own
? Is this a prerelease? No
? Submit? Publish release
HTTP 422: Validation Failed (https://uploads.github.com/repos/daviddwlee84/Minecraft/releases/46014732/assets?label=&name=world_20210711.zip)
size must be less than or equal to 2147483648
```

## Other

* [How To Format Date and Time in Linux, macOS, and Bash?](https://www.shell-tips.com/linux/how-to-format-date-and-time-in-linux-macos-and-bash/)
