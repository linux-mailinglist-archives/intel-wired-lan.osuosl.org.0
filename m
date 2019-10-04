Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F198ACC1CF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 19:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB0F487D8B;
	Fri,  4 Oct 2019 17:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgCIvdqtzrI4; Fri,  4 Oct 2019 17:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC16F87D75;
	Fri,  4 Oct 2019 17:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C0D81BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 17:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04415204DE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 17:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGSDMSrwpL7b for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 17:36:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id CD82B20448
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 17:36:17 +0000 (UTC)
Received: from mail-pf1-f200.google.com ([209.85.210.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1iGRV1-0004GA-Je
 for intel-wired-lan@lists.osuosl.org; Fri, 04 Oct 2019 17:36:15 +0000
Received: by mail-pf1-f200.google.com with SMTP id x10so5201127pfr.20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Oct 2019 10:36:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=L3tfumWRZEtUR1PqVEP/89/GbIPwI6NtDxX+kDFfkU8=;
 b=b4l9FeJejlNH5nqjRKRvTpIQXL3Pds1NhunDjjVzwGHniIkX6z7YMB+uzBAftq4inJ
 4Rz+IiApIlA+y5XV7nUyxwgxLCDu3yvIRtvEJrFEeladP+iCNM5SIYcdv9EBoBrXx2nJ
 Y3F2CPy4Dle/uhWKpE81e5SmdoppiehTUJ8LKPBmjOmDoeNOTSEF9pzCR1mA1cDvmNU5
 +WcT6JRFw0khq8IdxIv7T6ir+qjM31ub6zHXydftl6IN97vzqSQlu5BHqzcnZDfR7o6h
 3vDaA90rrgz/8GlnyVvga65V+js0RnvD1HktImhHPowgGyjiMVbLgLibVl7fpqRGplig
 EJyQ==
X-Gm-Message-State: APjAAAUZK5B0klHmi/kLNQdD7JK7/YyApVaDITDWGlJ3b+CQZzuS9GmQ
 ed4kschKjuzOE0msYdAWJG0fhqDmyAL25e8qYO6/Iw8YjkDMbMdMfT1vXpLBAZ7n6VXwNgWvbqD
 qQdmjc6igZ4gD019mGsGu7e0j89UV5gcjSjeEAQnCZLzIpUc=
X-Received: by 2002:a63:ca06:: with SMTP id n6mr16259106pgi.17.1570210574223; 
 Fri, 04 Oct 2019 10:36:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxzmvTxnFf7austvnOxYDw8RbmtlxccNk38ggjAtesz64RktW0dvAfQaQKXsIYJPA4nZdhpfA==
X-Received: by 2002:a63:ca06:: with SMTP id n6mr16259081pgi.17.1570210573861; 
 Fri, 04 Oct 2019 10:36:13 -0700 (PDT)
Received: from 2001-b011-380f-3c42-9827-fbc1-5efc-0e00.dynamic-ip6.hinet.net
 (2001-b011-380f-3c42-9827-fbc1-5efc-0e00.dynamic-ip6.hinet.net.
 [2001:b011:380f:3c42:9827:fbc1:5efc:e00])
 by smtp.gmail.com with ESMTPSA id 20sm5679277pgo.27.2019.10.04.10.36.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 10:36:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.18\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
Date: Sat, 5 Oct 2019 01:36:09 +0800
Message-Id: <56242322-D549-4E23-97AB-153CC392B107@canonical.com>
References: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
To: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
X-Mailer: Apple Mail (2.3594.4.18)
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

Hi Tobias

> On Oct 4, 2019, at 18:34, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
> 
> Hello all,
> 
> While testing the 5.4rc1 release, i noticed my Ethernet never coming fully up, seemingly having a timeout problem. While bisecting this i landed at the commit dee23594d587386e9fda76732aa5f5a487709510 ("e1000e: Make speed detection on hotplugging cable more reliable") as the first bad commit. And indeed just reverting the commit on top of 5.4rc1 resolves the problem. Let me know if you have further questions, or patches to test!

Is runtime PM enabled (i.e. "power/control" = auto)?
Also please attach full dmesg, thanks!

Kai-Heng 

> 
> Greetings,
> 
> Tobias
> 
> 
> lspci:
> 
> 00:19.0 Ethernet controller: Intel Corporation 82579V Gigabit Network Connection (rev 06)
>         DeviceName:  Onboard LAN
>         Subsystem: ASUSTeK Computer Inc. P8P67 Deluxe Motherboard
>         Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Latency: 0
>         Interrupt: pin A routed to IRQ 56
>         Region 0: Memory at fbf00000 (32-bit, non-prefetchable) [size=128K]
>         Region 1: Memory at fbf28000 (32-bit, non-prefetchable) [size=4K]
>         Region 2: I/O ports at f040 [size=32]
>         Capabilities: [c8] Power Management version 2
>                 Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
>                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
>         Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>                 Address: 00000000fee00698  Data: 0000
>         Capabilities: [e0] PCI Advanced Features
>                 AFCap: TP+ FLR+
>                 AFCtrl: FLR-
>                 AFStatus: TP-
>         Kernel driver in use: e1000e
>         Kernel modules: e1000e
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
