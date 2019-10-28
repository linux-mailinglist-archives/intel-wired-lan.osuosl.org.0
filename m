Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 826FBE6CAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2019 08:07:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2FAD120398;
	Mon, 28 Oct 2019 07:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7CPihvc6QWyN; Mon, 28 Oct 2019 07:07:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9754203CE;
	Mon, 28 Oct 2019 07:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A918C1BF425
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 07:07:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A17C720398
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 07:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4-JRNeAzdV0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2019 07:07:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 5CF4220397
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 07:07:11 +0000 (UTC)
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1iOz7N-0006ah-2y
 for intel-wired-lan@lists.osuosl.org; Mon, 28 Oct 2019 07:07:09 +0000
Received: by mail-pf1-f199.google.com with SMTP id x3so2648021pfr.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2019 00:07:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=jfQkmuDOTeTMav8WguTDuTWarriQw/T8WFB78g2eSdo=;
 b=tlykqnVXWxmKBrGrxmCyM3TDqVIBSPKJexoFzhFo47KNw/hlG9xa3CVHHM5KpzDpDm
 apnKifVTbtAVDKcpAQoULrS34QUHoMYRb2dNiql3Pnw9tPTTa210PwX75/iMZxEt3mjK
 yft+NskWxiBWAE5b/gpneOIvyjdjbnOZBk2TvtyV82XTRiCa3Do6tilvlYk0XVlRX3zu
 NFZUKRLDGYQ51e6dtyCi6ikbubkK/+ua9vERie9Vq8J+2QSQ6MfrtxnApgczQ4+YAj1H
 yXisyT/aKADt3PjYIo7Hvc3vgxo5SK/rDvhtYJMr3Qr9qPt3zBLeIXcPZsQwl2jTyMJZ
 irug==
X-Gm-Message-State: APjAAAVa8kD5Xcvp8zKao9vfkIvmScAJjlwB2AlE6+9a6O3adXg3zQ2z
 5MD5BT0FLTxdfwCIh3k9AchqtyQg+4A/vwGsMnY1TdoHJaCX1sVGTORWu6cit/RXPe13Gc8y0rf
 ypFE7Iq7XPxCsUYtX3zkc+rdVMXZe4NOw0UXi1BtAYauQP5E=
X-Received: by 2002:a63:2f47:: with SMTP id v68mr19033522pgv.318.1572246427647; 
 Mon, 28 Oct 2019 00:07:07 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxvGjAlrLKj/JoHnaALxY+Y3Db7Nsjp996m81JYS6jCJ9XPQyGYp8qXg4sxTYJKEh2DEwmc5A==
X-Received: by 2002:a63:2f47:: with SMTP id v68mr19033484pgv.318.1572246427128; 
 Mon, 28 Oct 2019 00:07:07 -0700 (PDT)
Received: from 2001-b011-380f-3c42-74a9-e8b4-eac5-9609.dynamic-ip6.hinet.net
 (2001-b011-380f-3c42-74a9-e8b4-eac5-9609.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c42:74a9:e8b4:eac5:9609])
 by smtp.gmail.com with ESMTPSA id c12sm5351039pfp.178.2019.10.28.00.07.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:07:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <940da657-a8af-ccde-34ca-7a93fad94567@mni.thm.de>
Date: Mon, 28 Oct 2019 15:07:04 +0800
Message-Id: <ADFA5FA0-ED36-4313-9CDD-602946FEBA67@canonical.com>
References: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
 <56242322-D549-4E23-97AB-153CC392B107@canonical.com>
 <76fc2204-0786-03b3-773d-110912d48168@mni.thm.de>
 <2994F2A2-D844-40B0-9971-C002E5EC49CD@canonical.com>
 <940da657-a8af-ccde-34ca-7a93fad94567@mni.thm.de>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
X-Mailer: Apple Mail (2.3601)
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

> On Oct 9, 2019, at 02:28, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
> 
> Hi,
> 
> On 08.10.19 09:46, Kai-Heng Feng wrote:
>> Hi Tobias,
>> 
>>> On Oct 5, 2019, at 03:52, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
>>> 
>>> Hello,
>>> 
>>> On 04.10.19 19:36, Kai-Heng Feng wrote:
>>>> Hi Tobias
>>>> 
>>>>> On Oct 4, 2019, at 18:34, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
>>>>> 
>>>>> Hello all,
>>>>> 
>>>>> While testing the 5.4rc1 release, i noticed my Ethernet never coming fully up, seemingly having a timeout problem. While bisecting this i landed at the commit dee23594d587386e9fda76732aa5f5a487709510 ("e1000e: Make speed detection on hotplugging cable more reliable") as the first bad commit. And indeed just reverting the commit on top of 5.4rc1 resolves the problem. Let me know if you have further questions, or patches to test!
>>>> Is runtime PM enabled (i.e. "power/control" = auto)?
>>> 
>>> Yes it is set to auto.
>> Is something like TLP or `powertop --auto-tune` is in use?
>> 
>> Do you still see the issue when "power/control" keeps at "on"?
> 
> 
> With "power/control" set to "on" it does still cycle between up and down. But yes i have upower and powerdevil running. After killing them the connection comes up with "power/control" set to "on", yet not with "auto".

Can you please give this branch a try:
https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/log/?h=dev-queue

Kai-Heng

> 
> 
> Greetings,
> 
> Tobias
> 
> 
>> 
>> Kai-Heng
>> 
>>> 
>>>> Also please attach full dmesg, thanks!
>>> Attached,
>>> 
>>> Tobias
>>> 
>>>> Kai-Heng
>>>> 
>>>>> Greetings,
>>>>> 
>>>>> Tobias
>>>>> 
>>>>> 
>>>>> lspci:
>>>>> 
>>>>> 00:19.0 Ethernet controller: Intel Corporation 82579V Gigabit Network Connection (rev 06)
>>>>>         DeviceName:  Onboard LAN
>>>>>         Subsystem: ASUSTeK Computer Inc. P8P67 Deluxe Motherboard
>>>>>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
>>>>>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>>>         Latency: 0
>>>>>         Interrupt: pin A routed to IRQ 56
>>>>>         Region 0: Memory at fbf00000 (32-bit, non-prefetchable) [size=128K]
>>>>>         Region 1: Memory at fbf28000 (32-bit, non-prefetchable) [size=4K]
>>>>>         Region 2: I/O ports at f040 [size=32]
>>>>>         Capabilities: [c8] Power Management version 2
>>>>>                 Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
>>>>>                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
>>>>>         Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>>>>>                 Address: 00000000fee00698  Data: 0000
>>>>>         Capabilities: [e0] PCI Advanced Features
>>>>>                 AFCap: TP+ FLR+
>>>>>                 AFCtrl: FLR-
>>>>>                 AFStatus: TP-
>>>>>         Kernel driver in use: e1000e
>>>>>         Kernel modules: e1000e
>>>>> 
>>> <dmesg.txt>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
