Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF15D00B2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 20:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EBB78227B1;
	Tue,  8 Oct 2019 18:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dvhrdzkgv2Z6; Tue,  8 Oct 2019 18:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E282A2280D;
	Tue,  8 Oct 2019 18:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BEAF1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 18:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57C168613E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 18:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqmSZIzxW_yM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 18:28:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout2.fh-giessen.de (mout2.fh-giessen.de [212.201.18.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8769086101
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 18:28:06 +0000 (UTC)
Received: from mx1.fh-giessen.de ([212.201.18.40])
 by mout2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iHuDK-0000Kj-EC; Tue, 08 Oct 2019 20:28:02 +0200
Received: from mailgate-3.its.fh-giessen.de ([212.201.18.34])
 by mx1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iHuDK-004ZxS-BA; Tue, 08 Oct 2019 20:28:02 +0200
Received: from p4fed2d78.dip0.t-ipconnect.de ([79.237.45.120]
 helo=zwei.fritz.box) by mailgate-3.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <tobias.johannes.klausmann@mni.thm.de>)
 id 1iHuDK-0008nX-5S; Tue, 08 Oct 2019 20:28:02 +0200
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <171f0c61-73a2-81c2-5c8a-7c140f548803@mni.thm.de>
 <56242322-D549-4E23-97AB-153CC392B107@canonical.com>
 <76fc2204-0786-03b3-773d-110912d48168@mni.thm.de>
 <2994F2A2-D844-40B0-9971-C002E5EC49CD@canonical.com>
From: Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de>
Message-ID: <940da657-a8af-ccde-34ca-7a93fad94567@mni.thm.de>
Date: Tue, 8 Oct 2019 20:28:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101
 Thunderbird/71.0a1
MIME-Version: 1.0
In-Reply-To: <2994F2A2-D844-40B0-9971-C002E5EC49CD@canonical.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On 08.10.19 09:46, Kai-Heng Feng wrote:
> Hi Tobias,
>
>> On Oct 5, 2019, at 03:52, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
>>
>> Hello,
>>
>> On 04.10.19 19:36, Kai-Heng Feng wrote:
>>> Hi Tobias
>>>
>>>> On Oct 4, 2019, at 18:34, Tobias Klausmann <tobias.johannes.klausmann@mni.thm.de> wrote:
>>>>
>>>> Hello all,
>>>>
>>>> While testing the 5.4rc1 release, i noticed my Ethernet never coming fully up, seemingly having a timeout problem. While bisecting this i landed at the commit dee23594d587386e9fda76732aa5f5a487709510 ("e1000e: Make speed detection on hotplugging cable more reliable") as the first bad commit. And indeed just reverting the commit on top of 5.4rc1 resolves the problem. Let me know if you have further questions, or patches to test!
>>> Is runtime PM enabled (i.e. "power/control" = auto)?
>>
>> Yes it is set to auto.
> Is something like TLP or `powertop --auto-tune` is in use?
>
> Do you still see the issue when "power/control" keeps at "on"?


With "power/control" set to "on" it does still cycle between up and 
down. But yes i have upower and powerdevil running. After killing them 
the connection comes up with "power/control" set to "on", yet not with 
"auto".


Greetings,

Tobias


>
> Kai-Heng
>
>>
>>> Also please attach full dmesg, thanks!
>> Attached,
>>
>> Tobias
>>
>>> Kai-Heng
>>>
>>>> Greetings,
>>>>
>>>> Tobias
>>>>
>>>>
>>>> lspci:
>>>>
>>>> 00:19.0 Ethernet controller: Intel Corporation 82579V Gigabit Network Connection (rev 06)
>>>>          DeviceName:  Onboard LAN
>>>>          Subsystem: ASUSTeK Computer Inc. P8P67 Deluxe Motherboard
>>>>          Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
>>>>          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>>>>          Latency: 0
>>>>          Interrupt: pin A routed to IRQ 56
>>>>          Region 0: Memory at fbf00000 (32-bit, non-prefetchable) [size=128K]
>>>>          Region 1: Memory at fbf28000 (32-bit, non-prefetchable) [size=4K]
>>>>          Region 2: I/O ports at f040 [size=32]
>>>>          Capabilities: [c8] Power Management version 2
>>>>                  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
>>>>                  Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=1 PME-
>>>>          Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
>>>>                  Address: 00000000fee00698  Data: 0000
>>>>          Capabilities: [e0] PCI Advanced Features
>>>>                  AFCap: TP+ FLR+
>>>>                  AFCtrl: FLR-
>>>>                  AFStatus: TP-
>>>>          Kernel driver in use: e1000e
>>>>          Kernel modules: e1000e
>>>>
>> <dmesg.txt>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
