Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 501BE2DBF4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Dec 2020 12:21:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF9732153E;
	Wed, 16 Dec 2020 11:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QKyIFmixcDk6; Wed, 16 Dec 2020 11:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 337212152E;
	Wed, 16 Dec 2020 11:21:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7541BF409
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 11:21:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1797887696
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 11:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlzfQ2n9zaZx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Dec 2020 11:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1B1587694
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 11:21:05 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id u16so11103414qvl.7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 03:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gyMh7+Tj1JafAssKG+dAGXpc0v1+Cba9YPMhj0ungzA=;
 b=Kq1V5zJt8XHRe1Xa3oFi8qxklqczmA24KZnEgEk8OhftXhPAZpX9GHkcVLxIGPj8go
 6OBl0GuBpD5iaT86jMCIVj9Yg9nEQK7dx0uy780gORD/EiLfMY0IdljQsjbjvXFItLu6
 wLLN2CRCcdK7/m5VLwWIb2ewcuMeM4kUHKENwwovM91WgxrAWWKuS2Qql+XypFZtyaBf
 hiDPO+JONy6xVs/zdAMkEpH8S6NGOyrof5j6KPWlimXZ8zSPl/XwbfOjAg/F2uQSOpiS
 PXSZCNIhuRwe6/9AI4sXlF8pbLhCa0iaUobyK+z3i4RY6NTmIXwei16ukCTNEEU752b6
 D1Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gyMh7+Tj1JafAssKG+dAGXpc0v1+Cba9YPMhj0ungzA=;
 b=RRubPnXF4DzB9iwheChrjB+VyeVmlnhOkPuS+wYuMCXZDFbEoJIokKuzMqceVhlkCn
 B//oF4JnEai8V1YdV0sRvEjr9qL9viNopE3lFW02GCw7iYd87gl91kwiprmpRqnd3gF8
 3FUPqYbW85LCkw5Xm6TLNVhw7Mp+offjZVQxFi6WSGS/AM6e3WIvpVOJyjsfO6qE3gXO
 YgFGj/6Vohr9gNkVmlfJwAA+CN1XZ62xkVA+XFKq0SMVRTKx6ieFHmzW4o3xE+Iy5s8n
 nbzF69bd9L+MC+e+a2dOp3n2KUScwdpzDln3JkJduub65/PZ6SOYHtSqfYyKWi1uQlEw
 cVmw==
X-Gm-Message-State: AOAM5303mb+N9HbL4iIlHyK3EYvCkSRJjcgwds2YJrTO0J5TTxQdBW/w
 suXNHU3BkQOPy0HC7k9G2+2vzkSHOetNUE/7qyg=
X-Google-Smtp-Source: ABdhPJyUjTvtTwDKNs5PnTOXuPkSqLMj7UT1cD4rkRLfR8mXFS0OZmN5X5xbrV40HHsYABhK+PQqXcFJVd3EYogxSo4=
X-Received: by 2002:a0c:f00e:: with SMTP id z14mr22140003qvk.25.1608117664690; 
 Wed, 16 Dec 2020 03:21:04 -0800 (PST)
MIME-Version: 1.0
References: <CAA85sZvUvUTtyKR8rTDwGa=1sNrhv4cA8LQ+6TXi20Sq9Yn8fw@mail.gmail.com>
 <20201216000802.GA342490@bjorn-Precision-5520>
In-Reply-To: <20201216000802.GA342490@bjorn-Precision-5520>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 16 Dec 2020 12:20:53 +0100
Message-ID: <CAA85sZsiuE9rN7uVCuhgiki-rffo4mYbh6BKvuGaJAK5CsPgKw@mail.gmail.com>
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

On Wed, Dec 16, 2020 at 1:08 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Dec 15, 2020 at 02:09:12PM +0100, Ian Kumlien wrote:
> > On Tue, Dec 15, 2020 at 1:40 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >
> > > On Mon, Dec 14, 2020 at 11:56:31PM +0100, Ian Kumlien wrote:
> > > > On Mon, Dec 14, 2020 at 8:19 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > >
> > > > > If you're interested, you could probably unload the Realtek drivers,
> > > > > remove the devices, and set the PCI_EXP_LNKCTL_LD (Link Disable) bit
> > > > > in 02:04.0, e.g.,
> > > > >
> > > > >   # RT=/sys/devices/pci0000:00/0000:00:01.2/0000:01:00.0/0000:02:04.0
> > > > >   # echo 1 > $RT/0000:04:00.0/remove
> > > > >   # echo 1 > $RT/0000:04:00.1/remove
> > > > >   # echo 1 > $RT/0000:04:00.2/remove
> > > > >   # echo 1 > $RT/0000:04:00.4/remove
> > > > >   # echo 1 > $RT/0000:04:00.7/remove
> > > > >   # setpci -s02:04.0 CAP_EXP+0x10.w=0x0010
> > > > >
> > > > > That should take 04:00.x out of the picture.
> > > >
> > > > Didn't actually change the behaviour, I'm suspecting an errata for AMD pcie...
> > > >
> > > > So did this, with unpatched kernel:
> > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > [  5]   0.00-1.00   sec  4.56 MBytes  38.2 Mbits/sec    0   67.9 KBytes
> > > > [  5]   1.00-2.00   sec  4.47 MBytes  37.5 Mbits/sec    0   96.2 KBytes
> > > > [  5]   2.00-3.00   sec  4.85 MBytes  40.7 Mbits/sec    0   50.9 KBytes
> > > > [  5]   3.00-4.00   sec  4.23 MBytes  35.4 Mbits/sec    0   70.7 KBytes
> > > > [  5]   4.00-5.00   sec  4.23 MBytes  35.4 Mbits/sec    0   48.1 KBytes
> > > > [  5]   5.00-6.00   sec  4.23 MBytes  35.4 Mbits/sec    0   45.2 KBytes
> > > > [  5]   6.00-7.00   sec  4.23 MBytes  35.4 Mbits/sec    0   36.8 KBytes
> > > > [  5]   7.00-8.00   sec  3.98 MBytes  33.4 Mbits/sec    0   36.8 KBytes
> > > > [  5]   8.00-9.00   sec  4.23 MBytes  35.4 Mbits/sec    0   36.8 KBytes
> > > > [  5]   9.00-10.00  sec  4.23 MBytes  35.4 Mbits/sec    0   48.1 KBytes
> > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > [  5]   0.00-10.00  sec  43.2 MBytes  36.2 Mbits/sec    0             sender
> > > > [  5]   0.00-10.00  sec  42.7 MBytes  35.8 Mbits/sec                  receiver
> > > >
> > > > and:
> > > > echo 0 > /sys/devices/pci0000:00/0000:00:01.2/0000:01:00.0/link/l1_aspm
> > >
> > > BTW, thanks a lot for testing out the "l1_aspm" sysfs file.  I'm very
> > > pleased that it seems to be working as intended.
> >
> > It was nice to find it for easy disabling :)
> >
> > > > and:
> > > > [ ID] Interval           Transfer     Bitrate         Retr  Cwnd
> > > > [  5]   0.00-1.00   sec   113 MBytes   951 Mbits/sec  153    772 KBytes
> > > > [  5]   1.00-2.00   sec   109 MBytes   912 Mbits/sec  276    550 KBytes
> > > > [  5]   2.00-3.00   sec   111 MBytes   933 Mbits/sec  123    625 KBytes
> > > > [  5]   3.00-4.00   sec   111 MBytes   933 Mbits/sec   31    687 KBytes
> > > > [  5]   4.00-5.00   sec   110 MBytes   923 Mbits/sec    0    679 KBytes
> > > > [  5]   5.00-6.00   sec   110 MBytes   923 Mbits/sec  136    577 KBytes
> > > > [  5]   6.00-7.00   sec   110 MBytes   923 Mbits/sec  214    645 KBytes
> > > > [  5]   7.00-8.00   sec   110 MBytes   923 Mbits/sec   32    628 KBytes
> > > > [  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec   81    537 KBytes
> > > > [  5]   9.00-10.00  sec   110 MBytes   923 Mbits/sec   10    577 KBytes
> > > > - - - - - - - - - - - - - - - - - - - - - - - - -
> > > > [ ID] Interval           Transfer     Bitrate         Retr
> > > > [  5]   0.00-10.00  sec  1.08 GBytes   927 Mbits/sec  1056             sender
> > > > [  5]   0.00-10.00  sec  1.07 GBytes   923 Mbits/sec                  receiver
> > > >
> > > > But this only confirms that the fix i experience is a side effect.
> > > >
> > > > The original code is still wrong :)
> > >
> > > What exactly is this machine?  Brand, model, config?  Maybe you could
> > > add this and a dmesg log to the buzilla?  It seems like other people
> > > should be seeing the same problem, so I'm hoping to grub around on the
> > > web to see if there are similar reports involving these devices.
> >
> > ASUS Pro WS X570-ACE with AMD Ryzen 9 3900X
>
> Possible similar issues:
>
>   https://forums.unraid.net/topic/94274-hardware-upgrade-woes/
>   https://forums.servethehome.com/index.php?threads/upgraded-my-home-server-from-intel-to-amd-virtual-disk-stuck-in-degraded-unhealty-state.25535/ (Windows)

Could be, I suspect that we need a workaround (is there a quirk for
"reporting wrong latency"?) and the patches.

> > > https://bugzilla.kernel.org/show_bug.cgi?id=209725
> > >
> > > Here's one that is superficially similar:
> > > https://linux-hardware.org/index.php?probe=e5f24075e5&log=lspci_all
> > > in that it has a RP -- switch -- I211 path.  Interestingly, the switch
> > > here advertises <64us L1 exit latency instead of the <32us latency
> > > your switch advertises.  Of course, I can't tell if it's exactly the
> > > same switch.
> >
> > Same chipset it seems
> >
> > I'm running bios version:
> >         Version: 2206
> >         Release Date: 08/13/2020
> >
> > ANd latest is:
> > Version 3003
> > 2020/12/07
> >
> > Will test upgrading that as well, but it could be that they report the
> > incorrect latency of the switch - I don't know how many things AGESA
> > changes but... It's been updated twice since my upgrade.
>
> I wouldn't be surprised if the advertised exit latencies are writable
> by the BIOS because it probably depends on electrical characteristics
> outside the switch.  If so, it's possible ASUS just screwed it up.

Not surprisingly, nothing changed.
(There was a lot of "stability improvements")
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
