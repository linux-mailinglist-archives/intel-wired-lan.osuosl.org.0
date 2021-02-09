Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17654315820
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Feb 2021 21:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C96E48691A;
	Tue,  9 Feb 2021 20:59:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnzWl7XyvlWC; Tue,  9 Feb 2021 20:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D6E086852;
	Tue,  9 Feb 2021 20:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76BB01BF20F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 647696F4EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3UZYlYYVnsk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Feb 2021 20:59:39 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DA6BA6F54C; Tue,  9 Feb 2021 20:59:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E72756F4EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Feb 2021 20:59:37 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id w20so83487qta.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 09 Feb 2021 12:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=coverfire.com; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bmmLwJTAPFkiKDXyyyS7Lqq0f5X6nr694IkAggrP/Vo=;
 b=jnYbxdzhD7HxZ8f6jrgvHKsSAgiDTpsIMZNgyvUp1t6K69Ftyf6Fl2x8NGFQFdGmbv
 f0Piec3nqyCN13ed0eVg3jkFkOEdlXKONtyJVJiuZkfKXNWeB69A9+oDj56Txea01k6X
 raERyW3Hmiso78bnel4DjvCYLQ/EY2Z4kUQ++pGOgMhEGkXf/Rfdcj9qNmbysUmgNN+c
 4Hffw7sSRjGVisaZJj3QQ4oL3z2fGqs9ZFyma4mDoEePdnDfOU9vRXOzz/+RKkhbdvk4
 thxgx+hgPw5wT5Jp6sox5wLRJQgtoojCaBknM7JzHSo74Q51oYRdNJT8ZOlz9JcnBLqn
 ZAzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bmmLwJTAPFkiKDXyyyS7Lqq0f5X6nr694IkAggrP/Vo=;
 b=EvGFauw5Iy09+0O1wWWzhlh+EKGkHcuKaBznEMKmcomiPrXJGLj7SFZAuFg5PhHrLy
 I89T9swoTqONoiV/kgG4Ax7PouDJF0tkN+PXfx9Witp0v7ZMua4KPIsK1lD+AnutFHGq
 W4biS+mnc/h9f9ovRKliytIukIGk7KZlkiCCfn2J7I9k8qAF9D6wS8uwe/+a7IdBOfqA
 7zn9RsM3Ee9nKt41s4wJzglk7eBBhPuYFHNJdixagLMjNIrUvm7ZxuDDvAYYRfuLpjei
 HikugO+7CeSl7VJvPiPiO5fxfWpANF8D8kndBoA3A0A2LbCkriuQsDdB3tFAIkLwXjY3
 AUfg==
X-Gm-Message-State: AOAM530PtnqBwmWwMJ3evWZdYpuUvsf3eXydTy0jzcm9yrAADL5jBoDE
 dlgxrgeQ5JdAUpxJrD2Hz1FdJQ==
X-Google-Smtp-Source: ABdhPJzQzUBbKZJVHk1MXxPgiNeF2swKMEP4N51Mj9Edn+12lXsRJEdSh3yv48aGCO5KxLvo7D3PJw==
X-Received: by 2002:ac8:5bd1:: with SMTP id b17mr21751051qtb.53.1612904376353; 
 Tue, 09 Feb 2021 12:59:36 -0800 (PST)
Received: from ?IPv6:2607:f2c0:e56e:28c:5524:727c:ba55:9558?
 ([2607:f2c0:e56e:28c:5524:727c:ba55:9558])
 by smtp.gmail.com with ESMTPSA id z23sm15896767qkb.13.2021.02.09.12.59.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 12:59:35 -0800 (PST)
Message-ID: <5ff376e94c76a9b475242d829ca7b7d2e1786620.camel@coverfire.com>
From: Dan Siemon <dan@coverfire.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Date: Tue, 09 Feb 2021 15:59:34 -0500
In-Reply-To: <20210209120223.000041ca@intel.com>
References: <fc55ca6fb012c9e36e53d2ab80d47894c38e85a8.camel@coverfire.com>
 <AB117487-C2C3-47EF-A3C4-FDCED9304282@intel.com>
 <8c7d255047890290948cf51450b1f860e013b48c.camel@coverfire.com>
 <d3f0614118192ba0df5ec0e845f61e092f187744.camel@coverfire.com>
 <20210209120223.000041ca@intel.com>
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] 710/i40e, RSS and 802.1ad (double vlan)
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-02-09 at 12:02 -0800, Jesse Brandeburg wrote:
> Please provide us with which driver/kernel/firmware you're running,
> uname -a
> ethtool -i ethx
> lspci -vvv -s < your pci bus:dev.fn>

We are ok to update to the latest 710 firmware and we follow the kernel
releases closely.

As we haven't had problems related to firmware, we still have many 710s
in the field that are on 6.01 firmware. Below are dumps from a couple
of our test boxes where I have upgraded the firmware.

-----

root@lab-5000 ~# /sbin/ethtool -i enp2s0f2
driver: i40e
version: 5.9.9-200.fc33.x86_64
firmware-version: 7.20 0x80007a01 0.0.0
expansion-rom-version: 
bus-info: 0000:02:00.2
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
root@lab-5000 ~# lspci -vvv -s 0000:02:00.2
02:00.2 Ethernet controller: Intel Corporation Ethernet Controller X710
for 10GbE SFP+ (rev 02)
	Subsystem: Intel Corporation Ethernet Converged Network
Adapter X710
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR- FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 17
	Region 0: Memory at dd000000 (64-bit, prefetchable) [size=8M]
	Region 3: Memory at de808000 (64-bit, prefetchable) [size=32K]
	Expansion ROM at df880000 [disabled] [size=512K]
	Capabilities: [40] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-
,D2-,D3hot+,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
		Address: 0000000000000000  Data: 0000
		Masking: 00000000  Pending: 00000000
	Capabilities: [70] MSI-X: Enable+ Count=129 Masked-
		Vector table: BAR=3 offset=00000000
		PBA: BAR=3 offset=00001000
	Capabilities: [a0] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 2048 bytes, PhantFunc 0,
Latency L0s <512ns, L1 <64us
			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+
FLReset+ SlotPowerLimit 0.000W
		DevCtl:	CorrErr+ NonFatalErr+ FatalErr+
UnsupReq+
			RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop-
FLReset-
			MaxPayload 256 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr+ NonFatalErr- FatalErr-
UnsupReq+ AuxPwr- TransPend-
		LnkCap:	Port #0, Speed 8GT/s, Width x8, ASPM
L1, Exit Latency L1 <16us
			ClockPM- Surprise- LLActRep- BwNot-
ASPMOptComp+
		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled-
CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 8GT/s (ok), Width x8 (ok)
			TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
NROPrPrP- LTR-
			 10BitTagComp- 10BitTagReq- OBFF Not
Supported, ExtFmt- EETLPPrefix-
			 EmergencyPowerReduction Not Supported,
EmergencyPowerReductionInit-
			 FRS- TPHComp- ExtTPHComp-
			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LTR- OBFF Disabled,
			 AtomicOpsCtl: ReqEn-
		LnkSta2: Current De-emphasis Level: -3.5dB,
EqualizationComplete- EqualizationPhase1-
			 EqualizationPhase2- EqualizationPhase3-
LinkEqualizationRequest-
			 Retimer- 2Retimers- CrosslinkRes: unsupported
	Capabilities: [100 v2] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt+
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO-
CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout-
AdvNonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout-
AdvNonFatalErr+
		AERCap:	First Error Pointer: 00, ECRCGenCap+
ECRCGenEn- ECRCChkCap+ ECRCChkEn-
			MultHdrRecCap- MultHdrRecEn- TLPPfxPres-
HdrLogCap-
		HeaderLog: 00000000 00000000 00000000 00000000
	Capabilities: [140 v1] Device Serial Number 0c-1e-78-ff-ff-0b-
90-00
	Capabilities: [150 v1] Alternative Routing-ID Interpretation
(ARI)
		ARICap:	MFVC- ACS-, Next Function: 3
		ARICtl:	MFVC- ACS-, Function Group: 0
	Capabilities: [160 v1] Single Root I/O Virtualization (SR-IOV)
		IOVCap:	Migration-, Interrupt Message Number:
000
		IOVCtl:	Enable- Migration- Interrupt- MSE-
ARIHierarchy-
		IOVSta:	Migration-
		Initial VFs: 32, Total VFs: 32, Number of VFs: 0,
Function Dependency Link: 02
		VF offset: 334, stride: 1, Device ID: 154c
		Supported Page Size: 00000553, System Page Size:
00000001
		Region 0: Memory at 0000000000000000 (64-bit,
prefetchable)
		Region 3: Memory at 0000000000000000 (64-bit,
prefetchable)
		VF Migration: offset: 00000000, BIR: 0
	Capabilities: [1a0 v1] Transaction Processing Hints
		Device specific mode supported
		No steering table available
	Capabilities: [1b0 v1] Access Control Services
		ACSCap:	SrcValid- TransBlk- ReqRedir-
CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
		ACSCtl:	SrcValid- TransBlk- ReqRedir-
CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
	Kernel driver in use: i40e
	Kernel modules: i40e

------

[root@lab20k ~]# /sbin/ethtool -i enp23s0f0
driver: i40e
version: 5.10.13-200.fc33.x86_64
firmware-version: 8.10 0x8000940b 0.0.0
expansion-rom-version: 
bus-info: 0000:17:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes
[root@lab20k ~]# lspci -vvv -s 0000:17:00.0
17:00.0 Ethernet controller: Intel Corporation Ethernet Controller
XL710 for 40GbE QSFP+ (rev 02)
	Subsystem: Intel Corporation Ethernet Converged Network
Adapter XL710-Q2
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop-
ParErr- Stepping- SERR+ FastB2B- DisINTx+
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0, Cache Line Size: 32 bytes
	Interrupt: pin A routed to IRQ 40
	NUMA node: 0
	IOMMU group: 38
	Region 0: Memory at c4800000 (64-bit, prefetchable) [size=8M]
	Region 3: Memory at c5808000 (64-bit, prefetchable) [size=32K]
	Expansion ROM at c5e80000 [disabled] [size=512K]
	Capabilities: [40] Power Management version 3
		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-
,D2-,D3hot+,D3cold+)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
		Address: 0000000000000000  Data: 0000
		Masking: 00000000  Pending: 00000000
	Capabilities: [70] MSI-X: Enable+ Count=129 Masked-
		Vector table: BAR=3 offset=00000000
		PBA: BAR=3 offset=00001000
	Capabilities: [a0] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 2048 bytes, PhantFunc 0,
Latency L0s <512ns, L1 <64us
			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+
FLReset+ SlotPowerLimit 0.000W
		DevCtl:	CorrErr- NonFatalErr- FatalErr-
UnsupReq-
			RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop-
FLReset-
			MaxPayload 256 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr+ NonFatalErr- FatalErr-
UnsupReq+ AuxPwr- TransPend+
		LnkCap:	Port #0, Speed 8GT/s, Width x8, ASPM
L1, Exit Latency L1 <16us
			ClockPM- Surprise- LLActRep- BwNot-
ASPMOptComp+
		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled-
CommClk+
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 8GT/s (ok), Width x8 (ok)
			TrErr- Train- SlotClk+ DLActive- BWMgmt-
ABWMgmt-
		DevCap2: Completion Timeout: Range ABCD, TimeoutDis+
NROPrPrP- LTR-
			 10BitTagComp- 10BitTagReq- OBFF Not
Supported, ExtFmt- EETLPPrefix-
			 EmergencyPowerReduction Not Supported,
EmergencyPowerReductionInit-
			 FRS- TPHComp- ExtTPHComp-
			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-
LTR- OBFF Disabled,
			 AtomicOpsCtl: ReqEn-
		LnkCap2: Supported Link Speeds: 2.5-8GT/s, Crosslink-
Retimer- 2Retimers- DRS-
		LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance-
SpeedDis-
			 Transmit Margin: Normal Operating Range,
EnterModifiedCompliance- ComplianceSOS-
			 Compliance De-emphasis: -6dB
		LnkSta2: Current De-emphasis Level: -6dB,
EqualizationComplete+ EqualizationPhase1+
			 EqualizationPhase2+ EqualizationPhase3+
LinkEqualizationRequest-
			 Retimer- 2Retimers- CrosslinkRes: unsupported
	Capabilities: [100 v2] Advanced Error Reporting
		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt+
UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
		UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO-
CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+ ECRC- UnsupReq- ACSViol-
		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout-
AdvNonFatalErr+
		CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout-
AdvNonFatalErr+
		AERCap:	First Error Pointer: 00, ECRCGenCap+
ECRCGenEn- ECRCChkCap+ ECRCChkEn-
			MultHdrRecCap- MultHdrRecEn- TLPPfxPres-
HdrLogCap-
		HeaderLog: 00000000 00000000 00000000 00000000
	Capabilities: [140 v1] Device Serial Number 8b-71-5c-ff-ff-0b-
90-00
	Capabilities: [150 v1] Alternative Routing-ID Interpretation
(ARI)
		ARICap:	MFVC- ACS-, Next Function: 1
		ARICtl:	MFVC- ACS-, Function Group: 0
	Capabilities: [160 v1] Single Root I/O Virtualization (SR-IOV)
		IOVCap:	Migration-, Interrupt Message Number:
000
		IOVCtl:	Enable- Migration- Interrupt- MSE-
ARIHierarchy+
		IOVSta:	Migration-
		Initial VFs: 64, Total VFs: 64, Number of VFs: 0,
Function Dependency Link: 00
		VF offset: 16, stride: 1, Device ID: 154c
		Supported Page Size: 00000553, System Page Size:
00000001
		Region 0: Memory at 00000000c5400000 (64-bit,
prefetchable)
		Region 3: Memory at 00000000c5910000 (64-bit,
prefetchable)
		VF Migration: offset: 00000000, BIR: 0
	Capabilities: [1a0 v1] Transaction Processing Hints
		Device specific mode supported
		No steering table available
	Capabilities: [1b0 v1] Access Control Services
		ACSCap:	SrcValid- TransBlk- ReqRedir-
CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
		ACSCtl:	SrcValid- TransBlk- ReqRedir-
CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
	Capabilities: [1d0 v1] Secondary PCI Express
		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
		LaneErrStat: 0
	Kernel driver in use: i40e
	Kernel modules: i40e



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
