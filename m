Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A13CF425
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 09:46:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60AFF875F0;
	Tue,  8 Oct 2019 07:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSWRDEO5joAx; Tue,  8 Oct 2019 07:46:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4030587606;
	Tue,  8 Oct 2019 07:46:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2854F1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:46:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 240DA8562D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:46:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhO7ZwsF3Oz3 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 07:46:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 24662855A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:46:19 +0000 (UTC)
Received: from mail-pl1-f198.google.com ([209.85.214.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1iHkCH-0003Xs-4l
 for intel-wired-lan@lists.osuosl.org; Tue, 08 Oct 2019 07:46:17 +0000
Received: by mail-pl1-f198.google.com with SMTP id f8so10308485plj.10
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Oct 2019 00:46:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=PjByk3+qcqmoyRROOKSgncBpIurhIbIveg7FM/NtDSE=;
 b=loPyju5hTnPCxfaBNyeh9eftBAcfQiRLhEWRD9SCaDp1CHiPu/5umVVeaNcXN5eOR6
 HsiXvi4tDpx7oAN8lBwR3van09BnO/W9VJQwcEWEnBG6VFK/2CgsZEwRzjJb4Q+AYNB5
 rjXmlFNIdzAw6DrUGbuDZu6mylI0XhMdhwLXUKPLtwL0+x1KzKhkKF5B7IDdMZGffaK4
 jaWNhO+QJdmMBnLFjOPkx15E3DjuOSiJu2UJr77/OdGLSlN6AAaot+2X8ZF5sZhVobj5
 Dg0tIPu6JT+xA4dzJelaq6NkmdIR9/Vvx/fOtXSwvgv0djoZMWtiq+Ho/weQQ4M5eWAG
 GcYg==
X-Gm-Message-State: APjAAAWI7aePeCnXPYMZL/C/1agJX4YCGZLS2DcOVolvU9NbdW/IBoi6
 SjDTnyqFmcTBEtadDBIClwj5z2tBEr6gitS6wsMLbE7q/aQrCZa6QnJjS+z8/tyke06x6SktVOK
 YLIN8EDdZjtT4RVVS3TZTsLmcnOiV6BwzX0BSIsu8xKcrBhI=
X-Received: by 2002:a17:902:6bc5:: with SMTP id
 m5mr34613199plt.282.1570520775638; 
 Tue, 08 Oct 2019 00:46:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxq2z9TPA04cnVKcnWKfwfTy6uh7Pdgkh/eovRcCG7IjF5fS2tihcKdlwsRnNokM3dRcqpmqQ==
X-Received: by 2002:a17:902:6bc5:: with SMTP id
 m5mr34613177plt.282.1570520775239; 
 Tue, 08 Oct 2019 00:46:15 -0700 (PDT)
Received: from 2001-b011-380f-3c42-1138-6cd0-3dc6-cfa2.dynamic-ip6.hinet.net
 (2001-b011-380f-3c42-1138-6cd0-3dc6-cfa2.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c42:1138:6cd0:3dc6:cfa2])
 by smtp.gmail.com with ESMTPSA id f3sm15041747pgj.62.2019.10.08.00.46.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 00:46:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <76fc2204-0786-03b3-773d-110912d48168@mni.thm.de>
Date: Tue, 8 Oct 2019 15:46:10 +0800
Message-Id: <2994F2A2-D844-40B0-9971-C002E5EC49CD@canonical.com>
References: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
 <56242322-D549-4E23-97AB-153CC392B107@canonical.com>
 <76fc2204-0786-03b3-773d-110912d48168@mni.thm.de>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
X-Mailer: Apple Mail (2.3594.4.19)
Subject: Re: [Intel-wired-lan] e1000e regression - 5.4rc1
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
Cc: tobias.klausmann@freenet.de, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tobias,

> On Oct 5, 2019, at 03:52, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
> 
> Hello,
> 
> On 04.10.19 19:36, Kai-Heng Feng wrote:
>> Hi Tobias
>> 
>>> On Oct 4, 2019, at 18:34, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
>>> 
>>> Hello all,
>>> 
>>> While testing the 5.4rc1 release, i noticed my Ethernet never coming fully up, seemingly having a timeout problem. While bisecting this i landed at the commit dee23594d587386e9fda76732aa5f5a487709510 ("e1000e: Make speed detection on hotplugging cable more reliable") as the first bad commit. And indeed just reverting the commit on top of 5.4rc1 resolves the problem. Let me know if you have further questions, or patches to test!
>> Is runtime PM enabled (i.e. "power/control" = auto)?
> 
> 
> Yes it is set to auto.

Is something like TLP or `powertop --auto-tune` is in use?

Do you still see the issue when "power/control" keeps at "on"?

Kai-Heng

> 
> 
>> Also please attach full dmesg, thanks!
> 
> Attached,
> 
> Tobias
> 
>> 
>> Kai-Heng
>> 
>>> Greetings,
>>> 
>>> Tobias
>>> 
>>> 
>>> lspci:
>>> 
>>> 00:19.0 Ethernet controller: Intel Corporation 82579V Gigabit Network Connection (rev 06)
>>>         DeviceName:  Onboard LAN
>>>         Subsystem: ASUSTeK Computer Inc. P8P67 Deluxe Motherboard
>>>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
>>>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>         Latency: 0
>>>         Interrupt: pin A routed to IRQ 56
>>>         Region 0: Memory at fbf00000 (32-bit, non-prefetchable) [size=128K]
>>>         Region 1: Memory at fbf28000 (32-bit, non-prefetchable) [size=4K]
>>>         Region 2: I/O ports at f040 [size=32]
>>>         Capabilities: [c8] Power Management version 2
>>>                 Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
>>>                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
>>>         Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>>>                 Address: 00000000fee00698  Data: 0000
>>>         Capabilities: [e0] PCI Advanced Features
>>>                 AFCap: TP+ FLR+
>>>                 AFCtrl: FLR-
>>>                 AFStatus: TP-
>>>         Kernel driver in use: e1000e
>>>         Kernel modules: e1000e
>>> 
> <dmesg.txt>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
