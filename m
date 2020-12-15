Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D632DADBD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 14:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B425A873F4;
	Tue, 15 Dec 2020 13:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQGXHkxTeNq5; Tue, 15 Dec 2020 13:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AB67873CB;
	Tue, 15 Dec 2020 13:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B87541BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B0E3D85124
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3-4MzXPsNQG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 13:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0AD984F2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:09:24 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id h16so4979248qvu.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 05:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hdqeyKkCIkULH5xghW+2OPTmzGrNx+Inf0KzB+LcKvU=;
 b=h0Eu8pPEqm4M6eudkGrpydocbz0OgQtwdUoB2bgUwS39ZQAvEggcsjM02N7PSSJvCA
 SsS3FvHATcVhRzWfqA7JOtBE2z8I2IdwspFMySEDhpicCeTfvd4r8Xq8MwWRGYCQFLo3
 /zYsjEmBjL7FS6VwxsA1Uq2Q7I1dUXIZ+ldktKfyWIPT0hli/OyqDK96wU+3UEhWmPNo
 3BylVFloB41crHzIVjGIiO8uqxp9odzKPirwkmkMJJzpRAe7vKVg1iBu3GD5txDcwpk9
 IeaXnG6W1rTi00jihmXS+FuGMyBm3dEiN0rHDjryPBiL9D8cpjKL6u6i5xsIMEvGXOKU
 jczQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hdqeyKkCIkULH5xghW+2OPTmzGrNx+Inf0KzB+LcKvU=;
 b=F/9cReoJknrTy338prFA0rE8bouuInYVG1Q21kn5Qd6ZRnhs5ot32iuVGMtOlN/RAe
 cfQe5Grepz6j/RDESNrCr3n7GRn7OizxJi8lM3zG90dnqIxt1mEdMgHLtklz0mHYueM/
 0hKxwgdwRqN3PdqTWNWDVBwy1EMg4GMtR+gv3qVDqjus4QW52fu6ZQYlO9qjiKVifMKf
 aoJxUDHP/89trUq6Y+cWNa26BsbT3AagatTX3B0u5R8ZpYnt4aqYcIk4XavmbwSRgPtx
 9YBuQp1BF4pq8VxVWCXjjhDloDbzjC3j65xz5G/5SIC06okZzDZOjtvx0frmtx5gj6GL
 blUA==
X-Gm-Message-State: AOAM531PgcE/PQGSKPteMnZOmvUmHIwLwDqSqWgUPoGqMTWvavu36I1r
 5BVmrZeW+LUY0Rawe5R1unPWab/ssRKKrDeFQP8=
X-Google-Smtp-Source: ABdhPJxlGdBwLcqYBPtaQEMyirP/hdBZ95RAAqVxvBNdnGMzkIna/DL9tdprm+WLHCBJjyDfXP66FkFmREuxLR2xRkE=
X-Received: by 2002:a0c:b3d1:: with SMTP id b17mr37337119qvf.41.1608037763580; 
 Tue, 15 Dec 2020 05:09:23 -0800 (PST)
MIME-Version: 1.0
References: <CAA85sZs8Li7+8BQWj0e+Qrxes1VF6K_Ukqrqgs1E3hHmaXqsbQ@mail.gmail.com>
 <20201215004004.GA280628@bjorn-Precision-5520>
In-Reply-To: <20201215004004.GA280628@bjorn-Precision-5520>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 15 Dec 2020 14:09:12 +0100
Message-ID: <CAA85sZvUvUTtyKR8rTDwGa=1sNrhv4cA8LQ+6TXi20Sq9Yn8fw@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH 1/3] PCI/ASPM: Use the path max in L1
 ASPM latency check
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
Cc: Puranjay Mohan <puranjay12@gmail.com>,
 linux-pci <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Saheed O. Bolarinwa" <refactormyself@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Dec 15, 2020 at 1:40 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Mon, Dec 14, 2020 at 11:56:31PM +0100, Ian Kumlien wrote:
> > On Mon, Dec 14, 2020 at 8:19 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> > > If you're interested, you could probably unload the Realtek drivers,
> > > remove the devices, and set the PCI_EXP_LNKCTL_LD (Link Disable) bit
> > > in 02:04.0, e.g.,
> > >
> > >   # RT=/sys/devices/pci0000:00/0000:00:01.2/0000:01:00.0/0000:02:04.0
> > >   # echo 1 > $RT/0000:04:00.0/remove
> > >   # echo 1 > $RT/0000:04:00.1/remove
> > >   # echo 1 > $RT/0000:04:00.2/remove
> > >   # echo 1 > $RT/0000:04:00.4/remove
> > >   # echo 1 > $RT/0000:04:00.7/remove
> > >   # setpci -s02:04.0 CAP_EXP+0x10.w=0x0010
> > >
> > > That should take 04:00.x out of the picture.
> >
> > Didn't actually change the behaviour, I'm suspecting an errata for AMD pcie...
> >
> > So did this, with unpatched kernel:
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec  4.56 MBytes  38.2 Mbits/sec    0   67.9 KBytes
> > [  5]   1.00-2.00   sec  4.47 MBytes  37.5 Mbits/sec    0   96.2 KBytes
> > [  5]   2.00-3.00   sec  4.85 MBytes  40.7 Mbits/sec    0   50.9 KBytes
> > [  5]   3.00-4.00   sec  4.23 MBytes  35.4 Mbits/sec    0   70.7 KBytes
> > [  5]   4.00-5.00   sec  4.23 MBytes  35.4 Mbits/sec    0   48.1 KBytes
> > [  5]   5.00-6.00   sec  4.23 MBytes  35.4 Mbits/sec    0   45.2 KBytes
> > [  5]   6.00-7.00   sec  4.23 MBytes  35.4 Mbits/sec    0   36.8 KBytes
> > [  5]   7.00-8.00   sec  3.98 MBytes  33.4 Mbits/sec    0   36.8 KBytes
> > [  5]   8.00-9.00   sec  4.23 MBytes  35.4 Mbits/sec    0   36.8 KBytes
> > [  5]   9.00-10.00  sec  4.23 MBytes  35.4 Mbits/sec    0   48.1 KBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  43.2 MBytes  36.2 Mbits/sec    0             sender
> > [  5]   0.00-10.00  sec  42.7 MBytes  35.8 Mbits/sec                  receiver
> >
> > and:
> > echo 0 > /sys/devices/pci0000:00/0000:00:01.2/0000:01:00.0/link/l1_aspm
>
> BTW, thanks a lot for testing out the "l1_aspm" sysfs file.  I'm very
> pleased that it seems to be working as intended.

It was nice to find it for easy disabling :)

> > and:
> > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > [  5]   0.00-1.00   sec   113 MBytes   951 Mbits/sec  153    772 KBytes
> > [  5]   1.00-2.00   sec   109 MBytes   912 Mbits/sec  276    550 KBytes
> > [  5]   2.00-3.00   sec   111 MBytes   933 Mbits/sec  123    625 KBytes
> > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec   31    687 KBytes
> > [  5]   4.00-5.00   sec   110 MBytes   923 Mbits/sec    0    679 KBytes
> > [  5]   5.00-6.00   sec   110 MBytes   923 Mbits/sec  136    577 KBytes
> > [  5]   6.00-7.00   sec   110 MBytes   923 Mbits/sec  214    645 KBytes
> > [  5]   7.00-8.00   sec   110 MBytes   923 Mbits/sec   32    628 KBytes
> > [  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec   81    537 KBytes
> > [  5]   9.00-10.00  sec   110 MBytes   923 Mbits/sec   10    577 KBytes
> > - - - - - - - - - - - - - - - - - - - - - - - - -
> > [ ID] Interval           Transfer     Bitrate         Retr
> > [  5]   0.00-10.00  sec  1.08 GBytes   927 Mbits/sec  1056             sender
> > [  5]   0.00-10.00  sec  1.07 GBytes   923 Mbits/sec                  receiver
> >
> > But this only confirms that the fix i experience is a side effect.
> >
> > The original code is still wrong :)
>
> What exactly is this machine?  Brand, model, config?  Maybe you could
> add this and a dmesg log to the buzilla?  It seems like other people
> should be seeing the same problem, so I'm hoping to grub around on the
> web to see if there are similar reports involving these devices.

ASUS Pro WS X570-ACE with AMD Ryzen 9 3900X

> https://bugzilla.kernel.org/show_bug.cgi?id=209725
>
> Here's one that is superficially similar:
> https://linux-hardware.org/index.php?probe=e5f24075e5&log=lspci_all
> in that it has a RP -- switch -- I211 path.  Interestingly, the switch
> here advertises <64us L1 exit latency instead of the <32us latency
> your switch advertises.  Of course, I can't tell if it's exactly the
> same switch.

Same chipset it seems

I'm running bios version:
        Version: 2206
        Release Date: 08/13/2020

ANd latest is:
Version 3003
2020/12/07

Will test upgrading that as well, but it could be that they report the
incorrect latency of the switch - I don't know how many things AGESA
changes but... It's been updated twice since my upgrade.

> Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
