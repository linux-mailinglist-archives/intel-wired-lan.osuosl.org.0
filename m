Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6291C3C64
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 May 2020 16:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1128229D4;
	Mon,  4 May 2020 13:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nP3AG2EKPPWe; Mon,  4 May 2020 13:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6D56C23026;
	Mon,  4 May 2020 13:58:48 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07BAF1BF41E
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 13:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F388622BCC
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 13:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KpdvlPnMzj4p for <intel-wired-lan@osuosl.org>;
 Mon,  4 May 2020 13:58:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D2F9229D4
 for <intel-wired-lan@osuosl.org>; Mon,  4 May 2020 13:58:44 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id g12so9149897wmh.3
 for <intel-wired-lan@osuosl.org>; Mon, 04 May 2020 06:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nextdroid-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jC0mn+PIxpLBz7zLv84foTGuPG/RqdESr8vYdsbez6c=;
 b=ROKrO9Xn7tZD+gg42Yi9GgcZ+62+s7eb8g9OmjtS1GbPITFELcucgaQBNIAf34iGUB
 WJMd36SZuHEcHV926SNOUM/DBegNXXubGfg0S4l8YmthSwr9+ag6o3RzrKva+V6kQt0x
 bSEGDbx4RUyHf89Ym1EhQMc5mAwaFpmlEa+nYv7QmUbaJpWGU0cJ6Fng4qgXHAVpdw84
 +/kGVbSTRm7h7+BwzpypJFBpuQu7ExQuIo2KLM3XSI7hVBtl3Bsbpn9b9cN5TJSvsh0A
 uymQcjpEF5YsJqT9cMB/kQeCiuqNu+0iWsrIOC6yDAygyf33Xlb/bSRsY1/klnvZOBhQ
 1aiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jC0mn+PIxpLBz7zLv84foTGuPG/RqdESr8vYdsbez6c=;
 b=bFSV/X331n2bxFoHpVjkQXe1WxDAHjG/R4Lg8ScPArf+5O42yVgDMM0doLqQUBINry
 a4kUNrWlPFcB9rPz0zoLPF+6iKxzTLqzW+AeIkTkLPtQE+Har52gQEcp0Pnc4jGKXoyv
 yOsl8d3u4npmmVEvl3I2SB+hImvifJ5D8K6z8R4ZGucyoU5g7SUjr5Yfb9juJ17N7xkK
 RclFjLSDJ/SD2Gpk/Ets0vI88tB4r+P/i+RFaa14MVKTEAnyT8sYUM1JEyZW+X076bGJ
 0EbIziJ2jzKncf7PdjDULHeh+SIhE4h9dVdqmAwVAswv6BeZtMkLM5+o8b9TQFcE2Qp4
 w5sg==
X-Gm-Message-State: AGi0PuZVHZpgYFV+6S5Z4v1d2uXL6SQLd8I6LnkV6PH5A8AimEhy0pCK
 cF5NTEE8bYO/rF4bDwBFJtAAfD0rX+kRF7DSzmo9Bw==
X-Google-Smtp-Source: APiQypJBQuAs0p0ZgIAcvfmoyncwh06k2AzTajCyJ5lWd2++3Y4Ez8reTVIQBoUt2L73J55oMYojcNfkl4wObl7Qt7E=
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr14729208wmj.130.1588600722340; 
 Mon, 04 May 2020 06:58:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAGrNP8nfqAZnEoOBsrxrsvszw7T5pdKHG4mt6fVcKB6iigV_BA@mail.gmail.com>
 <87zhaswn5t.fsf@intel.com>
In-Reply-To: <87zhaswn5t.fsf@intel.com>
From: Dan Williams <dwilliams@nextdroid.com>
Date: Mon, 4 May 2020 09:58:31 -0400
Message-ID: <CAGrNP8=qr3_ZPL7c4oWz0L6hzLSSHjh3iWa52VsUTmJjfUqxdw@mail.gmail.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] Does the 'igb` kernel module support setting
 2-Tuple filters (aka `--config-ntuple`) on a i210 NIC?
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
Cc: Daniel Gandhi <dgandhi@nextdroid.com>, intel-wired-lan@osuosl.org,
 Nick Rizzo <nrizzo@nextdroid.com>
Content-Type: multipart/mixed; boundary="===============0693165018321576774=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0693165018321576774==
Content-Type: multipart/alternative; boundary="000000000000bed09605a4d2ed84"

--000000000000bed09605a4d2ed84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> > We have a computer logging a high rate of ethernet packets ( 25k
>> > packets/sec ~70 Mb/sec);   But we're having trouble convincing the
>> hardware
>> > to receive all of these packets, at a sustained rate -- specifically
>> we're
>> > dropping packets while processing through the kernel layers.    We're
>> > currently attempting to optimize the network stack,  but we're having
>> > trouble setting the driver parameters... which is what this message is
>> all
>> > about.
>>
>
> That's weird. That packet rate is not *that* high, the Linux kernel
> should be able to handle that fine.


> Can you give more details of the workload you are running?
>

Okay, in more detail: we have two groups of incoming streams:  (for the
minimum setup to cause a problem)
- 4x Camera Streams  each transmits a 3.2mb image every .1 s, split into
jumbo frames (mtu is set to the full 9000)
- Constant stream of data from a Lidar at 18k packets / sec.  Each packet
is 1206 bytes long.
- Both streams continue steady-state, indefinitely (we have verified
behavior out to 4 hours so far)

We receive all of these over ethernet, and routed to a single network port
on a single NIC.   The driver is the 'igb' kernel module, as supplied from
ubuntu.
The OS is Ubuntu 16.04 LTS with a 4.15.0-88-lowlatency kernel.

----
Biggest Problem:

Over time decay of packet processing.

We've been working on this for a couple of weeks; when the processes start
we're logging the full data rate (~24kpps) but over time, something slows
down, and our logging rate shrinks.
(on the order of 20 packets / second / minute, consistently falling over
hours. ... after the first hour, we've lost 500 pps, after the second hour,
1kpps... etc.)

Our user-land process simply isn't seeing the full count of packets -- we
have debug code that reads it from the OS, and then immediately drops the
buffer on the floor.  Generally, we see drops in netstat, but not in the
driver. (i.e. from `ethtool -S | grep rx_*`)
So, our tentative guess is that we want to tune some parameters, somewhere
in the kernel or network driver to help out the kernel.    Ideas welcome,
of course :)

( We are *also* dropping from the ring buffer, when both the lidar stream
and a camera stream are assigned to the same queue, but that looks like a
releated but separate issue)

Things we've tried / checked:
- irq alignment -- they're already reasonable set
- cpu assignment (via `taskset`)
- change processor task scheduling / priority (no effect)

Ideas:
- what is the default hash algorithm?  if we can't change it, maybe we can
work around it?
- is there any other way to set the queue settings on this network card?
Debug tool?  Rebuilding the kernel module with custom settings?
- Our hardware also has an 82579 NIC as well -- would you guys recommend we
use that NIC, instead?
- Do other network cards / chipsets have better support under linux?
Particularly when tuning input queues?


Daniel Williams  |  Software Engineer
dwilliams@nextdroid.com



On Thu, Apr 30, 2020 at 7:48 PM Vinicius Costa Gomes <
vinicius.gomes@intel.com> wrote:

> Dan Williams <dwilliams@nextdroid.com> writes:
>
> > Does the 'igb` kernel module support setting "2-Tuple filters" (aka
> > `--config-ntuple`, aka RFS) on a I-210IC NIC?
> > - Is this the appropriate mailing list?
> > - If not, which module *should* we be using instead?
> > - If so, how do we enable it in the 'igb' driver?
> >
> >
> > *.1. Context: *
> > Hey, all, we're running into a very perplexing configuration issue, whi=
le
> > trying to tune our 'igb' driver, and the documentation out there is
> > sparse.  All the examples we've found come up dry.  (either by throwing
> > errors with our setup, or emitting nothing but opaque error messages:
> > "Operation not supported"  "invalid argument")   Hopefully, someone on
> the
> > list can point us in the right direction.
> >
> > We have a computer logging a high rate of ethernet packets ( 25k
> > packets/sec ~70 Mb/sec);   But we're having trouble convincing the
> hardware
> > to receive all of these packets, at a sustained rate -- specifically
> we're
> > dropping packets while processing through the kernel layers.    We're
> > currently attempting to optimize the network stack,  but we're having
> > trouble setting the driver parameters... which is what this message is
> all
> > about.
>
> That's weird. That packet rate is not *that* high, the Linux kernel
> should be able to handle that fine.
>
> Can you give more details of the workload you are running?
>
> >
> > *.2. Platform Summary:*
> > Hardware:
> > Advantech 3500
> > <
> https://www.advantech.com/products/1-2jkd2d/ark-3500/mod_adb8f9a9-4b1b-4c=
f5-84ba-9e135c099c43
> >
> > CPU ($ lscpu):
> > Architecture:         x86_64
> > CPU family:          6
> > Model:                  58
> > Model name:        Intel(R) Core(TM) i7-3610QE CPU @ 2.30GHz
> > NIC ($ lspci -vs 02:00.0)
> > 02:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network
> > Connection (rev 03)
> > Flags: bus master, fast devsel, latency 0, IRQ 18
> > OS ($ lsb_release -a)
> > Ubuntu 16.04.6 LTS
> > Kernel (`uname -r`):
> > 4.15.0-88-lowlatency
> > Kernel Module ($ modinfo igb)
> > filename:
> >
> /lib/modules/4.15.0-88-lowlatency/kernel/drivers/net/ethernet/intel/igb/i=
gb.ko
> > version:        5.4.0-k
> > license:        GPL
> > Ethtool Version ($ ethtool --version)
> > ethtool version 4.5
>
> There had been a lot of improvements in the network stack in the last 4
> years, trying with a recent kernel, if possible, would be useful to know
> if the issue you are seeing persists.
>
> >
> > *.3. What have we tried so far:*
> > .3.a.  The NIC supports what we want to do:
> > The data sheet,
> > <
> https://www.google.com/url?sa=3Dt&rct=3Dj&q=3D&esrc=3Ds&source=3Dweb&cd=
=3D1&cad=3Drja&uact=3D8&ved=3D2ahUKEwj_nona25DpAhWPoHIEHfvYBWcQFjAAegQIARAB=
&url=3Dhttps%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fembedded%2Fp=
roducts%2Fnetworking%2Fi210-ethernet-controller-datasheet.html&usg=3DAOvVaw=
1N7hqg0JJAaqXsomLAUhfB
> >
> > in section 7.1.2.4 "2-Tuple Filters", says:
> >
> >> The 2-tuple filters are configured via the TTQF (See Section 8.11.3),
> IMIR
> >> (See Section 8.11.1) and
> >> IMIR_EXT (See Section 8.11.2) registers as follows (per filter):
> >>
>
> The problem is that the NIC supports the 2-tuple filters, but support
> for using them in Linux was never added.
>
> >
> > Am I correct in assuming these are the mechanisms the 'igb' driver is
> > interfacing with?
>
> You are right.
>
> >
> > .3.b.   What is the flow table currenttly?
> >
> >> # ethtool --show-rxfh enp2s0
> >> RX flow hash indirection table for enp2s0 with 4 RX ring(s):
> >>     0:      0     0     0     0     0     0     0     0
> >>     8:      0     0     0     0     0     0     0     0
> >>    16:      0     0     0     0     0     0     0     0
> >>    24:      0     0     0     0     0     0     0     0
> >>    32:      0     0     0     0     0     0     0     0
> >>    40:      0     0     1     1     1     1     1     1
> >>    48:      1     1     1     1     1     1     1     1
> >>    56:      1     1     1     1     1     1     1     1
> >>    64:      1     1     1     1     1     1     1     1
> >>    72:      1     1     1     1     1     1     1     1
> >>    80:      1     1     1     1     1     2     2     2
> >>    88:      2     2     2     2     2     2     2     2
> >>    96:      2     2     2     2     2     2     2     2
> >>   104:      2     2     2     2     2     2     2     2
> >>   112:      2     2     2     2     2     2     2     2
> >>   120:      2     2     2     2     2     2     2     2
> >> RSS hash key:
> >> Operation not supported
> >>
> >
> > "Operation not supported" -- does this mean the NIC has RSS routing
> > hard-coded? And we cannot change the hash-function?
> > Or is RSS just hard-coded?
>
> IIRC the function and hash key cannot be changed, the only thing that
> can be changed is the indirection table, i.e. assigning different
> "target" queues to different hash values.
>
> >
> >
> > .3.c. Current "Hash flow" settings:
> >
> >> # ethtool -n  enp2s0 rx-flow-hash udp4
> >> UDP over IPV4 flows use these fields for computing Hash flow key:
> >> IP SA
> >> IP DA
> >> L4 bytes 0 & 1 [TCP/UDP src port]
> >> L4 bytes 2 & 3 [TCP/UDP dst port]
> >>
> >
> >
> >> # sudo ethtool -n enp2s0
> >> 4 RX rings available
> >> Total 0 rules
> >>
> >
> >
> > .3.d.  Enable ntuple features:
> >
> >> # ethtool --show-features enp2s0 | grep ntuple
> >> ntuple-filters: on
> >>
> >
> > .3.e. Add ntuple rule: Commands Tried:
> >
> >> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 dst-ip 0.0.0.0
> >> src-port 555 dst-port 2368 action -1
> >> rmgr: Cannot insert RX class rule: Invalid argument
> >> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 action 1
> >> rmgr: Cannot insert RX class rule: Invalid argument
> >>
> > # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1
> >> rmgr: Cannot insert RX class rule: Invalid argument
> >> # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1 loc 4
> >> rmgr: Cannot insert RX class rule: Invalid argument
> >>
>
> Right now, only filters for ethernet addresses, ethtype, VLAN ID and PCP
> are implemented. I agree that returning -EINVAL is not helpful.
>
> >
> > .3.f. More Interface info:
> >
> >> # ethtool -i enp2s0
> >> driver: igb
> >> version: 5.4.0-k
> >> firmware-version: 3.16, 0x800004ad
> >> expansion-rom-version:
> >> bus-info: 0000:02:00.0
> >> supports-statistics: yes
> >> supports-test: yes
> >> supports-eeprom-access: yes
> >> supports-register-dump: yes
> >> supports-priv-flags: yes
> >>
> >
> > # ethtool -t enp2s0
> >> The test result is PASS
> >> The test extra info:
> >> Register test  (offline) 0
> >> Eeprom test    (offline) 0
> >> Interrupt test (offline) 0
> >> Loopback test  (offline) 0
> >> Link test   (on/offline) 0
> >>
> >
> >
> >
> >
> >
> >
> > Daniel Williams  |  Software Engineer
> > dwilliams@nextdroid.com
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
> --
> Vinicius
>

--000000000000bed09605a4d2ed84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-im">&gt; We =
have a computer logging a high rate of ethernet packets ( 25k</span><br><sp=
an class=3D"gmail-im">
&gt; packets/sec ~70 Mb/sec);=C2=A0 =C2=A0But we&#39;re having trouble conv=
incing the hardware</span><br><span class=3D"gmail-im">
&gt; to receive all of these packets, at a sustained rate -- specifically w=
e&#39;re</span><br><span class=3D"gmail-im">
&gt; dropping packets while processing through the kernel layers.=C2=A0 =C2=
=A0 We&#39;re</span><br><span class=3D"gmail-im">
&gt; currently attempting to optimize the network stack,=C2=A0 but we&#39;r=
e having</span><br><span class=3D"gmail-im">
&gt; trouble setting the driver parameters... which is what this message is=
 all</span><br><span class=3D"gmail-im">
&gt; about.</span><br></blockquote><span class=3D"gmail-im">
</span><br><span class=3D"gmail-im"></span>
That&#39;s weird. That packet rate is not *that* high, the Linux kernel<br>
should be able to handle that fine. </blockquote><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><br></blockquote><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Can you give more details of the workload you are running? =
<br></blockquote><div><br></div><div>Okay, in more detail: we have two grou=
ps of incoming streams:=C2=A0 (for the minimum setup to cause a problem)</d=
iv><div>- 4x Camera Streams=C2=A0 each transmits a 3.2mb image every .1 s, =
split into jumbo  frames (mtu is set to the full 9000)<br></div><div>- Cons=
tant stream of data from a Lidar at 18k packets / sec.=C2=A0 Each packet is=
 1206 bytes long. <br></div><div>- Both streams continue steady-state, inde=
finitely (we have verified behavior out to 4 hours so far)<br></div><div><b=
r></div><div>We receive all of these over ethernet, and routed to a single =
network port on a single NIC.=C2=A0=C2=A0 The driver is the &#39;igb&#39; k=
ernel module, as supplied from ubuntu.</div><div>The OS is Ubuntu 16.04 LTS=
 with a <span class=3D"gmail-im">4.15.0-88-lowlatency kernel.<br></span></d=
iv><div><span class=3D"gmail-im"><br></span></div><div><span class=3D"gmail=
-im">----</span></div><div><span class=3D"gmail-im">Biggest Problem:</span>=
</div><div><span class=3D"gmail-im"><br></span></div><div><span class=3D"gm=
ail-im">Over time decay of packet processing.<br></span></div><div><span cl=
ass=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im">We&#39;ve b=
een working on this for a couple of weeks; when the processes start we&#39;=
re logging the full data rate (~24kpps) but over time, something slows down=
, and our logging rate shrinks. <br></span></div><div><span class=3D"gmail-=
im">(on the order of 20 packets / second / minute, consistently falling ove=
r hours. ... after the first hour, we&#39;ve lost 500 pps, after the second=
 hour, 1kpps... etc.)<br></span></div>
<div></div><div><br></div><div>Our user-land process simply isn&#39;t seein=
g the full count of packets -- we have debug code that reads it from the OS=
, and then immediately drops the buffer on the floor.=C2=A0 Generally, we s=
ee drops in netstat, but not in the driver. (i.e. from `ethtool -S | grep r=
x_*`)</div><div>So, our tentative guess is that we want to tune some parame=
ters, somewhere in the kernel or network driver to help out the kernel.=C2=
=A0=C2=A0=C2=A0 Ideas welcome, of course :)<br></div><div></div><div><div><=
br></div><div>( We are *also* dropping from the ring buffer, when both the =
lidar stream and a camera stream are assigned to the same queue, but that l=
ooks like a releated but separate issue)<br></div><div></div><div><br></div=
><div>Things we&#39;ve tried / checked:</div><div>- irq alignment -- they&#=
39;re already reasonable set</div><div>- cpu assignment (via `taskset`)</di=
v><div>- change processor task scheduling / priority (no effect)<br></div><=
/div><div></div><div></div><div><br></div><div>Ideas:<br></div><div>- what =
is the default hash algorithm?=C2=A0 if we can&#39;t change it, maybe we ca=
n work around it?<br></div><div>- is there any other way to set the queue s=
ettings on this network card?=C2=A0=C2=A0 Debug tool?=C2=A0 Rebuilding the =
kernel module with custom settings?</div><div></div><div>- Our hardware als=
o has an 82579 NIC as well -- would you guys recommend we use that NIC, ins=
tead?</div><div>- Do other network cards / chipsets have better support und=
er linux?=C2=A0 Particularly when tuning input queues?<br></div><div></div>=
<div><br></div><div><br></div><div></div>
<div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Daniel Williams=
=C2=A0 |=C2=A0 Software Engineer</div><div><div><div><div><a href=3D"mailto=
:dwilliams@nextdroid.com" target=3D"_blank">dwilliams@nextdroid.com</a></di=
v><div></div></div></div><img src=3D"https://lh6.googleusercontent.com/JjJz=
Z9yHCmcdJ_Z55X6d_P4c4iAt8saFm3bl62bYU5o0Y5h3F00lPa903F4tSbhL8G_FRep1Af7KNKX=
xXN-RBvP4e7zum9fjfNsaYRsdJZy8dhefio-Xa_4jddPiP41M6O7ASZKB0CmT_BwRiQ" width=
=3D"200" height=3D"56"><br></div></div></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div></div></div></div></div><br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Apr 30, 2020 at 7:48 PM Vinicius Costa Gomes &lt;<a href=3D"mailto=
:vinicius.gomes@intel.com">vinicius.gomes@intel.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Dan Williams &lt;<a href=
=3D"mailto:dwilliams@nextdroid.com" target=3D"_blank">dwilliams@nextdroid.c=
om</a>&gt; writes:<br>
<br>
&gt; Does the &#39;igb` kernel module support setting &quot;2-Tuple filters=
&quot; (aka<br>
&gt; `--config-ntuple`, aka RFS) on a I-210IC NIC?<br>
&gt; - Is this the appropriate mailing list?<br>
&gt; - If not, which module *should* we be using instead?<br>
&gt; - If so, how do we enable it in the &#39;igb&#39; driver?<br>
&gt;<br>
&gt;<br>
&gt; *.1. Context: *<br>
&gt; Hey, all, we&#39;re running into a very perplexing configuration issue=
, while<br>
&gt; trying to tune our &#39;igb&#39; driver, and the documentation out the=
re is<br>
&gt; sparse.=C2=A0 All the examples we&#39;ve found come up dry.=C2=A0 (eit=
her by throwing<br>
&gt; errors with our setup, or emitting nothing but opaque error messages:<=
br>
&gt; &quot;Operation not supported&quot;=C2=A0 &quot;invalid argument&quot;=
)=C2=A0 =C2=A0Hopefully, someone on the<br>
&gt; list can point us in the right direction.<br>
&gt;<br>
&gt; We have a computer logging a high rate of ethernet packets ( 25k<br>
&gt; packets/sec ~70 Mb/sec);=C2=A0 =C2=A0But we&#39;re having trouble conv=
incing the hardware<br>
&gt; to receive all of these packets, at a sustained rate -- specifically w=
e&#39;re<br>
&gt; dropping packets while processing through the kernel layers.=C2=A0 =C2=
=A0 We&#39;re<br>
&gt; currently attempting to optimize the network stack,=C2=A0 but we&#39;r=
e having<br>
&gt; trouble setting the driver parameters... which is what this message is=
 all<br>
&gt; about.<br>
<br>
That&#39;s weird. That packet rate is not *that* high, the Linux kernel<br>
should be able to handle that fine.<br>
<br>
Can you give more details of the workload you are running?<br>
<br>
&gt;<br>
&gt; *.2. Platform Summary:*<br>
&gt; Hardware:<br>
&gt; Advantech 3500<br>
&gt; &lt;<a href=3D"https://www.advantech.com/products/1-2jkd2d/ark-3500/mo=
d_adb8f9a9-4b1b-4cf5-84ba-9e135c099c43" rel=3D"noreferrer" target=3D"_blank=
">https://www.advantech.com/products/1-2jkd2d/ark-3500/mod_adb8f9a9-4b1b-4c=
f5-84ba-9e135c099c43</a>&gt;<br>
&gt; CPU ($ lscpu):<br>
&gt; Architecture:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0x86_64<br>
&gt; CPU family:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6<br>
&gt; Model:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5=
8<br>
&gt; Model name:=C2=A0 =C2=A0 =C2=A0 =C2=A0 Intel(R) Core(TM) i7-3610QE CPU=
 @ 2.30GHz<br>
&gt; NIC ($ lspci -vs 02:00.0)<br>
&gt; 02:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network<br=
>
&gt; Connection (rev 03)<br>
&gt; Flags: bus master, fast devsel, latency 0, IRQ 18<br>
&gt; OS ($ lsb_release -a)<br>
&gt; Ubuntu 16.04.6 LTS<br>
&gt; Kernel (`uname -r`):<br>
&gt; 4.15.0-88-lowlatency<br>
&gt; Kernel Module ($ modinfo igb)<br>
&gt; filename:<br>
&gt; /lib/modules/4.15.0-88-lowlatency/kernel/drivers/net/ethernet/intel/ig=
b/igb.ko<br>
&gt; version:=C2=A0 =C2=A0 =C2=A0 =C2=A0 5.4.0-k<br>
&gt; license:=C2=A0 =C2=A0 =C2=A0 =C2=A0 GPL<br>
&gt; Ethtool Version ($ ethtool --version)<br>
&gt; ethtool version 4.5<br>
<br>
There had been a lot of improvements in the network stack in the last 4<br>
years, trying with a recent kernel, if possible, would be useful to know<br=
>
if the issue you are seeing persists.<br>
<br>
&gt;<br>
&gt; *.3. What have we tried so far:*<br>
&gt; .3.a.=C2=A0 The NIC supports what we want to do:<br>
&gt; The data sheet,<br>
&gt; &lt;<a href=3D"https://www.google.com/url?sa=3Dt&amp;rct=3Dj&amp;q=3D&=
amp;esrc=3Ds&amp;source=3Dweb&amp;cd=3D1&amp;cad=3Drja&amp;uact=3D8&amp;ved=
=3D2ahUKEwj_nona25DpAhWPoHIEHfvYBWcQFjAAegQIARAB&amp;url=3Dhttps%3A%2F%2Fww=
w.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fembedded%2Fproducts%2Fnetworking%2F=
i210-ethernet-controller-datasheet.html&amp;usg=3DAOvVaw1N7hqg0JJAaqXsomLAU=
hfB" rel=3D"noreferrer" target=3D"_blank">https://www.google.com/url?sa=3Dt=
&amp;rct=3Dj&amp;q=3D&amp;esrc=3Ds&amp;source=3Dweb&amp;cd=3D1&amp;cad=3Drj=
a&amp;uact=3D8&amp;ved=3D2ahUKEwj_nona25DpAhWPoHIEHfvYBWcQFjAAegQIARAB&amp;=
url=3Dhttps%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fembedded%2Fpr=
oducts%2Fnetworking%2Fi210-ethernet-controller-datasheet.html&amp;usg=3DAOv=
Vaw1N7hqg0JJAaqXsomLAUhfB</a>&gt;<br>
&gt; in section 7.1.2.4 &quot;2-Tuple Filters&quot;, says:<br>
&gt;<br>
&gt;&gt; The 2-tuple filters are configured via the TTQF (See Section 8.11.=
3), IMIR<br>
&gt;&gt; (See Section 8.11.1) and<br>
&gt;&gt; IMIR_EXT (See Section 8.11.2) registers as follows (per filter):<b=
r>
&gt;&gt;<br>
<br>
The problem is that the NIC supports the 2-tuple filters, but support<br>
for using them in Linux was never added.<br>
<br>
&gt;<br>
&gt; Am I correct in assuming these are the mechanisms the &#39;igb&#39; dr=
iver is<br>
&gt; interfacing with?<br>
<br>
You are right.<br>
<br>
&gt;<br>
&gt; .3.b.=C2=A0 =C2=A0What is the flow table currenttly?<br>
&gt;<br>
&gt;&gt; # ethtool --show-rxfh enp2s0<br>
&gt;&gt; RX flow hash indirection table for enp2s0 with 4 RX ring(s):<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A00:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=
=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=
=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A08:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=
=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=
=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;=C2=A0 =C2=A0 16:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;=C2=A0 =C2=A0 24:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;=C2=A0 =C2=A0 32:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;=C2=A0 =C2=A0 40:=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A00=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01<br>
&gt;&gt;=C2=A0 =C2=A0 48:=C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A01=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01<br>
&gt;&gt;=C2=A0 =C2=A0 56:=C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A01=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01<br>
&gt;&gt;=C2=A0 =C2=A0 64:=C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A01=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01<br>
&gt;&gt;=C2=A0 =C2=A0 72:=C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A01=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01<br>
&gt;&gt;=C2=A0 =C2=A0 80:=C2=A0 =C2=A0 =C2=A0 1=C2=A0 =C2=A0 =C2=A01=C2=A0 =
=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;=C2=A0 =C2=A0 88:=C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A02=C2=A0 =
=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;=C2=A0 =C2=A0 96:=C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A02=C2=A0 =
=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;=C2=A0 =C2=A0104:=C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A02=C2=A0 =
=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;=C2=A0 =C2=A0112:=C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A02=C2=A0 =
=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;=C2=A0 =C2=A0120:=C2=A0 =C2=A0 =C2=A0 2=C2=A0 =C2=A0 =C2=A02=C2=A0 =
=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=
=A02=C2=A0 =C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt; RSS hash key:<br>
&gt;&gt; Operation not supported<br>
&gt;&gt;<br>
&gt;<br>
&gt; &quot;Operation not supported&quot; -- does this mean the NIC has RSS =
routing<br>
&gt; hard-coded? And we cannot change the hash-function?<br>
&gt; Or is RSS just hard-coded?<br>
<br>
IIRC the function and hash key cannot be changed, the only thing that<br>
can be changed is the indirection table, i.e. assigning different<br>
&quot;target&quot; queues to different hash values.<br>
<br>
&gt;<br>
&gt;<br>
&gt; .3.c. Current &quot;Hash flow&quot; settings:<br>
&gt;<br>
&gt;&gt; # ethtool -n=C2=A0 enp2s0 rx-flow-hash udp4<br>
&gt;&gt; UDP over IPV4 flows use these fields for computing Hash flow key:<=
br>
&gt;&gt; IP SA<br>
&gt;&gt; IP DA<br>
&gt;&gt; L4 bytes 0 &amp; 1 [TCP/UDP src port]<br>
&gt;&gt; L4 bytes 2 &amp; 3 [TCP/UDP dst port]<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt; # sudo ethtool -n enp2s0<br>
&gt;&gt; 4 RX rings available<br>
&gt;&gt; Total 0 rules<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; .3.d.=C2=A0 Enable ntuple features:<br>
&gt;<br>
&gt;&gt; # ethtool --show-features enp2s0 | grep ntuple<br>
&gt;&gt; ntuple-filters: on<br>
&gt;&gt;<br>
&gt;<br>
&gt; .3.e. Add ntuple rule: Commands Tried:<br>
&gt;<br>
&gt;&gt; # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 dst-ip 0.0.=
0.0<br>
&gt;&gt; src-port 555 dst-port 2368 action -1<br>
&gt;&gt; rmgr: Cannot insert RX class rule: Invalid argument<br>
&gt;&gt; # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 action 1<br=
>
&gt;&gt; rmgr: Cannot insert RX class rule: Invalid argument<br>
&gt;&gt;<br>
&gt; # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1<br>
&gt;&gt; rmgr: Cannot insert RX class rule: Invalid argument<br>
&gt;&gt; # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1 loc=
 4<br>
&gt;&gt; rmgr: Cannot insert RX class rule: Invalid argument<br>
&gt;&gt;<br>
<br>
Right now, only filters for ethernet addresses, ethtype, VLAN ID and PCP<br=
>
are implemented. I agree that returning -EINVAL is not helpful.<br>
<br>
&gt;<br>
&gt; .3.f. More Interface info:<br>
&gt;<br>
&gt;&gt; # ethtool -i enp2s0<br>
&gt;&gt; driver: igb<br>
&gt;&gt; version: 5.4.0-k<br>
&gt;&gt; firmware-version: 3.16, 0x800004ad<br>
&gt;&gt; expansion-rom-version:<br>
&gt;&gt; bus-info: 0000:02:00.0<br>
&gt;&gt; supports-statistics: yes<br>
&gt;&gt; supports-test: yes<br>
&gt;&gt; supports-eeprom-access: yes<br>
&gt;&gt; supports-register-dump: yes<br>
&gt;&gt; supports-priv-flags: yes<br>
&gt;&gt;<br>
&gt;<br>
&gt; # ethtool -t enp2s0<br>
&gt;&gt; The test result is PASS<br>
&gt;&gt; The test extra info:<br>
&gt;&gt; Register test=C2=A0 (offline) 0<br>
&gt;&gt; Eeprom test=C2=A0 =C2=A0 (offline) 0<br>
&gt;&gt; Interrupt test (offline) 0<br>
&gt;&gt; Loopback test=C2=A0 (offline) 0<br>
&gt;&gt; Link test=C2=A0 =C2=A0(on/offline) 0<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Daniel Williams=C2=A0 |=C2=A0 Software Engineer<br>
&gt; <a href=3D"mailto:dwilliams@nextdroid.com" target=3D"_blank">dwilliams=
@nextdroid.com</a><br>
&gt; _______________________________________________<br>
&gt; Intel-wired-lan mailing list<br>
&gt; <a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank">Intel-=
wired-lan@osuosl.org</a><br>
&gt; <a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" =
rel=3D"noreferrer" target=3D"_blank">https://lists.osuosl.org/mailman/listi=
nfo/intel-wired-lan</a><br>
<br>
-- <br>
Vinicius<br>
</blockquote></div>

--000000000000bed09605a4d2ed84--

--===============0693165018321576774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0693165018321576774==--
