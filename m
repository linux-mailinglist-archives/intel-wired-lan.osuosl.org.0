Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B292A221771
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 00:00:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 548EF8AEA4;
	Wed, 15 Jul 2020 22:00:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zB8a4cnMQbr5; Wed, 15 Jul 2020 22:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 798D58AE98;
	Wed, 15 Jul 2020 22:00:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6103B1BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 22:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5AE8888CA9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 22:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rq7iw1bAjKvX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 22:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F23BA87CD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 22:00:01 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id d27so3145599qtg.4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 15:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OKWd1sZcdo/XVnN5LXIUfMKKXbOkn0ce4c5ICLes2FQ=;
 b=hMWO+vAX6omkjI3ZdRrK0ITFrtMYY0LDgvIoWssLw3YMGwisAXmyQndHT7CFjCast6
 /MQUmFyotpNDSVLM5OlfaUZXBrgRpaISiVmWHGidoNT5rX32bJAtM1yUX049mdr5A+c0
 62N67QIQXz/XyMOrMh1EeQCoWUBiKbem2bsxMQc7g9Js0tkJgsACNUgtS/Rsxs6VcL8e
 Pg/8QlqfvH72/qdPS+v3PAZxhi4SLGC94/lAgBwtYNR5XZ1JUpNLjUWje8DGMf/rg80W
 p/AaAdiVUOTlmcAynk9I92+AfTMqrwmSsCnHPx9995nYaeGtPWTT2V9RD/Ewy0esEvpK
 z0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OKWd1sZcdo/XVnN5LXIUfMKKXbOkn0ce4c5ICLes2FQ=;
 b=JVfygp+n5ypQXUGH7luGSBRsOtm0+ymF4FRlpuYYjt+gupEOevktLVKLIdZiMinKuE
 DCfyP7eLss1ZbEm6hbg6a1TANB4wRwZTZpNF+DYMpGFmHF2+lMtlGoPCxumUEwQXap+8
 8/lObd9+Dfun/fgfixL5CyL5aRWQDfGCrEPxo6wMc4Pe3gULyj9GPmCpwQaSJbuCXFYc
 C1UeN7NjLU83Ts446bUW1HISIe3MKKTFVOEfOR6Pfo8p9BsTRYlP6mAzqC50bMgzhuvc
 ddfqhJ5J6G5pNUI5LAiyItKKqKNyCZrplMKa7bNGWgz/+bZRbG9lFH+UC7DoUmE0z8h6
 O6jg==
X-Gm-Message-State: AOAM530Pi2U4f3bsmi8+t1vF10EbZyaQF2DFgTJCmR3A3uA4MrVTim/I
 UbGpfj1NVJjnMP4EVVbBlJ5l5KGtPulZUla1hgo=
X-Google-Smtp-Source: ABdhPJwRDM3H3FVWGQZfGnQ5LlL2bGFEdkviqZb+bJmh1ByrKRvD4kJcjbG97rXxfh3mjdDYPD1Q4nzvZ7c11IlL9cA=
X-Received: by 2002:aed:2569:: with SMTP id w38mr2030461qtc.3.1594850400878;
 Wed, 15 Jul 2020 15:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
 <CAA85sZtjCW2Yg+tXPgYyoFA5BKAVZC8kVKG=6SiR64c8ur8UcQ@mail.gmail.com>
 <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200715144017.47d06941@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 15 Jul 2020 23:59:50 +0200
Message-ID: <CAA85sZvnytPzpia_ROnkmJoZC8n4vUsrwTQh2UBs6u6g2Fgqxw@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 15, 2020 at 11:40 PM Jakub Kicinski <kuba@kernel.org> wrote:
> On Wed, 15 Jul 2020 23:12:23 +0200 Ian Kumlien wrote:
> > On Wed, Jul 15, 2020 at 11:02 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> > > On Wed, Jul 15, 2020 at 10:31 PM Jakub Kicinski <kuba@kernel.org> wrote:
> > > > On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:
> > > > > After a  lot of debugging it turns out that the bug is in igb...
> > > > >
> > > > > driver: igb
> > > > > version: 5.6.0-k
> > > > > firmware-version:  0. 6-1
> > > > >
> > > > > 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
> > > > > Connection (rev 03)
> > > >
> > > > Unclear to me what you're actually reporting. Is this a regression
> > > > after a kernel upgrade? Compared to no NAT?
> > >
> > > It only happens on "internet links"
> > >
> > > Lets say that A is client with ibg driver, B is a firewall running NAT
> > > with ixgbe drivers, C is another local node with igb and
> > > D is a remote node with a bridge backed by a bnx2 interface.
> > >
> > > A -> B -> C is ok (B and C is on the same switch)
> > >
> > > A -> B -> D -- 32-40mbit
> > >
> > > B -> D 944 mbit
> > > C -> D 944 mbit
> > >
> > > A' -> D ~933 mbit (A with realtek nic -- also link is not idle atm)
> >
> > This should of course be A' -> B -> D
> >
> > Sorry, I've been scratching my head for about a week...
>
> Hm, only thing that comes to mind if A' works reliably and A doesn't is
> that A has somehow broken TCP offloads. Could you try disabling things
> via ethtool -K and see if those settings make a difference?

It's a bit hard since it works like this, turned tso off:
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec   108 MBytes   902 Mbits/sec    0    783 KBytes
[  5]   1.00-2.00   sec   110 MBytes   923 Mbits/sec   31    812 KBytes
[  5]   2.00-3.00   sec   111 MBytes   933 Mbits/sec   92    772 KBytes
[  5]   3.00-4.00   sec   110 MBytes   923 Mbits/sec    0    834 KBytes
[  5]   4.00-5.00   sec   111 MBytes   933 Mbits/sec   60    823 KBytes
[  5]   5.00-6.00   sec   110 MBytes   923 Mbits/sec   31    789 KBytes
[  5]   6.00-7.00   sec   111 MBytes   933 Mbits/sec    0    786 KBytes
[  5]   7.00-8.00   sec   110 MBytes   923 Mbits/sec    0    761 KBytes
[  5]   8.00-9.00   sec   110 MBytes   923 Mbits/sec    0    772 KBytes
[  5]   9.00-10.00  sec   109 MBytes   912 Mbits/sec    0    868 KBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  1.07 GBytes   923 Mbits/sec  214             sender
[  5]   0.00-10.00  sec  1.07 GBytes   920 Mbits/sec                  receiver

Continued running tests:
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  5.82 MBytes  48.8 Mbits/sec    0   82.0 KBytes
[  5]   1.00-2.00   sec  4.97 MBytes  41.7 Mbits/sec    0    130 KBytes
[  5]   2.00-3.00   sec  5.28 MBytes  44.3 Mbits/sec    0   99.0 KBytes
[  5]   3.00-4.00   sec  5.28 MBytes  44.3 Mbits/sec    0    105 KBytes
[  5]   4.00-5.00   sec  5.28 MBytes  44.3 Mbits/sec    0    122 KBytes
[  5]   5.00-6.00   sec  5.28 MBytes  44.3 Mbits/sec    0   82.0 KBytes
[  5]   6.00-7.00   sec  5.28 MBytes  44.3 Mbits/sec    0   79.2 KBytes
[  5]   7.00-8.00   sec  5.28 MBytes  44.3 Mbits/sec    0    110 KBytes
[  5]   8.00-9.00   sec  5.28 MBytes  44.3 Mbits/sec    0    156 KBytes
[  5]   9.00-10.00  sec  5.28 MBytes  44.3 Mbits/sec    0   87.7 KBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  53.0 MBytes  44.5 Mbits/sec    0             sender
[  5]   0.00-10.00  sec  52.5 MBytes  44.1 Mbits/sec                  receiver

[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  7.08 MBytes  59.4 Mbits/sec    0    156 KBytes
[  5]   1.00-2.00   sec  5.97 MBytes  50.0 Mbits/sec    0    110 KBytes
[  5]   2.00-3.00   sec  4.97 MBytes  41.7 Mbits/sec    0    124 KBytes
[  5]   3.00-4.00   sec  5.47 MBytes  45.9 Mbits/sec    0   96.2 KBytes
[  5]   4.00-5.00   sec  5.47 MBytes  45.9 Mbits/sec    0    158 KBytes
[  5]   5.00-6.00   sec  4.97 MBytes  41.7 Mbits/sec    0   70.7 KBytes
[  5]   6.00-7.00   sec  5.47 MBytes  45.9 Mbits/sec    0    113 KBytes
[  5]   7.00-8.00   sec  5.47 MBytes  45.9 Mbits/sec    0   96.2 KBytes
[  5]   8.00-9.00   sec  4.97 MBytes  41.7 Mbits/sec    0   84.8 KBytes
[  5]   9.00-10.00  sec  5.47 MBytes  45.9 Mbits/sec    0    116 KBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  55.3 MBytes  46.4 Mbits/sec    0             sender
[  5]   0.00-10.00  sec  53.9 MBytes  45.2 Mbits/sec                  receiver

And the low bandwidth continues with:
ethtool -k enp3s0 |grep ": on"
rx-vlan-offload: on
tx-vlan-offload: on [requested off]
highdma: on [fixed]
rx-vlan-filter: on [fixed]
tx-gre-segmentation: on
tx-gre-csum-segmentation: on
tx-ipxip4-segmentation: on
tx-ipxip6-segmentation: on
tx-udp_tnl-segmentation: on
tx-udp_tnl-csum-segmentation: on
tx-gso-partial: on
tx-udp-segmentation: on
hw-tc-offload: on

Can't quite find how to turn those off since they aren't listed in
ethtool (since the text is not what you use to enable/disable)

I was hoping that you'd have a clue of something that might introduce
a regression - ie specific patches to try to revert

Btw, the same issue applies to udp as werll

[ ID] Interval           Transfer     Bitrate         Total Datagrams
[  5]   0.00-1.00   sec  6.77 MBytes  56.8 Mbits/sec  4900
[  5]   1.00-2.00   sec  4.27 MBytes  35.8 Mbits/sec  3089
[  5]   2.00-3.00   sec  4.20 MBytes  35.2 Mbits/sec  3041
[  5]   3.00-4.00   sec  4.30 MBytes  36.1 Mbits/sec  3116
[  5]   4.00-5.00   sec  4.24 MBytes  35.6 Mbits/sec  3070
[  5]   5.00-6.00   sec  4.21 MBytes  35.3 Mbits/sec  3047
[  5]   6.00-7.00   sec  4.29 MBytes  36.0 Mbits/sec  3110
[  5]   7.00-8.00   sec  4.28 MBytes  35.9 Mbits/sec  3097
[  5]   8.00-9.00   sec  4.25 MBytes  35.6 Mbits/sec  3075
[  5]   9.00-10.00  sec  4.20 MBytes  35.2 Mbits/sec  3039
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter
Lost/Total Datagrams
[  5]   0.00-10.00  sec  45.0 MBytes  37.7 Mbits/sec  0.000 ms
0/32584 (0%)  sender
[  5]   0.00-10.00  sec  45.0 MBytes  37.7 Mbits/sec  0.037 ms
0/32573 (0%)  receiver

vs:

[ ID] Interval           Transfer     Bitrate         Total Datagrams
[  5]   0.00-1.00   sec   114 MBytes   954 Mbits/sec  82342
[  5]   1.00-2.00   sec   114 MBytes   955 Mbits/sec  82439
[  5]   2.00-3.00   sec   114 MBytes   956 Mbits/sec  82507
[  5]   3.00-4.00   sec   114 MBytes   955 Mbits/sec  82432
[  5]   4.00-5.00   sec   114 MBytes   956 Mbits/sec  82535
[  5]   5.00-6.00   sec   114 MBytes   953 Mbits/sec  82240
[  5]   6.00-7.00   sec   114 MBytes   956 Mbits/sec  82512
[  5]   7.00-8.00   sec   114 MBytes   956 Mbits/sec  82503
[  5]   8.00-9.00   sec   114 MBytes   956 Mbits/sec  82532
[  5]   9.00-10.00  sec   114 MBytes   956 Mbits/sec  82488
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Jitter
Lost/Total Datagrams
[  5]   0.00-10.00  sec  1.11 GBytes   955 Mbits/sec  0.000 ms
0/824530 (0%)  sender
[  5]   0.00-10.01  sec  1.11 GBytes   949 Mbits/sec  0.014 ms
4756/824530 (0.58%)  receiver


lspci -s 03:00.0  -vvv
03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
Connection (rev 03)
Subsystem: ASUSTeK Computer Inc. I211 Gigabit Network Connection
Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
Latency: 0
Interrupt: pin A routed to IRQ 57
IOMMU group: 20
Region 0: Memory at fc900000 (32-bit, non-prefetchable) [size=128K]
Region 2: I/O ports at e000 [size=32]
Region 3: Memory at fc920000 (32-bit, non-prefetchable) [size=16K]
Capabilities: [40] Power Management version 3
Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
Address: 0000000000000000  Data: 0000
Masking: 00000000  Pending: 00000000
Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
Vector table: BAR=3 offset=00000000
PBA: BAR=3 offset=00002000
Capabilities: [a0] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0.000W
DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
LnkCap: Port #3, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency
L0s <2us, L1 <16us
ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk+
ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
LnkSta: Speed 2.5GT/s (ok), Width x1 (ok)
TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR-
10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
FRS- TPHComp- ExtTPHComp-
AtomicOpsCap: 32bit- 64bit- 128bitCAS-
DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- OBFF Disabled,
AtomicOpsCtl: ReqEn-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
Compliance De-emphasis: -6dB
LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete-
EqualizationPhase1-
EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
Retimer- 2Retimers- CrosslinkRes: unsupported
Capabilities: [100 v2] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF-
MalfTLP- ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF-
MalfTLP- ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+
MalfTLP+ ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+ ECRCChkEn-
MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
HeaderLog: 00000000 00000000 00000000 00000000
Capabilities: [140 v1] Device Serial Number 34-97-f6-ff-ff-31-88-f4
Capabilities: [1a0 v1] Transaction Processing Hints
Device specific mode supported
Steering table in TPH capability structure
Kernel driver in use: igb
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
