Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C1623CA4C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Aug 2020 13:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 482348631C;
	Wed,  5 Aug 2020 11:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bfM8-F26QELx; Wed,  5 Aug 2020 11:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5514285F89;
	Wed,  5 Aug 2020 11:34:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 33EA61BF33A
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 11:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2FC27877CE
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 11:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vd5jqw9WBqcT for <intel-wired-lan@osuosl.org>;
 Wed,  5 Aug 2020 11:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DEB1F877B4
 for <intel-wired-lan@osuosl.org>; Wed,  5 Aug 2020 11:34:44 +0000 (UTC)
IronPort-SDR: sv7tYouhTtwmKFFhHnN9F7plm5oM54bZyba91sLyPJrO6ZruZZo6V+W/QvRGUeM5QjTn88YaI8
 RmYlLLm3TRTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="149950257"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="149950257"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:34:44 -0700
IronPort-SDR: C0EmQoKlYtE1RzUoqAR2rKHSbysNVZUsNdGUC+cNC92tycqlkMNdikkyeZ84XAaX7wC0nmMihO
 Aif4Nu0+qPTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="332816110"
Received: from vlifsht-mobl.ger.corp.intel.com (HELO [10.214.226.133])
 ([10.214.226.133])
 by orsmga007.jf.intel.com with ESMTP; 05 Aug 2020 04:34:43 -0700
To: intel-wired-lan@osuosl.org
References: <CADS+iDVjpGVQifg+RtNEQKJw4ePe6+ViUpto8U1v0Xv1HwN2-Q@mail.gmail.com>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <013f9961-a7fc-0d60-eea3-30b5171a27e1@intel.com>
Date: Wed, 5 Aug 2020 14:34:42 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CADS+iDVjpGVQifg+RtNEQKJw4ePe6+ViUpto8U1v0Xv1HwN2-Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Deep package C-states cannot be reached on
 e1000e after resume from suspend
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Yatoslav,

On 8/5/2020 03:42, Yaroslav Isakov wrote:
> Hello! I've found that my laptop (T460s) cannot reach Package C-states
> deeper than PC2. After some research, I've found that unplugging cable
> from my laptop and plugging it back fixes that, until the laptop is
> suspended. After resume, this problem returns, but unplugging and
> plugging fix it again.
> I'm using kernel 5.8.0, but I've seen the same behavior on previous
> kernel as well.
> 
> Here is a lspci -n -vv excerpt:
> 00:1f.6 0200: 8086:156f (rev 21)
>      Subsystem: 17aa:2233
>      Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
> ParErr- Stepping- SERR- FastB2B- DisINTx+
>      Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
> <TAbort- <MAbort- >SERR- <PERR- INTx-
>      Latency: 0
>      Interrupt: pin A routed to IRQ 129
>      Region 0: Memory at e1100000 (32-bit, non-prefetchable) [size=128K]
>      Capabilities: [c8] Power Management version 3
>          Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
>          Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
>      Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>          Address: 00000000fee002f8  Data: 0000
>      Capabilities: [e0] PCI Advanced Features
>          AFCap: TP+ FLR+
>          AFCtrl: FLR-
>          AFStatus: TP-
>      Kernel driver in use: e1000e
>      Kernel modules: e1000e
> 
> /sys/bus/pci/devices/0000:00:1f.6/power/control = on (I've changed it
> to auto, but no change in behavoir)
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

In order to be able to reach the lowest power state with connected cable 
you need to set pmc to ignore ltr from the GBE.

You can do it by executing:
echo 3 > /sys/kernel/debug/pmc_core/ltr_ignore
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
