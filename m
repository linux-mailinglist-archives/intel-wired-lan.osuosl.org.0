Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68721AEF90A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jul 2025 14:44:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AF9541DED;
	Tue,  1 Jul 2025 12:44:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YtLsHU3FuDH4; Tue,  1 Jul 2025 12:44:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B311441DB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751373870;
	bh=u7HVFMPJAt1WeX7ij/W3jz0RpayYJ4zFyBYCplxep88=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xdt9yLAv98Ye7P84ffemsUpDfLfCGW4+DFQR91IMz9jgUZeQ/pNUSqmGVEdYkxUy/
	 nnLnt/xiE34s87OVI2uTrKyM12MCPcW1bVsMAlwzFesAAYdySe35Az+NsdWKcQllKU
	 dr13z1zvvxkTvWl8qz1JAaA7QPkEj0m/ktdQdQmKcNX4waEK1uwNgE7ND+0OajF/pM
	 kHn6BD1GKPECyn3wFAqp4nwmB3EYcBwNYsghRIcNCCahWPWeBVJFxNQMIiJJof4L1J
	 D4OVLY22wtscqCW8sSR/Gh0FgSVeydrmD7KMMZb0V9EqJddzNQOrSpBchDDlqoagNW
	 G+hVNYEPj45Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B311441DB4;
	Tue,  1 Jul 2025 12:44:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C116DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4252041D24
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:44:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2FsRsH41UGRa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jul 2025 12:44:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.167.49;
 helo=mail-lf1-f49.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E0A374055A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0A374055A
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E0A374055A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jul 2025 12:44:27 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-555024588a8so3392935e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Jul 2025 05:44:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751373865; x=1751978665;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=u7HVFMPJAt1WeX7ij/W3jz0RpayYJ4zFyBYCplxep88=;
 b=Iku0E6ZcBiRPr5eYIMrQjynKTstzP/PGdxm4o3jduLF0b4ao8WLNd+kKHyPdNDiMAo
 Pdymdt5YIyqmxciD2ANBycGxbmbnAbMPOg+f/fCkTwEsUR7ikbyh13zUA38HAlw0ze44
 5KU6mxY1Ybu6E7hvZOL8abVu4oV3awy6eDX6dNcbXL1psmZ1rYtkPRYVU5LnEOB73w6M
 wiXXRPFOFlU1wRpxBA8jSj16OnxDSvS44NY57ppHUwlLI5C4jyfsMNz+yKC2Fd2k/12i
 jw1F6nzDdyAqTX2NY6Nyz+RMFnkUTMTpX2hPMhvxJu6G8Zhel/XrUF7YFhmbYC1/ubcf
 UCFQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBUtMWKnErgimhwK+xJPpOxWEGXdXwrueo1IIkQnz0a0Hj7g5FKp1cUrN/h5iwQvZlVdh/hjEwdyg6vSC2Sq8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzLlqN2oTip+KJIGgfIB078CGQXKuLRJP4BgbyRhLjjxf0WqY4H
 jFJpT0xHwRQmxMPx+3kIkQcF6w1PxDRi8I2NF/zz5cD2n9wqfj2UIF+D
X-Gm-Gg: ASbGncuIq9Ic6bSTbxyE5/K61kS1Dk827tmBo8c5ENrzIyapfR8Y8XUVz4uX988rV5N
 6qFEWkT+SrxbZV24j80545gngwkVFJB5L51rurpfWvtYeEVoCrFZ36BnZMwm+l8X/bZD3VJ6rsj
 fVWMmF/z0ThAn0KTA4IQyNsAG0B6qlfk9tgKtlsb9lrUy0rQVdGPRFympM5sCBg5mHikczH4e1M
 +J9xL9ZrpEVpRFKMH27XD6F8uDlHfyNI3UcWu5o4zL4dzZidkWrGhNAMx+sQvAj3ACzKeagLIg0
 RnxJzCVIV9nbJtXVp+yNJ9zA31rCuyKiPXQFlqg9/6PxZ06Rwyo7bcPtrpIkvvK0paxkVo7kM4P
 nktUzJGZZ7KCZvHLcydxj
X-Google-Smtp-Source: AGHT+IEBV0/jUI6S0AOqcejoj0LNvQaJQtl1dQ8lichKDf56ZXv2ttjcgUReFpC0tfClg4HsVD1pdQ==
X-Received: by 2002:a05:6512:3083:b0:549:5866:6489 with SMTP id
 2adb3069b0e04-5550ba224f5mr5695523e87.47.1751373865250; 
 Tue, 01 Jul 2025 05:44:25 -0700 (PDT)
Received: from onyx.my.domain (88-112-35-58.elisa-laajakaista.fi.
 [88.112.35.58]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5550b2c615fsm1839514e87.154.2025.07.01.05.44.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jul 2025 05:44:25 -0700 (PDT)
Date: Tue, 1 Jul 2025 15:44:23 +0300
From: Timo Teras <timo.teras@iki.fi>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: En-Wei WU <en-wei.wu@canonical.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <regressions@lists.linux.dev>,
 <stable@vger.kernel.org>, <sashal@kernel.org>
Message-ID: <20250701154423.1917c3de@onyx.my.domain>
In-Reply-To: <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
References: <CAMqyJG3LVqfgqMcTxeaPur_Jq0oQH7GgdxRuVtRX_6TTH2mX5Q@mail.gmail.com>
 <3023fe74-29c7-4a41-b805-c6b00fb0b3cc@intel.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: Re: [Intel-wired-lan] [REGRESSION] Packet loss after hot-plugging
 ethernet cable on HP Zbook (Arrow Lake)
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 1 Jul 2025 14:46:18 +0300
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 7/1/2025 8:31 AM, En-Wei WU wrote:
> > Hi,
> > 
> > I'm seeing a regression on an HP ZBook using the e1000e driver
> > (chipset PCI ID: [8086:57a0]) -- the system can't get an IP address
> > after hot-plugging an Ethernet cable. In this case, the Ethernet
> > cable was unplugged at boot. The network interface eno1 was present
> > but stuck in the DHCP process. Using tcpdump, only TX packets were
> > visible and never got any RX -- indicating a possible packet loss or
> > link-layer issue.
> > 
> > This is on the vanilla Linux 6.16-rc4 (commit
> > 62f224733431dbd564c4fe800d4b67a0cf92ed10).
> > 
> > Bisect says it's this commit:
> > 
> > commit efaaf344bc2917cbfa5997633bc18a05d3aed27f
> > Author: Vitaly Lifshits <vitaly.lifshits@intel.com>
> > Date:   Thu Mar 13 16:05:56 2025 +0200
> > 
> >      e1000e: change k1 configuration on MTP and later platforms
> > 
> >      Starting from Meteor Lake, the Kumeran interface between the
> > integrated MAC and the I219 PHY works at a different frequency.
> > This causes sporadic MDI errors when accessing the PHY, and in rare
> > circumstances could lead to packet corruption.
> > 
> >      To overcome this, introduce minor changes to the Kumeran idle
> >      state (K1) parameters during device initialization. Hardware
> > reset reverts this configuration, therefore it needs to be applied
> > in a few places.
> > 
> >      Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> >      Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> >      Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
> >      Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > 
> >   drivers/net/ethernet/intel/e1000e/defines.h |  3 +++
> >   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
> >   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++++
> >   3 files changed, 82 insertions(+), 5 deletions(-)
> > 
> > Reverting this patch resolves the issue.
> > 
> > Based on the symptoms and the bisect result, this issue might be
> > similar to
> > https://lore.kernel.org/intel-wired-lan/20250626153544.1853d106@onyx.my.domain/
> > 
> > 
> > Affected machine is:
> > HP ZBook X G1i 16 inch Mobile Workstation PC, BIOS 01.02.03
> > 05/27/2025 (see end of message for dmesg from boot)
> > 
> > CPU model name:
> > Intel(R) Core(TM) Ultra 7 265H (Arrow Lake)
> > 
> > ethtool output:
> > driver: e1000e
> > version: 6.16.0-061600rc4-generic
> > firmware-version: 0.1-4
> > expansion-rom-version:
> > bus-info: 0000:00:1f.6
> > supports-statistics: yes
> > supports-test: yes
> > supports-eeprom-access: yes
> > supports-register-dump: yes
> > supports-priv-flags: yes
> > 
> > lspci output:
> > 0:1f.6 Ethernet controller [0200]: Intel Corporation Device
> > [8086:57a0] DeviceName: Onboard Ethernet
> >          Subsystem: Hewlett-Packard Company Device [103c:8e1d]
> >          Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> > ParErr- Stepping- SERR- FastB2B- DisINTx+
> >          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast
> > >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> >          Latency: 0
> >          Interrupt: pin D routed to IRQ 162
> >          IOMMU group: 17
> >          Region 0: Memory at 92280000 (32-bit, non-prefetchable)
> > [size=128K] Capabilities: [c8] Power Management version 3
> >                  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> > PME(D0+,D1-,D2-,D3hot+,D3cold+)
> >                  Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1
> > PME- Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
> >                  Address: 00000000fee00798  Data: 0000
> >          Kernel driver in use: e1000e
> >          Kernel modules: e1000e
> > 
> > The relevant dmesg:
> > <<<cable disconnected>>>
> > 
> > [    0.927394] e1000e: Intel(R) PRO/1000 Network Driver
> > [    0.927398] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > [    0.927933] e1000e 0000:00:1f.6: enabling device (0000 -> 0002)
> > [    0.928249] e1000e 0000:00:1f.6: Interrupt Throttling Rate
> > (ints/sec) set to dynamic conservative mode
> > [    1.155716] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> > registered PHC clock
> > [    1.220694] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width
> > x1) 24:fb:e3:bf:28:c6
> > [    1.220721] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> > Connection [    1.220903] e1000e 0000:00:1f.6 eth0: MAC: 16, PHY:
> > 12, PBA No: FFFFFF-0FF [    1.222632] e1000e 0000:00:1f.6 eno1:
> > renamed from eth0
> > 
> > <<<cable connected>>>
> > 
> > [  153.932626] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps
> > Half Duplex, Flow Control: None
> > [  153.934527] e1000e 0000:00:1f.6 eno1: NIC Link is Down
> > [  157.622238] e1000e 0000:00:1f.6 eno1: NIC Link is Up 1000 Mbps
> > Full Duplex, Flow Control: None
> > 
> > No error message seen after hot-plugging the Ethernet cable.
> >   
> 
> Thank your for the report.
> 
> We did not encounter this issue during our patch testing. However, we 
> will attempt to reproduce it in our lab.
> 
> One detail that caught my attention is that flow control is disabled
> in both scenarios. Could you please check whether the issue persists
> when flow control is enabled? This might require connecting to a link
> partner that supports flow control.

I wrote the other similar report from Dell Pro referenced earlier.
Additional testing on the Dell provided the following insight:

- A fast cable out/in will work. The cable should be disconnected
  for 10-15 seconds for the issue to trigger.

- Sometimes the first spurious link up is 1000 mbps/half and sometimes
  10 mbps/half.

- Using ethtool -r to renegotiate the link will make things work in
  the defunct state.

And yes, my issue seems to be exactly the same.

Thanks,
Timo
