Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0B160108C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Oct 2022 15:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8851B416CC;
	Mon, 17 Oct 2022 13:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8851B416CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666014818;
	bh=pVML5PG2k5bDhgjyHtxkpJKDKjIF47wPa8mW5sJLHuM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ul4eZZRwo6aFhCSQOqVriBqT9gPc4H7/l47S7PPJ2m/s/Bmn1b7W0LsRtVxOIHTVo
	 RHfQeEAEcgjdOYAujQms2SY8a2Khq3uzTUFNCiwJYRF8WFaVFU1nXegkBGf6GM5/DH
	 pzR1KTwgp0qqPVs6PRxQGJdLT4yMC9VX9yxMrAe2HB2k9TWOEPX9IK5ElTiTZRMyeu
	 eFYpBhgZtBmlmJnOnADxUktIOcHqhf4wIiGarhT0FEBp/4fSpBHAvc4kauQ14OfQli
	 v30LyPV2AiBw8YNo3gUvK9Osaw+K4sC15LFharSpZvtF3Ve2eL4AncECNNim1YlHt8
	 qJJq3kdJtyuPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XsI_FgMssa7; Mon, 17 Oct 2022 13:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7036A40936;
	Mon, 17 Oct 2022 13:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7036A40936
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D3F21BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Oct 2022 12:20:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47A7240323
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Oct 2022 12:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47A7240323
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R7aHf5uQ7KEH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Oct 2022 12:20:13 +0000 (UTC)
X-Greylist: delayed 00:06:27 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89215401C2
Received: from ofcsgdbm.dwd.de (ofcsgdbm.dwd.de [141.38.3.245])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89215401C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Oct 2022 12:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ofcsg2dn1.dwd.de (Postfix) with ESMTP id 4MqMc60bqlz1xKR
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Oct 2022 12:13:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at csg.dwd.de
Received: from ofcsg2cteh1.dwd.de ([172.30.232.65])
 by localhost (ofcsg2dn1.dwd.de [172.30.232.24]) (amavisd-new, port 10024)
 with ESMTP id anxfX8QicHcB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
Received: from ofcsg2cteh1.dwd.de (unknown [127.0.0.1])
 by DDEI (Postfix) with ESMTP id D7E4DC900F0E
 for <root@ofcsg2dn1.dwd.de>; Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
Received: from ofcsg2cteh1.dwd.de (unknown [127.0.0.1])
 by DDEI (Postfix) with ESMTP id CB8BFC900F09
 for <root@ofcsg2dn1.dwd.de>; Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
X-DDEI-TLS-USAGE: Unused
Received: from ofcsgdbm.dwd.de (unknown [172.30.232.24])
 by ofcsg2cteh1.dwd.de (Postfix) with ESMTP
 for <root@ofcsg2dn1.dwd.de>; Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
Received: from ofcsgdbm.dwd.de by localhost (Postfix XFORWARD proxy);
 Sat, 15 Oct 2022 12:13:41 -0000
Received: from ofcsg2dvf2.dwd.de (ofcsg2dvf2.dwd.de [172.30.232.11])
 by ofcsg2dn1.dwd.de (Postfix) with ESMTPS id 4MqMc55WVwz1xKR
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
Received: from ofmailhub.dwd.de (ofldap.dwd.de [141.38.39.196])
 by ofcsg2dvf2.dwd.de  with ESMTP id 29FCDfc7031693-29FCDfc8031693;
 Sat, 15 Oct 2022 12:13:41 GMT
Received: from praktifix.dwd.de (praktifix.dwd.de [141.38.44.46])
 by ofmailhub.dwd.de (Postfix) with ESMTP id 7BCA0E25F1;
 Sat, 15 Oct 2022 12:13:41 +0000 (UTC)
Date: Sat, 15 Oct 2022 12:13:41 +0000 (GMT)
From: Holger Kiehl <Holger.Kiehl@dwd.de>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <ea05a9d-b8b8-216f-d99-9b794f19f2cf@praktifix.dwd.de>
MIME-Version: 1.0
X-FE-Last-Public-Client-IP: 141.38.39.196
X-FE-Policy-ID: 2:2:1:SYSTEM
X-TMASE-Version: DDEI-5.1-9.0.1002-27202.007
X-TMASE-Result: 10--24.824500-10.000000
X-TMASE-MatchedRID: YjqSxrX+l3Iqc9ul+Xl+76zGfgakLdjamZiw53dqSN/7fZJfDdCIXIHQ
 9Kct9aq8FFgbK/N4lN1i3n4ncgiU3raaK/A0riJAL9PWvrwT+Nb1q+x7zkhJWj3jhzzlBjmIfux
 gplZyxPWrdRXqI7myoH5meJa7guBS0lV5J+1nPDV1e7Xbb6Im2lgv+2jH1dCRtU0lCTMMyfBiY4
 PRl594rYHA6IBd3vQs3wxn7Vlsd+Z5BTB1IjcvAp13aYUE0ivyuJpeHGRhXLGZLRO16GOkkit64
 qbZa45+jiY8zO68gjmKiPY+pyEfReUgeblHhHsa2h1P6TA0pBtZDdHiTk9OcNkY+KIbxMxzszWb
 bhESzfdl6wrOTE1+QG0+CMNUhL8lvtK9mMOzEE4Zca7SN08UZMjjOhIFKSRyVpE+/BjC+jD9lXz
 FM91ErdbJbu0xXgB5CCfd2Lz11s4sm617PZ0pZ+LzNWBegCW28V63bO1QMncLbigRnpKlKTpcQT
 tiHDgWlExlQIQeRG0=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
X-TMASE-INERTIA: 0-0;;;;
X-DDEI-PROCESSED-RESULT: Safe
X-Mailman-Approved-At: Mon, 17 Oct 2022 13:53:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=dwd.de; h=
 content-type:content-type:mime-version:message-id:subject
 :subject:from:from:date:date:received:received:received:received
 :received:received:received:received; s=dwd-csg20210107; t=
 1665836021; x=1667045622; bh=rbnkaQ34ZXsuiWCbvvrp/v0MWHx+Ep2AOKS
 2c6cbgww=; b=JY7QQ2X8SFenDnMsDCKl1ui3Myae8g7tIE4RcaovpdPMtFKrSFR
 IxoEC4Zj0vLTdxlSgFb0SGkJ/CKVqOUHa8s4lKqWHTs6i/hAJHpdTpgC8Kei5Ott
 BBNX7YDj1ffNPD41o+fOW8Gbbo4UCiTAMn1iJGMys8ypvz9eHrj+17e3cb+TG0yj
 KMG10eUzdP/HJkIO6zGopjmlbIZXQksrf89g4etDH2FHlKmOl47xSeuc8iqZxmOD
 4wuqxnf6xuy8Obn4qup92s9Ut8bnVA/GnzKAWzud6PPZYQc+TKC5NYcoz+LTYLvU
 NUqbhkpuuqPQJyPtKcMhOvKqYfpTwjGnypw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=dwd.de header.i=@dwd.de header.a=rsa-sha256
 header.s=dwd-csg20210107 header.b=JY7QQ2X8
Subject: [Intel-wired-lan] ice driver not loading with 256 CPU's?
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

Hello,

I have an AMD system with 2 sockets (each with a EPYC 7763 64-Core)
with a total of 256 CPU's and a 4 port Intel 810 nic and get the
following error during boot:

Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: The DDP package was successfully loaded: ICE OS Default Package version 1.3.26.0
Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: not enough device MSI-X vectors. requested = 260, available = 252
Oct 15 10:53:35 hermes kernel: ice 0000:e2:00.1: ice_init_interrupt_scheme failed: -34
Oct 15 10:53:35 hermes kernel: ice: probe of 0000:e2:00.1 failed with error -5

Get this error when using default kernel from Alma9 or as above with
kernel.org 6.0.2 kernel. Looking at the code
(drivers/net/ethernet/intel/ice/ice_main.c ice_ena_msix_range() starting
at line 3928) I would assume if I had less CPU's this would not be a problem.

Any idea how I can get this working?

Thanks,
Holger


e2:00.0 Ethernet controller: Intel Corporation Ethernet Controller E810-C for SFP (rev 02)
 	Subsystem: Intel Corporation Ethernet 25G 4P E810-XXV Adapter
 	Control: I/O- Mem+ BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr+ Stepping- SERR+ FastB2B- DisINTx-
 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
 	Interrupt: pin A routed to IRQ 226
 	NUMA node: 1
 	IOMMU group: 136
 	Region 0: Memory at 4fea8000000 (64-bit, prefetchable) [size=32M]
 	Region 3: Memory at 4feaa030000 (64-bit, prefetchable) [size=64K]
 	Expansion ROM at b7100000 [disabled] [size=1M]
 	Capabilities: [40] Power Management version 3
 		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
 		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
 		Address: 0000000000000000  Data: 0000
 		Masking: 00000000  Pending: 00000000
 	Capabilities: [70] MSI-X: Enable- Count=512 Masked-
 		Vector table: BAR=3 offset=00000000
 		PBA: BAR=3 offset=00008000
 	Capabilities: [a0] Express (v2) Endpoint, MSI 00
 		DevCap:	MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
 			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0.000W
 		DevCtl:	CorrErr- NonFatalErr+ FatalErr+ UnsupReq+
 			RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop- FLReset-
 			MaxPayload 512 bytes, MaxReadReq 512 bytes
 		DevSta:	CorrErr+ NonFatalErr- FatalErr- UnsupReq+ AuxPwr+ TransPend-
 		LnkCap:	Port #0, Speed 16GT/s, Width x16, ASPM not supported
 			ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
 		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
 			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
 		LnkSta:	Speed 16GT/s (ok), Width x16 (ok)
 			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
 		DevCap2: Completion Timeout: Range AB, TimeoutDis+ NROPrPrP- LTR-
 			 10BitTagComp+ 10BitTagReq- OBFF Not Supported, ExtFmt+ EETLPPrefix+, MaxEETLPPrefixes 1
 			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
 			 FRS- TPHComp- ExtTPHComp-
 			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
 		DevCtl2: Completion Timeout: 65ms to 210ms, TimeoutDis- LTR- OBFF Disabled,
 			 AtomicOpsCtl: ReqEn-
 		LnkCap2: Supported Link Speeds: 2.5-16GT/s, Crosslink- Retimer+ 2Retimers+ DRS-
 		LnkCtl2: Target Link Speed: 16GT/s, EnterCompliance- SpeedDis-
 			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
 			 Compliance De-emphasis: -6dB
 		LnkSta2: Current De-emphasis Level: -3.5dB, EqualizationComplete+ EqualizationPhase1+
 			 EqualizationPhase2+ EqualizationPhase3+ LinkEqualizationRequest-
 			 Retimer- 2Retimers- CrosslinkRes: unsupported
 	Capabilities: [e0] Vital Product Data
 		Product Name: E810-XXV 25GbE Controller
 		Read-only fields:
 			[V0] Vendor specific: FFV20.5.13\x00
 			[PN] Part number: VK88G
 			[MN] Manufacture ID: 1028
 			[V1] Vendor specific: DSV1028VPDR.VER2.2
 			[V3] Vendor specific: DTINIC
 			[V4] Vendor specific: DCM1001FFFFFF2101FFFFFF3201FFFFFF4301FFFFFF
 			[V5] Vendor specific: NPY4
 			[V6] Vendor specific: PMTD
 			[V7] Vendor specific: NMVIntel Corp
 			[V8] Vendor specific: L1D0
 			[V9] Vendor specific: LNK164163
 			[RV] Reserved: checksum good, 2 byte(s) reserved
 		Read/write fields:
 			[Y0] System specific: CCF1
 		End
 	Capabilities: [100 v2] Advanced Error Reporting
 		UESta:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
 		UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt+ RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-
 		UESvrt:	DLP+ SDES- TLP+ FCP+ CmpltTO+ CmpltAbrt+ UnxCmplt- RxOF+ MalfTLP+ ECRC+ UnsupReq- ACSViol-
 		CESta:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
 		CEMsk:	RxErr+ BadTLP+ BadDLLP+ Rollover+ Timeout+ AdvNonFatalErr+
 		AERCap:	First Error Pointer: 00, ECRCGenCap+ ECRCGenEn+ ECRCChkCap+ ECRCChkEn+
 			MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
 		HeaderLog: 00000000 00000000 00000000 00000000
 	Capabilities: [148 v1] Alternative Routing-ID Interpretation (ARI)
 		ARICap:	MFVC- ACS-, Next Function: 1
 		ARICtl:	MFVC- ACS-, Function Group: 0
 	Capabilities: [150 v1] Device Serial Number 40-a6-b7-ff-ff-84-ef-ec
 	Capabilities: [160 v1] Single Root I/O Virtualization (SR-IOV)
 		IOVCap:	Migration-, Interrupt Message Number: 000
 		IOVCtl:	Enable- Migration- Interrupt- MSE- ARIHierarchy+
 		IOVSta:	Migration-
 		Initial VFs: 64, Total VFs: 64, Number of VFs: 0, Function Dependency Link: 00
 		VF offset: 8, stride: 1, Device ID: 1889
 		Supported Page Size: 00000553, System Page Size: 00000001
 		Region 0: Memory at 0000000000000000 (64-bit, prefetchable)
 		Region 3: Memory at 0000000000000000 (64-bit, prefetchable)
 		VF Migration: offset: 00000000, BIR: 0
 	Capabilities: [1a0 v1] Transaction Processing Hints
 		Device specific mode supported
 		No steering table available
 	Capabilities: [1b0 v1] Access Control Services
 		ACSCap:	SrcValid- TransBlk- ReqRedir- CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
 		ACSCtl:	SrcValid- TransBlk- ReqRedir- CmpltRedir- UpstreamFwd- EgressCtrl- DirectTrans-
 	Capabilities: [1d0 v1] Secondary PCI Express
 		LnkCtl3: LnkEquIntrruptEn- PerformEqu-
 		LaneErrStat: 0
 	Capabilities: [200 v1] Data Link Feature <?>
 	Capabilities: [210 v1] Physical Layer 16.0 GT/s <?>
 	Capabilities: [250 v1] Lane Margining at the Receiver <?>
 	Kernel modules: ice
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
