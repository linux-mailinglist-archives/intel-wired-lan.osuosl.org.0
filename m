Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A053171C6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Feb 2021 21:56:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 609ED8713A;
	Wed, 10 Feb 2021 20:56:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GJNeiUgsTYzF; Wed, 10 Feb 2021 20:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0815F8711A;
	Wed, 10 Feb 2021 20:56:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A9CF11BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 20:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A54AA86B87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 20:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHq87y241XZj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Feb 2021 20:56:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 387B786B67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 20:56:47 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id f2so4684474ljp.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Feb 2021 12:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=yTKFf76wqSMU6SI7AF+3VAsqR+u7g+aO5zDSOj/ZOw4=;
 b=IrVfEvimVWIpKdV6vSl4jZBwbDHIdiyvQhG+S3/p+pPYBntW3goWs8or6hrTr2Rie1
 IUxLvtX1ap4H4v3riwIqjW46KzBcN64Yba91dRP75Pb4GqeAIJ4Hj8JLNre/6GUFN0vL
 ZiIZWZCwoPxVCZC3qW/xenJXunSW1hS6P0AGtSVNEv7B4XZsG9BoJJAHMKbpkIjbeHzO
 oIQYXvayKag12HNuTeNPouyYyxPCVv4wRLprrYWLTvqhhg+Vccd9NORL2zyfNYlvTZ9G
 wBCr9Jij6J/EgFpN7GSes2fYmev0hVB2FRJG3wbYt6VeT25odiAGv2p03rhUI5NEgZsf
 jzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=yTKFf76wqSMU6SI7AF+3VAsqR+u7g+aO5zDSOj/ZOw4=;
 b=tQEhxvdgdEYwPyv052oE6tRMonj1VJFZhln1cfHmkD2ZF7XAYGgXI2MukBza3X3E3N
 oFjYEbpkZ23AAydniS80hMQFD1bjbGF/CUXlGU561HQsBQ5n2JNCCi1qHpkZFjn+kIJN
 gOzYcw2r5G6yE1LHxOEGXMh4y79mgebOlMaHoAAYLJqj2WoCHVNdrksW1jF7sNyloIvY
 eF7TAZ0V0rJP+8m64fmQeHrpf1d2Nj4gnsvja8lj3tWCh/IQg2COr3kWsupz+o92XXDR
 HVa0yUKc4h/iWDJgsnOVW835945DUVypoahAFBJXwXqJGhU50YZr/jzoCgpxg6XmyPYx
 s0RQ==
X-Gm-Message-State: AOAM532JVAZlWkgE4XEStM8hKhgcrIr/HGNw2YwiczqgIutd3U+PpyN8
 U4dnZDgcwSi8BI4bop+2F776KE5JtxAWJ0dFa5vHRSJHick=
X-Google-Smtp-Source: ABdhPJyDsVTz6WKrs0YTIN/Ug7zwZjZslXnaNNE89iMyjLn/iWrtXAczgKa6iAxatIaurkgCqbfgBdKA2wfD+Q5tTT8=
X-Received: by 2002:a2e:8eda:: with SMTP id e26mr2937884ljl.85.1612990604747; 
 Wed, 10 Feb 2021 12:56:44 -0800 (PST)
MIME-Version: 1.0
From: JD <jdtxs00@gmail.com>
Date: Wed, 10 Feb 2021 14:56:34 -0600
Message-ID: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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

Hello,

I've encountered a NIC driver bug that leads to null packets being
transmitted and arbitrary/OOB memory reads by the iavf driver.

I'm unfortunately not sure how the issue starts, but it has been
happening across many different AMD servers and virtual machines.

Running a tcpdump (tcpdump -i bond0 -nne ether host 00:00:00:00:00:00)
on bond0 results in these packets being produced at a high rate:

13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, length
0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, ctrl
0x0000: Information, send seq 0, rcv seq 0, Flags [Command], length
144
        0x0000:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0010:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0020:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0030:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0040:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0050:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0060:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0070:  0000 0000 0000 0000 0000 0000 0000 0000  ................
        0x0080:  0000 0000 0000 0000 0000 0000 0000 0000  ................


As you can see, they have a dest/src ether of 00:00:00:00:00:00 and
are completely null.  This doesn't happen on every virtual machine,
some return absolutely nothing.

If I filter the tcpdump command to ignore empty packets (all dots),
some other interesting items begin to appear:

        0x0500:  0000 0000 0000 0029 0100 071b 0473 656c  .......).....sel
        0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a  inuxsystem_u:obj
        0x0520:  6563 745f 723a 6269 6e5f 743a 7330 0000  ect_r:bin_t:s0..
[...]
        0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70 6572  ../usr/lib64/per
        0x0090:  6c35 2f76 656e 646f 725f 7065 726c 2f46  l5/vendor_perl/F
        0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d  ile/Spec/Unix.pm

To me, that looks like it's reading data from memory and attempting to
send from 00:00:00:00:00:00 to 00:00:00:00:00:00.

If I run that same tcpdump on a different servers exhibiting the null
packets, completely different items show up which also appear to be
from memory.

Keeping a tcpdump results in the same items from memory being repeated
infinitely with no observable variation.

So, it seems like the iavf driver is encountering some bug with memory
management and ends up transmitting null packets or arbitrary data
from memory over bond0.

How/why did I notice this behavior? The VM's seem to perform worse
over the network when this occurs. They usually exhibit small amounts
of packet loss, or poor SSH responsiveness. Oddly, I have seen this
bug in the past, and it resulted in dmesg on the parent printing
Spoofed packet warnings for the i40e driver. Now it does not, yet the
null packets still occur.

I would like to help in any way I can to resolve this in the iavf/i40e
driver. I'm happy to provide information from the servers if it's
needed.

For reference, here is the setup on every single AMD server:
VM:
CentOS 7.9
NIC driver: iavf 4.0.1
Kernel 4.19.163

KVM parent:
CentOS 7.9
NIC driver: i40e 2.12.6
Kernel: 4.19.163
2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
Vendor: Supermicro Network Adapter AOC-S25G-i2S
Firmware version: 7.20 0x800082b3 1.2585.0
MOBO: Supermicro H11DSU-iN
CPU: AMD EPYC 7352

And here is the dmesg log (grepped for iavf) from a server that has the issue:
iavf: loading out-of-tree module taints kernel.
iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - version 4.0.1
iavf 0000:00:06.0: Multiqueue Enabled: Queue pair count = 4
iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39
iavf 0000:00:06.0: GRO is enabled
iavf 0000:00:05.0: Multiqueue Enabled: Queue pair count = 4
iavf 0000:00:05.0: MAC address: 52:54:00:a6:3e:62
iavf 0000:00:05.0: GRO is enabled
iavf 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex
iavf 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex

Thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
