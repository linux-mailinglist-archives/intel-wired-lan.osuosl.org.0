Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC062215C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 22:07:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C9F8203E2;
	Wed, 15 Jul 2020 20:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbtt-4aCXhjE; Wed, 15 Jul 2020 20:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27A5920407;
	Wed, 15 Jul 2020 20:07:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3BB421BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:06:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A5142C96A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:06:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mZfUyYDxkfhW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 20:06:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E1F7F27408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 20:06:10 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id 80so3093165qko.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 13:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=Showm03rPwz5x6u/0lOnKIZybQu4gK9v4kmFyf2snNY=;
 b=iclvU3iLzUE2fe50NF58xUoiARGvPmV+pykgPxXXd1mYB6lrbV5l15RCJYxWlR4ke7
 XRrMpl/C5uJC+S82xbJtVUuwS1NjtUZXBdfPtZNJMv9MjgZvVw6+fFS/je/fvpf9Y6SR
 hpjyKIDIFm21ZEcX6XoESFAOvIo7VHu+HBpC58k8V4dNoNs802X4RO+r6SobCj1qOvtN
 HSPk9bBlCh8BBh+pBslNeialpqatOfn8LBSrWcYh98CTjt/vVpJbAxGtEaJFvrz5lSgU
 Zb72w2n0UuKPDXIYwWH53SlMT8L2Uu6JzJ6wOIVKY2CPonUFNpl1gQkRPxDWDKmcXeSK
 9Jrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Showm03rPwz5x6u/0lOnKIZybQu4gK9v4kmFyf2snNY=;
 b=s0tPhh+c4FY+wWOX90Kj/J5pv5Pi+HEWhncsc5dHEKQiqxEfBfzim+J2VN2B5HZVU0
 oHGWFWhdA33r0w9/wh2BdlbwQPo4uWxbvswNqoGM0YJ0JBS31p9VHZxDgGexvIO4bCXq
 j7od+3J86yp2O3wNEdlO0c72Swg/H3IfEY3V1CW8DTwKPX8JIng3f7Q7dt127nybbamA
 VNrGTWQZh85ArKjWGwS950Yl1Y4SVDx09pkDFTFu7KjG0qTIRSz8rOSiVT7VyMpyQwJk
 3V33bkbYDHQw3yUiZgRaKeI4Ziw4bsVQ415T8wdMhcbLma0gzslMQXGaP8hUgbnXqY6f
 EO8A==
X-Gm-Message-State: AOAM531PEszAC1eeD03nvJpKunTJLvs/04PcL6p8W3VJBaRbUIrxKr4z
 IvRvXtnVogAahi18uwT5o/u5YInfJFpRU2O2EDI=
X-Google-Smtp-Source: ABdhPJyXC80xZ1DS8JNne5DPfDboywCGRMR1EW3uwFmZ6xxCzuVf5/h2k77EzHUsKbcvqUsKbUOB3n/Kxf0ywbqVM/g=
X-Received: by 2002:a37:8283:: with SMTP id e125mr738293qkd.175.1594843569602; 
 Wed, 15 Jul 2020 13:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
In-Reply-To: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 15 Jul 2020 22:05:58 +0200
Message-ID: <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
To: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 jeffrey.t.kirsher@intel.com, intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Wed, 15 Jul 2020 20:07:39 +0000
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After a  lot of debugging it turns out that the bug is in igb...

driver: igb
version: 5.6.0-k
firmware-version:  0. 6-1

03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
Connection (rev 03)

It's interesting that it only seems to happen on longer links... Any clues?

On Sat, Jul 11, 2020 at 5:53 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>
> Hi,
>
> I first detected this with 5.7.6 but it seems to apply as far back as 5.6.1...
> (so, 5.7.8 client -> nat (5.6.1 -> 5.8-rc4 -> server 5.7.7)
>
> It seems to me that the window size doesn't advance, so i did revert
> the tcp: grow window for OOO packets only for SACK flows [1]
> but it did no difference...
>
> I have a 384 MB tcpdump of a iperf3 session that starts low and then
> actually starts to get the bandwidth...
> I do use BBR - I have tried with cubic... it didn't help  - the NAT
> machine does use fq but changing it doesn't seem to yield any other
> results.
>
> Doing -P10 gives you the bandwith and can sometimes break the
> stalemate but you'll end up back with the lower transfer speed again.
> (it only seems to apply to NAT - the machine is a: A2SDi-12C-HLN4F and
> has handled this without problems in the past...)
>
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v5.7.8&id=bf780119617797b5690e999e59a64ad79a572374
>
> First iperf3 as a reference:
> [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> [  5]   0.00-1.00   sec   113 MBytes   945 Mbits/sec    0    814 KBytes
> [  5]   1.00-2.00   sec   109 MBytes   912 Mbits/sec    0    806 KBytes
> [  5]   2.00-3.00   sec   112 MBytes   944 Mbits/sec   31    792 KBytes
> [  5]   3.00-4.00   sec   101 MBytes   849 Mbits/sec   31   1.18 MBytes
> [  5]   4.00-5.00   sec   108 MBytes   902 Mbits/sec    0    783 KBytes
> [  5]   5.00-6.00   sec   111 MBytes   933 Mbits/sec   31    778 KBytes
> [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec   93    772 KBytes
> [  5]   7.00-8.00   sec   112 MBytes   944 Mbits/sec    0    778 KBytes
> [  5]   8.00-9.00   sec   111 MBytes   933 Mbits/sec   60    778 KBytes
> [  5]   9.00-10.00  sec   111 MBytes   933 Mbits/sec   92    814 KBytes
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  1.07 GBytes   923 Mbits/sec  338             sender
> [  5]   0.00-10.01  sec  1.07 GBytes   919 Mbits/sec                  receiver
>
> After that:
> [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> [  5]   0.00-1.00   sec  4.77 MBytes  40.0 Mbits/sec    0   42.4 KBytes
> [  5]   1.00-2.00   sec  4.10 MBytes  34.4 Mbits/sec    0   84.8 KBytes
> [  5]   2.00-3.00   sec  4.60 MBytes  38.6 Mbits/sec    0   87.7 KBytes
> [  5]   3.00-4.00   sec  4.23 MBytes  35.4 Mbits/sec    0   42.4 KBytes
> [  5]   4.00-5.00   sec  4.23 MBytes  35.4 Mbits/sec    0   42.4 KBytes
> [  5]   5.00-6.00   sec  4.47 MBytes  37.5 Mbits/sec    0   76.4 KBytes
> [  5]   6.00-7.00   sec  5.47 MBytes  45.9 Mbits/sec    0   67.9 KBytes
> [  5]   7.00-8.00   sec  4.66 MBytes  39.1 Mbits/sec    0   67.9 KBytes
> [  5]   8.00-9.00   sec  4.35 MBytes  36.5 Mbits/sec    0   82.0 KBytes
> [  5]   9.00-10.00  sec  4.66 MBytes  39.1 Mbits/sec    0    139 KBytes
> - - - - - - - - - - - - - - - - - - - - - - - -
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec  45.5 MBytes  38.2 Mbits/sec    0             sender
> [  5]   0.00-10.00  sec  45.0 MBytes  37.8 Mbits/sec                  receiver
>
> You even get some:
> [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> [  5]   0.00-1.00   sec  5.38 MBytes  45.2 Mbits/sec    0   42.4 KBytes
> [  5]   1.00-2.00   sec  7.08 MBytes  59.4 Mbits/sec    0    535 KBytes
> [  5]   2.00-3.00   sec   108 MBytes   907 Mbits/sec    0    778 KBytes
> [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec    0    814 KBytes
> [  5]   4.00-5.00   sec  91.2 MBytes   765 Mbits/sec    0    829 KBytes
> [  5]   5.00-6.00   sec   111 MBytes   933 Mbits/sec    0    783 KBytes
> [  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec    0    769 KBytes
> [  5]   7.00-8.00   sec   111 MBytes   933 Mbits/sec    0    778 KBytes
> [  5]   8.00-9.00   sec   112 MBytes   944 Mbits/sec    0    809 KBytes
> [  5]   9.00-10.00  sec   110 MBytes   923 Mbits/sec    0    823 KBytes
> - - - - - - - - - - - - - - - - - - - - - - - - -
> [ ID] Interval           Transfer     Bitrate         Retr
> [  5]   0.00-10.00  sec   879 MBytes   738 Mbits/sec    0             sender
> [  5]   0.00-10.00  sec   875 MBytes   734 Mbits/sec                  receiver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
