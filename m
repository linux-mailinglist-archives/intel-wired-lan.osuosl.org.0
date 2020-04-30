Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7907F1C0668
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2020 21:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F37C586E41;
	Thu, 30 Apr 2020 19:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WH7x0_T1VeGt; Thu, 30 Apr 2020 19:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E340B86E51;
	Thu, 30 Apr 2020 19:30:03 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1623E1BF3ED
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 19:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F145C204AD
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 19:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id przfxxRtfN2s for <intel-wired-lan@osuosl.org>;
 Thu, 30 Apr 2020 19:30:00 +0000 (UTC)
X-Greylist: delayed 00:07:44 by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by silver.osuosl.org (Postfix) with ESMTPS id A9CE720465
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 19:29:59 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id u16so3433000wmc.5
 for <intel-wired-lan@osuosl.org>; Thu, 30 Apr 2020 12:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nextdroid-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=6M2qLRbXlAwcbvaenK0eZBBPcDNHoWrhwEhohnmZ1NM=;
 b=Yu2Wao8mdYKNwxJYFHJVIFvZA6oBp21HyZSDTyNumlmlXGxdqce6pBwMF6B6ee+4iM
 Iv118EZvv5u0RUMSALWDGKXTFnX8Xt6RNab94L+M4ora4Ie2orPez9B8oqKmRhdrmKeK
 25rZxUNegIbMud1PYIb1fJqGc9+HOeqtFiOGGny7yCRNZCIjpNiuFSJ+W4ye1gQsmqXD
 zcLyIBAVzLQQXye952G+Q1HHuMHbkYdyJiBioFTLYUPcmccSBe0P+Jo4RQkEcN6HeRCa
 Iz7NbfWhB88yvKIWpABO5yd712nqrRpJJIxNVheSe/++BGQ/jp5i1D6VCXa8P4jlRto6
 WePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=6M2qLRbXlAwcbvaenK0eZBBPcDNHoWrhwEhohnmZ1NM=;
 b=QiDXCNTyVVHvT0zOTnjueO0Mwt/NJpe8v+g7cL8X9EN+SQxVWzBwk72abksnGdgMec
 bgZbr0N+INyvAqW/0ET/uq0GXXdXUWsjQYkclat0TiScdiNOEKqHCjm8N3C9kRtnVbn3
 vfuwkTGiYl3okCEQWC+Gi8QsGOZYQ4IrWoKTMUbrSXrxF+hvpV4ovVJ/IkOc7LDxF5T8
 cat35tuu3IYnwD8uzBmyE1peQBWv++7qs4yiK1++qI+nKFqeLg9/N2TZly78ITo4Fr52
 Vj5vxIr4/qqYfryU+jTOCyN9Db3n/vwovUkzoUagjK1DPhUYS8fJhxNGEFI3vEQ9rYLF
 A8GQ==
X-Gm-Message-State: AGi0PuYEDpG8xnQQdgwlNqILhTsiB3J3ojC3bR898ZBjHR/bJfLLWcFx
 HO5uMnxIWANQTOU9i+qH+oYlQLNH2Wuc3aLftnzBqzB9oyw=
X-Google-Smtp-Source: APiQypL8fYitch5u4AH9MRNU5SzPCheYeOmwrHAw/B1dprIOHDmImrZ0nOgxWbPFwPV7dcTymIP0TO/oH0TeeiUs7+4=
X-Received: by 2002:a05:600c:114d:: with SMTP id
 z13mr146976wmz.54.1588274532995; 
 Thu, 30 Apr 2020 12:22:12 -0700 (PDT)
MIME-Version: 1.0
From: Dan Williams <dwilliams@nextdroid.com>
Date: Thu, 30 Apr 2020 15:22:02 -0400
Message-ID: <CAGrNP8nfqAZnEoOBsrxrsvszw7T5pdKHG4mt6fVcKB6iigV_BA@mail.gmail.com>
To: intel-wired-lan@osuosl.org
Subject: [Intel-wired-lan] Does the 'igb` kernel module support setting
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
Cc: Daniel Gandhi <dgandhi@nextdroid.com>, Nick Rizzo <nrizzo@nextdroid.com>
Content-Type: multipart/mixed; boundary="===============1587019501268576803=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============1587019501268576803==
Content-Type: multipart/alternative; boundary="0000000000005866b205a486fbdb"

--0000000000005866b205a486fbdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does the 'igb` kernel module support setting "2-Tuple filters" (aka
`--config-ntuple`, aka RFS) on a I-210IC NIC?
- Is this the appropriate mailing list?
- If not, which module *should* we be using instead?
- If so, how do we enable it in the 'igb' driver?


*.1. Context: *
Hey, all, we're running into a very perplexing configuration issue, while
trying to tune our 'igb' driver, and the documentation out there is
sparse.  All the examples we've found come up dry.  (either by throwing
errors with our setup, or emitting nothing but opaque error messages:
"Operation not supported"  "invalid argument")   Hopefully, someone on the
list can point us in the right direction.

We have a computer logging a high rate of ethernet packets ( 25k
packets/sec ~70 Mb/sec);   But we're having trouble convincing the hardware
to receive all of these packets, at a sustained rate -- specifically we're
dropping packets while processing through the kernel layers.    We're
currently attempting to optimize the network stack,  but we're having
trouble setting the driver parameters... which is what this message is all
about.

*.2. Platform Summary:*
Hardware:
Advantech 3500
<https://www.advantech.com/products/1-2jkd2d/ark-3500/mod_adb8f9a9-4b1b-4cf=
5-84ba-9e135c099c43>
CPU ($ lscpu):
Architecture:         x86_64
CPU family:          6
Model:                  58
Model name:        Intel(R) Core(TM) i7-3610QE CPU @ 2.30GHz
NIC ($ lspci -vs 02:00.0)
02:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network
Connection (rev 03)
Flags: bus master, fast devsel, latency 0, IRQ 18
OS ($ lsb_release -a)
Ubuntu 16.04.6 LTS
Kernel (`uname -r`):
4.15.0-88-lowlatency
Kernel Module ($ modinfo igb)
filename:
/lib/modules/4.15.0-88-lowlatency/kernel/drivers/net/ethernet/intel/igb/igb=
.ko
version:        5.4.0-k
license:        GPL
Ethtool Version ($ ethtool --version)
ethtool version 4.5

*.3. What have we tried so far:*
.3.a.  The NIC supports what we want to do:
The data sheet,
<https://www.google.com/url?sa=3Dt&rct=3Dj&q=3D&esrc=3Ds&source=3Dweb&cd=3D=
1&cad=3Drja&uact=3D8&ved=3D2ahUKEwj_nona25DpAhWPoHIEHfvYBWcQFjAAegQIARAB&ur=
l=3Dhttps%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2Fus%2Fen%2Fembedded%2Fprod=
ucts%2Fnetworking%2Fi210-ethernet-controller-datasheet.html&usg=3DAOvVaw1N7=
hqg0JJAaqXsomLAUhfB>
in section 7.1.2.4 "2-Tuple Filters", says:

> The 2-tuple filters are configured via the TTQF (See Section 8.11.3), IMI=
R
> (See Section 8.11.1) and
> IMIR_EXT (See Section 8.11.2) registers as follows (per filter):
>

Am I correct in assuming these are the mechanisms the 'igb' driver is
interfacing with?

.3.b.   What is the flow table currenttly?

> # ethtool --show-rxfh enp2s0
> RX flow hash indirection table for enp2s0 with 4 RX ring(s):
>     0:      0     0     0     0     0     0     0     0
>     8:      0     0     0     0     0     0     0     0
>    16:      0     0     0     0     0     0     0     0
>    24:      0     0     0     0     0     0     0     0
>    32:      0     0     0     0     0     0     0     0
>    40:      0     0     1     1     1     1     1     1
>    48:      1     1     1     1     1     1     1     1
>    56:      1     1     1     1     1     1     1     1
>    64:      1     1     1     1     1     1     1     1
>    72:      1     1     1     1     1     1     1     1
>    80:      1     1     1     1     1     2     2     2
>    88:      2     2     2     2     2     2     2     2
>    96:      2     2     2     2     2     2     2     2
>   104:      2     2     2     2     2     2     2     2
>   112:      2     2     2     2     2     2     2     2
>   120:      2     2     2     2     2     2     2     2
> RSS hash key:
> Operation not supported
>

"Operation not supported" -- does this mean the NIC has RSS routing
hard-coded? And we cannot change the hash-function?
Or is RSS just hard-coded?


.3.c. Current "Hash flow" settings:

> # ethtool -n  enp2s0 rx-flow-hash udp4
> UDP over IPV4 flows use these fields for computing Hash flow key:
> IP SA
> IP DA
> L4 bytes 0 & 1 [TCP/UDP src port]
> L4 bytes 2 & 3 [TCP/UDP dst port]
>


> # sudo ethtool -n enp2s0
> 4 RX rings available
> Total 0 rules
>


.3.d.  Enable ntuple features:

> # ethtool --show-features enp2s0 | grep ntuple
> ntuple-filters: on
>

.3.e. Add ntuple rule: Commands Tried:

> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 dst-ip 0.0.0.0
> src-port 555 dst-port 2368 action -1
> rmgr: Cannot insert RX class rule: Invalid argument
> # ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.43 action 1
> rmgr: Cannot insert RX class rule: Invalid argument
>
# ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1
> rmgr: Cannot insert RX class rule: Invalid argument
> # ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1 loc 4
> rmgr: Cannot insert RX class rule: Invalid argument
>

.3.f. More Interface info:

> # ethtool -i enp2s0
> driver: igb
> version: 5.4.0-k
> firmware-version: 3.16, 0x800004ad
> expansion-rom-version:
> bus-info: 0000:02:00.0
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
>

# ethtool -t enp2s0
> The test result is PASS
> The test extra info:
> Register test  (offline) 0
> Eeprom test    (offline) 0
> Interrupt test (offline) 0
> Loopback test  (offline) 0
> Link test   (on/offline) 0
>






Daniel Williams  |  Software Engineer
dwilliams@nextdroid.com

--0000000000005866b205a486fbdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Does the &#39;igb` kernel module support setting &quo=
t;2-Tuple filters&quot; (aka `--config-ntuple`, aka RFS) on a I-210IC NIC?<=
/div><div>- Is this the appropriate mailing list?</div><div>- If not, which=
 module *should* we be using instead?<br></div><div>- If so, how do we enab=
le it in the &#39;igb&#39; driver?<br></div><div><br></div><div><div><u>.1.=
 Context: <br></u></div><div>Hey, all, we&#39;re running into a very perple=
xing configuration issue, while trying to tune our &#39;igb&#39; driver, an=
d the documentation out there is sparse.=C2=A0 All the examples we&#39;ve f=
ound come up dry.=C2=A0 (either by throwing errors with our setup, or emitt=
ing nothing but opaque error messages: &quot;Operation not supported&quot;=
=C2=A0 &quot;invalid argument&quot;)=C2=A0=C2=A0 Hopefully, someone on the =
list can point us in the right direction.<br></div><div><br></div><div>We h=
ave a computer logging a high rate of ethernet packets ( 25k packets/sec ~7=
0 Mb/sec);=C2=A0=C2=A0 But we&#39;re having trouble convincing the hardware=
 to receive all of these packets, at a sustained rate -- specifically we&#3=
9;re dropping packets while processing through the kernel layers.=C2=A0=C2=
=A0=C2=A0 We&#39;re currently attempting to  optimize the network stack,=C2=
=A0 but we&#39;re having trouble setting the driver parameters... which is =
what this message is all about.<br></div></div><div><br></div><div><u>.2. P=
latform Summary:</u><br></div><div>Hardware: <br></div><div style=3D"margin=
-left:40px"><a href=3D"https://www.advantech.com/products/1-2jkd2d/ark-3500=
/mod_adb8f9a9-4b1b-4cf5-84ba-9e135c099c43">Advantech 3500</a></div>CPU ($ l=
scpu):<br><div><div style=3D"margin-left:40px">Architecture: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 x86_64<br>CPU family: =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 6</di=
v><div style=3D"margin-left:40px">Model:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 58<br>Model name: =C2=A0 =C2=A0 =C2=A0=C2=A0 In=
tel(R) Core(TM) i7-3610QE CPU @ 2.30GHz</div>NIC ($ lspci -vs 02:00.0)</div=
><div><div style=3D"margin-left:40px">02:00.0 Ethernet controller: Intel Co=
rporation I210 Gigabit Network Connection (rev 03)<br>	Flags: bus master, f=
ast devsel, latency 0, IRQ 18<br></div></div><div><div><div>OS ($ lsb_relea=
se -a)</div><div style=3D"margin-left:40px"> Ubuntu 16.04.6 LTS</div><div>K=
ernel (`uname -r`):</div><div style=3D"margin-left:40px">4.15.0-88-lowlaten=
cy</div><div>Kernel Module ($ modinfo igb)<br><div style=3D"margin-left:40p=
x">filename: =C2=A0 =C2=A0 =C2=A0 /lib/modules/4.15.0-88-lowlatency/kernel/=
drivers/net/ethernet/intel/igb/igb.ko<br>version: =C2=A0 =C2=A0 =C2=A0 =C2=
=A05.4.0-k<br>license: =C2=A0 =C2=A0 =C2=A0 =C2=A0GPL</div>Ethtool Version =
($ ethtool --version)<br><div style=3D"margin-left:40px">ethtool version 4.=
5<br></div></div><div><div style=3D"margin-left:40px"><br></div></div><div>=
</div><div><u>.3. What have we tried so far:</u></div><div>.3.a.=C2=A0 The =
NIC supports what we want to do:=C2=A0 <br></div><div><a href=3D"https://ww=
w.google.com/url?sa=3Dt&amp;rct=3Dj&amp;q=3D&amp;esrc=3Ds&amp;source=3Dweb&=
amp;cd=3D1&amp;cad=3Drja&amp;uact=3D8&amp;ved=3D2ahUKEwj_nona25DpAhWPoHIEHf=
vYBWcQFjAAegQIARAB&amp;url=3Dhttps%3A%2F%2Fwww.intel.com%2Fcontent%2Fwww%2F=
us%2Fen%2Fembedded%2Fproducts%2Fnetworking%2Fi210-ethernet-controller-datas=
heet.html&amp;usg=3DAOvVaw1N7hqg0JJAaqXsomLAUhfB">The data sheet,</a> in se=
ction 7.1.2.4 &quot;2-Tuple Filters&quot;, says: <br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div>The 2-tuple filters are configured v=
ia the TTQF (See Section 8.11.3), IMIR (See Section 8.11.1) and<br>IMIR_EXT=
 (See Section 8.11.2) registers as follows (per filter):</div></blockquote>=
<div><br></div><div>Am I correct in assuming these are the mechanisms the &=
#39;igb&#39; driver is interfacing with? <br></div><div><br></div><div>.3.b=
. =C2=A0 What is the flow table currenttly? <br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div># ethtool --show-rxfh enp2s0<br>RX flow h=
ash indirection table for enp2s0 with 4 RX ring(s):<br>=C2=A0 =C2=A0 0: =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =
=C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0<br>=C2=A0 =C2=A0 8=
: =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=
=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0<br>=C2=A0 =C2=
=A016: =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =
0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0<br>=C2=A0=
 =C2=A024: =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=
=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0<br>=
=C2=A0 =C2=A032: =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=
=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =
0<br>=C2=A0 =C2=A040: =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 1=
 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=
=A0 1<br>=C2=A0 =C2=A048: =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 1 =C2=A0 =C2=
=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=
=A0 =C2=A0 1<br>=C2=A0 =C2=A056: =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 1 =C2=
=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 =
1 =C2=A0 =C2=A0 1<br>=C2=A0 =C2=A064: =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 1=
 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=
=A0 1 =C2=A0 =C2=A0 1<br>=C2=A0 =C2=A072: =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=
=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=
=A0 =C2=A0 1 =C2=A0 =C2=A0 1<br>=C2=A0 =C2=A080: =C2=A0 =C2=A0 =C2=A01 =C2=
=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 1 =C2=A0 =C2=A0 =
2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>=C2=A0 =C2=A088: =C2=A0 =C2=A0 =C2=A02=
 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=
=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>=C2=A0 =C2=A096: =C2=A0 =C2=A0 =C2=
=A02 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0=
 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>=C2=A0 104: =C2=A0 =C2=A0 =C2=
=A02 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0=
 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>=C2=A0 112: =C2=A0 =C2=A0 =C2=
=A02 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0=
 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>=C2=A0 120: =C2=A0 =C2=A0 =C2=
=A02 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0=
 =C2=A0 2 =C2=A0 =C2=A0 2 =C2=A0 =C2=A0 2<br>RSS hash key:<br>Operation not=
 supported<br></div></blockquote><div style=3D"margin-left:40px"><br></div>=
<div style=3D"margin-left:40px"></div><div style=3D"margin-left:40px">&quot=
;Operation not supported&quot; -- does this mean the NIC has RSS routing ha=
rd-coded? And we cannot change the hash-function?<br></div><div style=3D"ma=
rgin-left:40px">Or is RSS just hard-coded?</div><div style=3D"margin-left:4=
0px"><br></div><div style=3D"margin-left:40px"><br></div><div>.3.c. Current=
  &quot;Hash flow&quot; settings:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div># ethtool -n =C2=A0enp2s0 rx-flow-hash udp4<br>UDP o=
ver IPV4 flows use these fields for computing Hash flow key:<br>IP SA<br>IP=
 DA<br>L4 bytes 0 &amp; 1 [TCP/UDP src port]<br>L4 bytes 2 &amp; 3 [TCP/UDP=
 dst port]</div></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div> # sudo ethtool -n enp2s0<br>4 RX rings available=
<br>Total 0 rules<br></div></blockquote><div><br></div><div><br></div><div>=
.3.d.=C2=A0 Enable ntuple features:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div># ethtool --show-features enp2s0 | grep ntuple<br>=
ntuple-filters: on<br> </div></blockquote><div><br></div><div>.3.e. Add ntu=
ple rule: Commands Tried:</div><div></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div># ethtool -U enp2s0 flow-type udp4 src-ip 192.168.3.4=
3 dst-ip 0.0.0.0 src-port 555 dst-port 2368 action -1<br>rmgr: Cannot inser=
t RX class rule: Invalid argument<br># ethtool -U enp2s0 flow-type udp4 src=
-ip 192.168.3.43 action 1<br>rmgr: Cannot insert RX class rule: Invalid arg=
ument<br></div></blockquote><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div># ethtool -U enp2s0 flow-type ip4 src-ip 192.168.3.43 action 1<br>r=
mgr: Cannot insert RX class rule: Invalid argument<br># ethtool -U enp2s0 f=
low-type ip4 src-ip 192.168.3.43 action 1 loc 4<br>rmgr: Cannot insert RX c=
lass rule: Invalid argument <br></div></blockquote><div><br></div><div>.3.f=
. More Interface info:</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div># ethtool -i enp2s0<br>driver: igb<br>version: 5.4.0-k<br>firmware-=
version: 3.16, 0x800004ad<br>expansion-rom-version: <br>bus-info: 0000:02:0=
0.0<br>supports-statistics: yes<br>supports-test: yes<br>supports-eeprom-ac=
cess: yes<br>supports-register-dump: yes<br>supports-priv-flags: yes</div><=
/blockquote><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div># ethtool -t enp2s0<br>The test result is PASS<br>The test extra inf=
o:<br>Register test =C2=A0(offline)	 0<br>Eeprom test =C2=A0 =C2=A0(offline=
)	 0<br>Interrupt test (offline)	 0<br>Loopback test =C2=A0(offline)	 0<br>=
Link test =C2=A0 (on/offline)	 0<br></div></blockquote><div><br></div><div>=
<br></div><div><br></div><div><br></div><div><br></div><div><br></div><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Daniel Williams=C2=A0 |=
=C2=A0 Software Engineer</div><div><div><div><div><a href=3D"mailto:dwillia=
ms@nextdroid.com" target=3D"_blank">dwilliams@nextdroid.com</a></div><div><=
/div></div></div><img src=3D"https://lh6.googleusercontent.com/JjJzZ9yHCmcd=
J_Z55X6d_P4c4iAt8saFm3bl62bYU5o0Y5h3F00lPa903F4tSbhL8G_FRep1Af7KNKXxXN-RBvP=
4e7zum9fjfNsaYRsdJZy8dhefio-Xa_4jddPiP41M6O7ASZKB0CmT_BwRiQ" width=3D"200" =
height=3D"56"><br></div></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div><div><br></d=
iv><div><br></div><div><br></div></div></div></div>

--0000000000005866b205a486fbdb--

--===============1587019501268576803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============1587019501268576803==--
