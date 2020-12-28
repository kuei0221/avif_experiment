# README

# Introduction

This is an experimental project based on the interest of AVIF, AV1 image file format.

The main purpose is to integrate AVIF with Rails and paperclip, and test how much the performance might be affected.

The project allows the user to compress their uploaded photo to AVIF and record the time spent.

If the photo requires any further processing like resizing, ImageMagick will handle it first.

### Why and what is AVIF?

AVIF is an image file format introduced and open-sourced by [NetFlix](https://netflixtechblog.com/avif-for-next-generation-image-coding-b1d75675fe4)  with better compression efficiency.

Although it is only supported in a few browsers (chrome and firefox) at the moment, it has shown a better compression ratio than existing image formats like JPG and PNG.  It is not widely supported yet, but with the growing concern among tech companies, it worth keeping an eye on it.

# Requriment

To compress an image to AVIF format, [libavif](https://github.com/AOMediaCodec/libavif) library needs to be installed.

`libavif` allows encoding and decoding on AVIF.

If you are mac or ubuntu user, you can install it with the following guide.

### MAC

`brew install libavif`

### Ubuntu

Follow the guide and Install this [package](https://packages.ubuntu.com/hirsute/amd64/libavif-bin/download)

* Remind: This is a package for amd64 CPU, you can find another version in this [page]([https://packages.ubuntu.com/hirsute/libavif-bin](https://packages.ubuntu.com/hirsute/libavif-bin))

Add the source to the list: `sudo apt edit-sources`

Then run the update: `sudo apt-get update`

After this, you can then install with `sudo apt-get install libavif-bin`
