Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BF765240D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Dec 2022 17:01:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8005341712;
	Tue, 20 Dec 2022 16:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8005341712
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671552105;
	bh=fXzmQhA+BzFXA5ROlECR4d0jYIgZis0T+CnEOol5zS8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VpeJ4xAr8ycHIqXyW5JIyVaO/yhvx6UQ/oK4iEQ7/F2ZjX5ft43zy4lokP/cqVKwV
	 mkGJjAPxHeIZusno09rCFoqrBDOszPDixqt2KwZOsbzai4hcaoJ3yIG9KyxokoWlrn
	 LNHLTbxnG4R5hBFpqR2K0IhhJUEnnMrOCkisAM2ZsJZZwSEwbfC1S/jD6vT7c2bh0n
	 tPtFGvXnPOufi2bybfm3dblDuwA4zcrJtxL9QD959CYeU06HqAjp1ciCWLUHFBah+E
	 jt3DGaTBDtHXZO8U1WZBVqx4KnIeNp2Fas3tGFVQ6wW/8v1/4tZTuJfTR64kXummYu
	 PdL0wscs+cdgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8e802GOroNFG; Tue, 20 Dec 2022 16:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF793408F2;
	Tue, 20 Dec 2022 16:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF793408F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B0821BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 114604014B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 114604014B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kM2x9UN7cFO9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 23:08:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0C4640127
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com
 [IPv6:2607:f8b0:4864:20::92b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B0C4640127
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 23:08:28 +0000 (UTC)
Received: by mail-ua1-x92b.google.com with SMTP id x24so2460664uaf.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:08:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hcTQ4TkOYum5PEQzkc2serfsBQls6QOYe2I9y5zMfdk=;
 b=BrGOsUqQp3kdfKkA3Az0wr1/dAIyVENK13vl+8MDs52SW44uY3k9qEKR8+GbMQgTj+
 oHrnIFqKu7x/bX3AXtrcZsJsDXdEhD98wQN3Q2270FpvPhIT9l6rWkqZeRqMdQa+grfu
 L+1Gjk05fQbPYSu+N9l0Jyu6uIWwH1CB+7qCdCTazIThuUGBB8+LVNkILNfdSnWEamOl
 theJg7tg3AdC4wIaAsv0PVOb0SxVhobh89upTAvE20MLhaspEzvvTINElTs9lriLfM5S
 Ti9n0Na/Uyth73ZrtFz0wszkvbn6cTZksFxAPoFPfyrcB/Wq2uW5Dui0LWDH45dZU/85
 fcZA==
X-Gm-Message-State: ANoB5plkgnCVETmW83DDXJ7MqUnXd4qo5N9x3yZnxoqsCSlbQ9J3fOP6
 vcrmqIM4gK3em7BCJ2qcsbBpiVj71edOmaDRQAs=
X-Google-Smtp-Source: AA0mqf4aClgt4mKiPag915mDek25tA06b8BuinaQscywS0Xd1bSYY4ac8iftUGjv8laTO0q005cA/McbZ1jG3o0yAkw=
X-Received: by 2002:ab0:30b9:0:b0:419:c304:803a with SMTP id
 b25-20020ab030b9000000b00419c304803amr14001852uam.15.1671491307405; Mon, 19
 Dec 2022 15:08:27 -0800 (PST)
MIME-Version: 1.0
References: <CACsaVZL6ykbsVvEaV2Cv3r6m_jKt04MEUOw5=mSnR5AYTyE7qg@mail.gmail.com>
 <a752422c-4630-e53d-c9cd-cc9ed866f853@intel.com>
In-Reply-To: <a752422c-4630-e53d-c9cd-cc9ed866f853@intel.com>
From: Kyle Sanderson <kyle.leet@gmail.com>
Date: Mon, 19 Dec 2022 16:08:13 -0700
Message-ID: <CACsaVZ+HtNk9ZXPBQz9NBzx14vv4ADW_-RZKG5HBj19qjtYh9g@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Tue, 20 Dec 2022 16:01:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=hcTQ4TkOYum5PEQzkc2serfsBQls6QOYe2I9y5zMfdk=;
 b=n7hHxXGyZhK/iDiXrCgf5J4tkuxmC+V3PSPpdj/3O57JyQr5PDm5f86qxOHu7OPD/a
 PmNOy69Xh97Bnw88uavdBoCw5joPrQ/LR0d8JwxyH99KD6vRakQD94qaxahX4gZgXsJc
 VTzoivIvfCTNWG6cpCwGtDXMQu2XGZppeQ1kZDyM8WIMoXHUOkGH+oCucKFiZ0A+xM43
 LAGYC57mXewAk+QLeoSQeAnq1vgX46Ovw+2iiPTG/bXxCMd3pY4EZt9Bv154awi4LP1x
 8kaUciW6hiohCt925gyQimLaoahnb83as0rOzkbeJ5i3eilVrm9dT9B80hDhNalu086P
 HwZg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=n7hHxXGy
Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at 0xffffffff813ce19f
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
Cc: netdev@vger.kernel.org, Linux-Kernal <linux-kernel@vger.kernel.org>,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, "Avivi,
 Amir" <amir.avivi@intel.com>
Content-Type: multipart/mixed; boundary="===============6799551782860676262=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============6799551782860676262==
Content-Type: multipart/alternative; boundary="0000000000009f85e705f0366530"

--0000000000009f85e705f0366530
Content-Type: text/plain; charset="UTF-8"

> On Sun, 18 Dec 2022, 23:31 Neftin, Sasha wrote:
> What is a board in use (LAN on board or NIC)?
> What is lspci, lspci -t and lspci -s 0000:[lan bus:device.function] -vvv
output?

It's embedded on the board, could very well be on a bridge though as a
card. The box has 6 ports, 2 were in-use while testing.

00:00.0 Host bridge: Intel Corporation Device 4522 (rev 01)
00:02.0 VGA compatible controller: Intel Corporation Elkhart Lake [UHD
Graphics Gen11 16EU] (rev 01)
00:08.0 System peripheral: Intel Corporation Device 4511 (rev 01)
00:14.0 USB controller: Intel Corporation Device 4b7d (rev 11)
00:14.2 RAM memory: Intel Corporation Device 4b7f (rev 11)
00:16.0 Communication controller: Intel Corporation Device 4b70 (rev 11)
00:17.0 SATA controller: Intel Corporation Device 4b63 (rev 11)
00:1c.0 PCI bridge: Intel Corporation Device 4b38 (rev 11)
00:1c.1 PCI bridge: Intel Corporation Device 4b39 (rev 11)
00:1c.2 PCI bridge: Intel Corporation Device 4b3a (rev 11)
00:1c.3 PCI bridge: Intel Corporation Device 4b3b (rev 11)
00:1c.4 PCI bridge: Intel Corporation Device 4b3c (rev 11)
00:1c.6 PCI bridge: Intel Corporation Device 4b3e (rev 11)
00:1f.0 ISA bridge: Intel Corporation Device 4b00 (rev 11)
00:1f.3 Audio device: Intel Corporation Device 4b58 (rev 11)
00:1f.4 SMBus: Intel Corporation Device 4b23 (rev 11)
00:1f.5 Serial bus controller: Intel Corporation Device 4b24 (rev 11)
01:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
02:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
03:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
04:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
05:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
06:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)

-[0000:00]-+-00.0
           +-02.0
           +-08.0
           +-14.0
           +-14.2
           +-16.0
           +-17.0
           +-1c.0-[01]----00.0
           +-1c.1-[02]----00.0
           +-1c.2-[03]----00.0
           +-1c.3-[04]----00.0
           +-1c.4-[05]----00.0
           +-1c.6-[06]----00.0
           +-1f.0
           +-1f.3
           +-1f.4
           \-1f.5


01:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)
 Subsystem: Intel Corporation Device 0000
 Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort-
<MAbort- >SERR- <PERR- INTx-
 Latency: 0
 Interrupt: pin A routed to IRQ 16
 Region 0: Memory at 80600000 (32-bit, non-prefetchable) [size=1M]
 Region 3: Memory at 80700000 (32-bit, non-prefetchable) [size=16K]
 Capabilities: [40] Power Management version 3
  Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
  Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
 Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
  Address: 0000000000000000 Data: 0000
  Masking: 00000000 Pending: 00000000
 Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
  Vector table: BAR=3 offset=00000000
  PBA: BAR=3 offset=00002000
 Capabilities: [a0] Express (v2) Endpoint, MSI 00
  DevCap: MaxPayload 512 bytes, PhantFunc 0, Latency L0s <512ns, L1 <64us
   ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+ SlotPowerLimit 0W
  DevCtl: CorrErr+ NonFatalErr+ FatalErr+ UnsupReq+
   RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-
   MaxPayload 128 bytes, MaxReadReq 512 bytes
  DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
  LnkCap: Port #0, Speed 5GT/s, Width x1, ASPM L1, Exit Latency L1 <4us
   ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp+
  LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled- CommClk+
   ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
  LnkSta: Speed 5GT/s, Width x1
   TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
  DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPrPrP- LTR+
    10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
    EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
    FRS- TPHComp- ExtTPHComp-
    AtomicOpsCap: 32bit- 64bit- 128bitCAS-
  DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR+ 10BitTagReq-
OBFF Disabled,
    AtomicOpsCtl: ReqEn-
  LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
    Transmit Margin: Normal Operating Range, EnterModifiedCompliance-
ComplianceSOS-
    Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
  LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-
EqualizationPhase1-
    EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
    Retimer- 2Retimers- CrosslinkRes: unsupported
 Capabilities: [100 v2] Advanced Error Reporting
  UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
  UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP-
ECRC- UnsupReq- ACSViol-
  UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ MalfTLP+
ECRC- UnsupReq- ACSViol-
  CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
  CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
  AERCap: First Error Pointer: 00, ECRCGenCap+ ECRCGenEn- ECRCChkCap+
ECRCChkEn-
   MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
  HeaderLog: 00000000 00000000 00000000 00000000
 Capabilities: [140 v1] Device Serial Number e4-3a-6e-ff-ff-5d-bb-54
 Capabilities: [1c0 v1] Latency Tolerance Reporting
  Max snoop latency: 3145728ns
  Max no snoop latency: 3145728ns
 Capabilities: [1f0 v1] Precision Time Measurement
  PTMCap: Requester:+ Responder:- Root:-
  PTMClockGranularity: 4ns
  PTMControl: Enabled:- RootSelected:-
  PTMEffectiveGranularity: Unknown
 Capabilities: [1e0 v1] L1 PM Substates
  L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
     PortCommonModeRestoreTime=55us PortTPowerOnTime=70us
  L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-
      T_CommonMode=0us LTR1.2_Threshold=81920ns
  L1SubCtl2: T_PwrOn=50us
 Kernel driver in use: igc
 Kernel modules: igc


On Sun, 18 Dec 2022, 23:31 Neftin, Sasha, <sasha.neftin@intel.com> wrote:

> On 12/16/2022 00:28, Kyle Sanderson wrote:
> > (Un)fortunately I can reproduce this bug by simply removing the
> > ethernet cable from the box while there is traffic flowing. kprint
> > below from a console line. Please CC / to me for any additional
> > information I can provide for this panic.
> What is a board in use (LAN on board or NIC)? What is lspci, lspci -t
> and lspci -s 0000:[lan bus:device.function] -vvv output?
> >
> > [  156.707054] igc 0000:01:00.0 eth0: NIC Link is Down
> > [  156.712981] br-lan: port 1(eth0) entered disabled state
> > [  156.719246] igc 0000:01:00.0 eth0: Register Dump
> > [  156.724784] igc 0000:01:00.0 eth0: Register Name   Value
> > [  156.731067] igc 0000:01:00.0 eth0: CTRL            181c0641
> > [  156.737607] igc 0000:01:00.0 eth0: STATUS          00380681
> > [  156.744133] igc 0000:01:00.0 eth0: CTRL_EXT        100000c0
> > [  156.750759] igc 0000:01:00.0 eth0: MDIC            18017949
> > [  156.757258] igc 0000:01:00.0 eth0: ICR             00000001
> > [  156.763785] igc 0000:01:00.0 eth0: RCTL            0440803a
> > [  156.770324] igc 0000:01:00.0 eth0: RDLEN[0-3]      00001000
> > 00001000 00001000 00001000
> > [  156.779457] igc 0000:01:00.0 eth0: RDH[0-3]        000000ef
> > 000000a1 00000092 000000ba
> > [  156.788500] igc 0000:01:00.0 eth0: RDT[0-3]        000000ee
> > 000000a0 00000091 000000b9
> > [  156.797650] igc 0000:01:00.0 eth0: RXDCTL[0-3]     02040808
> > 02040808 02040808 02040808
> > [  156.806688] igc 0000:01:00.0 eth0: RDBAL[0-3]      02f43000
> > 02180000 02e7f000 02278000
> > [  156.815781] igc 0000:01:00.0 eth0: RDBAH[0-3]      00000001
> > 00000001 00000001 00000001
> > [  156.824928] igc 0000:01:00.0 eth0: TCTL            a503f0fa
> > [  156.831587] igc 0000:01:00.0 eth0: TDBAL[0-3]      02f43000
> > 02180000 02e7f000 02278000
> > [  156.840637] igc 0000:01:00.0 eth0: TDBAH[0-3]      00000001
> > 00000001 00000001 00000001
> > [  156.849753] igc 0000:01:00.0 eth0: TDLEN[0-3]      00001000
> > 00001000 00001000 00001000
> > [  156.858760] igc 0000:01:00.0 eth0: TDH[0-3]        000000d4
> > 0000003d 000000af 0000002a
> > [  156.867771] igc 0000:01:00.0 eth0: TDT[0-3]        000000e4
> > 0000005a 000000c8 0000002a
> > [  156.876864] igc 0000:01:00.0 eth0: TXDCTL[0-3]     02100108
> > 02100108 02100108 02100108
> > [  156.885905] igc 0000:01:00.0 eth0: Reset adapter
> > [  160.307195] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: RX/TX
> > [  160.317974] br-lan: port 1(eth0) entered blocking state
> > [  160.324532] br-lan: port 1(eth0) entered forwarding state
> > [  161.197263] ------------[ cut here ]------------
> > [  161.202669] Kernel BUG at 0xffffffff813ce19f [verbose debug info
> unavailable]
> > [  161.210769] invalid opcode: 0000 [#1] SMP NOPTI
> > [  161.216022] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.10.146 #0
> > [  161.222980] Hardware name: Default string Default string/Default
> > string, BIOS 5.19 09/23/2022
> > [  161.232546] RIP: 0010:0xffffffff813ce19f
> > [  161.237167] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> > c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10
> > ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48 ca eb
> > 80 cc
> > [  161.258651] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283
> > [  161.264736] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX:
> 000000000000050e
> > [  161.272837] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI:
> 0000000000061a10
> > [  161.280942] RBP: ffffc90000118ef8 R08: 0000000000000000 R09:
> 0000000000061502
> > [  161.289089] R10: 0000000000000000 R11: 0000000000000000 R12:
> 00000000ffffff3f
> > [  161.297229] R13: ffff888101f8f140 R14: 0000000000000000 R15:
> ffff888100ad9b00
> > [  161.305345] FS:  0000000000000000(0000) GS:ffff88903fe80000(0000)
> > knlGS:00000 00000000000
> > [  161.314492] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [  161.321139] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4:
> 0000000000350ee0
> > [  161.329284] Call Trace:
> > [  161.332373]  <IRQ>
> > [  161.334981]  ? 0xffffffffa0185f78 [igc@00000000f400031b+0x13000]
> > [  161.341949]  0xffffffff8185b047
> > [  161.345797]  0xffffffff8185b2ca
> > [  161.349637]  0xffffffff81e000bb
> > [  161.353465]  0xffffffff81c0109f
> > [  161.357304]  </IRQ>
> > [  161.359988]  0xffffffff8102cdac
> > [  161.363783]  0xffffffff810bfdaf
> > [  161.367584]  0xffffffff81a2e616
> > [  161.371374]  0xffffffff81c00c9e
> > [  161.375192] RIP: 0010:0xffffffff817e331b
> > [  161.379840] Code: 21 90 ff 65 8b 3d 45 23 83 7e e8 80 20 90 ff 31
> > ff 49 89 c6 e8 26 2d 90 ff 80 7d d7 00 0f 85 9e 01 00 00 fb 66 0f 1f
> > 44 00 00 <45> 85 ff 0f 88 cf 00 00 00 49 63 cf 48 8d 04 49 48 8d 14 81
> > 48 c1
> > [  161.401397] RSP: 0018:ffffc900000d3e80 EFLAGS: 00000246
> > [  161.407493] RAX: ffff88903fea5180 RBX: ffff88903feadf00 RCX:
> 000000000000001f
> > [  161.415648] RDX: 0000000000000000 RSI: 0000000046ec0743 RDI:
> 0000000000000000
> > [  161.423811] RBP: ffffc900000d3eb8 R08: 00000025881a3b81 R09:
> ffff888100317340
> > [  161.432003] R10: 0000000000000001 R11: 0000000000000000 R12:
> 0000000000000003
> > [  161.440154] R13: ffffffff824c7bc0 R14: 00000025881a3b81 R15:
> 0000000000000003
> > [  161.448285]  0xffffffff817e357f
> > [  161.452123]  0xffffffff810e6258
> > [  161.455938]  0xffffffff810e63fb
> > [  161.459746]  0xffffffff8104bec0
> > [  161.463526]  0xffffffff810000f5
> > [  161.467290] Modules linked in: pppoe ppp_async nft_fib_inet
> > nf_flow_table_ipv 6 nf_flow_table_ipv4 nf_flow_table_inet wireguard
> > pppox ppp_generic nft_reject_i pv6 nft_reject_ipv4 nft_reject_inet
> > nft_reject nft_redir nft_quota nft_objref nf t_numgen nft_nat nft_masq
> > nft_log nft_limit nft_hash nft_flow_offload nft_fib_ip v6 nft_fib_ipv4
> > nft_fib nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flo
> > w_table nf_conntrack libchacha20poly1305 curve25519_x86_64
> > chacha_x86_64 slhc r8 169 poly1305_x86_64 nfnetlink nf_reject_ipv6
> > nf_reject_ipv4 nf_log_ipv6 nf_log_i pv4 nf_log_common nf_defrag_ipv6
> > nf_defrag_ipv4 libcurve25519_generic libcrc32c libchacha igc forcedeth
> > e1000e crc_ccitt bnx2 i2c_dev ixgbe e1000 amd_xgbe ip6_u dp_tunnel
> > udp_tunnel mdio nls_utf8 ena kpp nls_iso8859_1 nls_cp437 vfat fat igb
> > button_hotplug tg3 ptp realtek pps_core mii
> > [  161.550507] ---[ end trace b1cb18ab2d1741bd ]---
> > [  161.555938] RIP: 0010:0xffffffff813ce19f
> > [  161.560634] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> > c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10
> > ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48 ca eb
> > 80 cc
> > [  161.582281] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283
> > [  161.588426] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX:
> 000000000000050e
> > [  161.596668] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI:
> 0000000000061a10
> > [  161.604860] RBP: ffffc90000118ef8 R08: 0000000000000000 R09:
> 0000000000061502
> > [  161.613052] R10: 0000000000000000 R11: 0000000000000000 R12:
> 00000000ffffff3f
> > [  161.621291] R13: ffff888101f8f140 R14: 0000000000000000 R15:
> ffff888100ad9b00
> > [  161.629505] FS:  0000000000000000(0000) GS:ffff88903fe80000(0000)
> > knlGS:00000 00000000000
> > [  161.638781] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [  161.645549] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4:
> 0000000000350ee0
> > [  161.653841] Kernel panic - not syncing: Fatal exception in interrupt
> > [  161.661287] Kernel Offset: disabled
> > [  161.665644] Rebooting in 3 seconds..
> > [  164.670313] ACPI MEMORY or I/O RESET_REG.
> >
> > Kyle.
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
>

--0000000000009f85e705f0366530
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">&gt; On Sun, 18 Dec 2022, 23:31 Neftin,=
 Sasha wrote:</div><div dir=3D"auto">&gt; What is a board in use (LAN on bo=
ard or NIC)?</div><div dir=3D"auto">&gt; What is lspci, lspci -t and lspci =
-s 0000:[lan bus:device.function] -vvv output?</div><div dir=3D"auto"><br><=
/div><div>It&#39;s embedded on the board, could very well be on a bridge th=
ough as a card. The box has 6 ports, 2 were in-use while testing.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">00:00.0 Host bridge: Intel Corpor=
ation Device 4522 (rev 01)</div><div dir=3D"auto">00:02.0 VGA compatible co=
ntroller: Intel Corporation Elkhart Lake [UHD Graphics Gen11 16EU] (rev 01)=
</div><div dir=3D"auto">00:08.0 System peripheral: Intel Corporation Device=
 4511 (rev 01)</div><div dir=3D"auto">00:14.0 USB controller: Intel Corpora=
tion Device 4b7d (rev 11)</div><div dir=3D"auto">00:14.2 RAM memory: Intel =
Corporation Device 4b7f (rev 11)</div><div dir=3D"auto">00:16.0 Communicati=
on controller: Intel Corporation Device 4b70 (rev 11)</div><div dir=3D"auto=
">00:17.0 SATA controller: Intel Corporation Device 4b63 (rev 11)</div><div=
 dir=3D"auto">00:1c.0 PCI bridge: Intel Corporation Device 4b38 (rev 11)</d=
iv><div dir=3D"auto">00:1c.1 PCI bridge: Intel Corporation Device 4b39 (rev=
 11)</div><div dir=3D"auto">00:1c.2 PCI bridge: Intel Corporation Device 4b=
3a (rev 11)</div><div dir=3D"auto">00:1c.3 PCI bridge: Intel Corporation De=
vice 4b3b (rev 11)</div><div dir=3D"auto">00:1c.4 PCI bridge: Intel Corpora=
tion Device 4b3c (rev 11)</div><div dir=3D"auto">00:1c.6 PCI bridge: Intel =
Corporation Device 4b3e (rev 11)</div><div dir=3D"auto">00:1f.0 ISA bridge:=
 Intel Corporation Device 4b00 (rev 11)</div><div dir=3D"auto">00:1f.3 Audi=
o device: Intel Corporation Device 4b58 (rev 11)</div><div dir=3D"auto">00:=
1f.4 SMBus: Intel Corporation Device 4b23 (rev 11)</div><div dir=3D"auto">0=
0:1f.5 Serial bus controller: Intel Corporation Device 4b24 (rev 11)</div><=
div dir=3D"auto">01:00.0 Ethernet controller: Intel Corporation Device 125c=
 (rev 04)</div><div dir=3D"auto">02:00.0 Ethernet controller: Intel Corpora=
tion Device 125c (rev 04)</div><div dir=3D"auto">03:00.0 Ethernet controlle=
r: Intel Corporation Device 125c (rev 04)</div><div dir=3D"auto">04:00.0 Et=
hernet controller: Intel Corporation Device 125c (rev 04)</div><div dir=3D"=
auto">05:00.0 Ethernet controller: Intel Corporation Device 125c (rev 04)</=
div><div dir=3D"auto">06:00.0 Ethernet controller: Intel Corporation Device=
 125c (rev 04)</div><div dir=3D"auto"><br></div><div dir=3D"auto">-[0000:00=
]-+-00.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-=
02.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-08.0=
</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-14.0</di=
v><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-14.2</div><d=
iv dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-16.0</div><div d=
ir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-17.0</div><div dir=
=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-1c.0-[01]----00.0</div=
><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-1c.1-[02]----=
00.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-1c.2=
-[03]----00.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0+-1c.3-[04]----00.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0+-1c.4-[05]----00.0</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0+-1c.6-[06]----00.0</div><div dir=3D"auto">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-1f.0</div><div dir=3D"auto">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0+-1f.3</div><div dir=3D"auto">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0+-1f.4</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0\-1f.5</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">01:00.0 Ethernet controller: Intel Corpo=
ration Device 125c (rev 04)</div><div dir=3D"auto">=C2=A0Subsystem: Intel C=
orporation Device 0000</div><div dir=3D"auto">=C2=A0Control: I/O- Mem+ BusM=
aster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisIN=
Tx+</div><div dir=3D"auto">=C2=A0Status: Cap+ 66MHz- UDF- FastB2B- ParErr- =
DEVSEL=3Dfast &gt;TAbort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-=
</div><div dir=3D"auto">=C2=A0Latency: 0</div><div dir=3D"auto">=C2=A0Inter=
rupt: pin A routed to IRQ 16</div><div dir=3D"auto">=C2=A0Region 0: Memory =
at 80600000 (32-bit, non-prefetchable) [size=3D1M]</div><div dir=3D"auto">=
=C2=A0Region 3: Memory at 80700000 (32-bit, non-prefetchable) [size=3D16K]<=
/div><div dir=3D"auto">=C2=A0Capabilities: [40] Power Management version 3<=
/div><div dir=3D"auto">=C2=A0 Flags: PMEClk- DSI+ D1- D2- AuxCurrent=3D0mA =
PME(D0+,D1-,D2-,D3hot+,D3cold+)</div><div dir=3D"auto">=C2=A0 Status: D0 No=
SoftRst+ PME-Enable- DSel=3D0 DScale=3D1 PME-</div><div dir=3D"auto">=C2=A0=
Capabilities: [50] MSI: Enable- Count=3D1/1 Maskable+ 64bit+</div><div dir=
=3D"auto">=C2=A0 Address: 0000000000000000  Data: 0000</div><div dir=3D"aut=
o">=C2=A0 Masking: 00000000  Pending: 00000000</div><div dir=3D"auto">=C2=
=A0Capabilities: [70] MSI-X: Enable+ Count=3D5 Masked-</div><div dir=3D"aut=
o">=C2=A0 Vector table: BAR=3D3 offset=3D00000000</div><div dir=3D"auto">=
=C2=A0 PBA: BAR=3D3 offset=3D00002000</div><div dir=3D"auto">=C2=A0Capabili=
ties: [a0] Express (v2) Endpoint, MSI 00</div><div dir=3D"auto">=C2=A0 DevC=
ap:	MaxPayload 512 bytes, PhantFunc 0, Latency L0s &lt;512ns, L1 &lt;64us</=
div><div dir=3D"auto">=C2=A0 =C2=A0ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ F=
LReset+ SlotPowerLimit 0W</div><div dir=3D"auto">=C2=A0 DevCtl:	CorrErr+ No=
nFatalErr+ FatalErr+ UnsupReq+</div><div dir=3D"auto">=C2=A0 =C2=A0RlxdOrd+=
 ExtTag- PhantFunc- AuxPwr- NoSnoop+ FLReset-</div><div dir=3D"auto">=C2=A0=
 =C2=A0MaxPayload 128 bytes, MaxReadReq 512 bytes</div><div dir=3D"auto">=
=C2=A0 DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-=
</div><div dir=3D"auto">=C2=A0 LnkCap:	Port #0, Speed 5GT/s, Width x1, ASPM=
 L1, Exit Latency L1 &lt;4us</div><div dir=3D"auto">=C2=A0 =C2=A0ClockPM- S=
urprise- LLActRep- BwNot- ASPMOptComp+</div><div dir=3D"auto">=C2=A0 LnkCtl=
:	ASPM Disabled; RCB 64 bytes, Disabled- CommClk+</div><div dir=3D"auto">=
=C2=A0 =C2=A0ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-</div><div dir=
=3D"auto">=C2=A0 LnkSta:	Speed 5GT/s, Width x1</div><div dir=3D"auto">=C2=
=A0 =C2=A0TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-</div><div dir=
=3D"auto">=C2=A0 DevCap2: Completion Timeout: Range ABCD, TimeoutDis+ NROPr=
PrP- LTR+</div><div dir=3D"auto">=C2=A0 =C2=A0 10BitTagComp- 10BitTagReq- O=
BFF Not Supported, ExtFmt- EETLPPrefix-</div><div dir=3D"auto">=C2=A0 =C2=
=A0 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-</di=
v><div dir=3D"auto">=C2=A0 =C2=A0 FRS- TPHComp- ExtTPHComp-</div><div dir=
=3D"auto">=C2=A0 =C2=A0 AtomicOpsCap: 32bit- 64bit- 128bitCAS-</div><div di=
r=3D"auto">=C2=A0 DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LT=
R+ 10BitTagReq- OBFF Disabled,</div><div dir=3D"auto">=C2=A0 =C2=A0 AtomicO=
psCtl: ReqEn-</div><div dir=3D"auto">=C2=A0 LnkCtl2: Target Link Speed: 5GT=
/s, EnterCompliance- SpeedDis-</div><div dir=3D"auto">=C2=A0 =C2=A0 Transmi=
t Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-</=
div><div dir=3D"auto">=C2=A0 =C2=A0 Compliance Preset/De-emphasis: -6dB de-=
emphasis, 0dB preshoot</div><div dir=3D"auto">=C2=A0 LnkSta2: Current De-em=
phasis Level: -6dB, EqualizationComplete- EqualizationPhase1-</div><div dir=
=3D"auto">=C2=A0 =C2=A0 EqualizationPhase2- EqualizationPhase3- LinkEqualiz=
ationRequest-</div><div dir=3D"auto">=C2=A0 =C2=A0 Retimer- 2Retimers- Cros=
slinkRes: unsupported</div><div dir=3D"auto">=C2=A0Capabilities: [100 v2] A=
dvanced Error Reporting</div><div dir=3D"auto">=C2=A0 UESta:	DLP- SDES- TLP=
- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol=
-</div><div dir=3D"auto">=C2=A0 UEMsk:	DLP- SDES- TLP- FCP- CmpltTO- CmpltA=
brt- UnxCmplt- RxOF- MalfTLP- ECRC- UnsupReq- ACSViol-</div><div dir=3D"aut=
o">=C2=A0 UESvrt:	DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+ =
MalfTLP+ ECRC- UnsupReq- ACSViol-</div><div dir=3D"auto">=C2=A0 CESta:	RxEr=
r- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-</div><div dir=3D"aut=
o">=C2=A0 CEMsk:	RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+=
</div><div dir=3D"auto">=C2=A0 AERCap:	First Error Pointer: 00, ECRCGenCap+=
 ECRCGenEn- ECRCChkCap+ ECRCChkEn-</div><div dir=3D"auto">=C2=A0 =C2=A0Mult=
HdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-</div><div dir=3D"auto">=C2=
=A0 HeaderLog: 00000000 00000000 00000000 00000000</div><div dir=3D"auto">=
=C2=A0Capabilities: [140 v1] Device Serial Number e4-3a-6e-ff-ff-5d-bb-54</=
div><div dir=3D"auto">=C2=A0Capabilities: [1c0 v1] Latency Tolerance Report=
ing</div><div dir=3D"auto">=C2=A0 Max snoop latency: 3145728ns</div><div di=
r=3D"auto">=C2=A0 Max no snoop latency: 3145728ns</div><div dir=3D"auto">=
=C2=A0Capabilities: [1f0 v1] Precision Time Measurement</div><div dir=3D"au=
to">=C2=A0 PTMCap: Requester:+ Responder:- Root:-</div><div dir=3D"auto">=
=C2=A0 PTMClockGranularity: 4ns</div><div dir=3D"auto">=C2=A0 PTMControl: E=
nabled:- RootSelected:-</div><div dir=3D"auto">=C2=A0 PTMEffectiveGranulari=
ty: Unknown</div><div dir=3D"auto">=C2=A0Capabilities: [1e0 v1] L1 PM Subst=
ates</div><div dir=3D"auto">=C2=A0 L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM=
_L1.2+ ASPM_L1.1+ L1_PM_Substates+</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=
=A0PortCommonModeRestoreTime=3D55us PortTPowerOnTime=3D70us</div><div dir=
=3D"auto">=C2=A0 L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1- ASPM_L1.2- ASPM_L1.1-=
</div><div dir=3D"auto">=C2=A0 =C2=A0 =C2=A0 T_CommonMode=3D0us LTR1.2_Thre=
shold=3D81920ns</div><div dir=3D"auto">=C2=A0 L1SubCtl2: T_PwrOn=3D50us</di=
v><div dir=3D"auto">=C2=A0Kernel driver in use: igc</div><div dir=3D"auto">=
=C2=A0Kernel modules: igc</div><div dir=3D"auto"><br><br><div class=3D"gmai=
l_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 18 Dec =
2022, 23:31 Neftin, Sasha, &lt;<a href=3D"mailto:sasha.neftin@intel.com">sa=
sha.neftin@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>On 12/16/2022 00:28, Kyle Sanderson wrote:<br>
&gt; (Un)fortunately I can reproduce this bug by simply removing the<br>
&gt; ethernet cable from the box while there is traffic flowing. kprint<br>
&gt; below from a console line. Please CC / to me for any additional<br>
&gt; information I can provide for this panic.<br>
What is a board in use (LAN on board or NIC)? What is lspci, lspci -t <br>
and lspci -s 0000:[lan bus:device.function] -vvv output?<br>
&gt; <br>
&gt; [=C2=A0 156.707054] igc 0000:01:00.0 eth0: NIC Link is Down<br>
&gt; [=C2=A0 156.712981] br-lan: port 1(eth0) entered disabled state<br>
&gt; [=C2=A0 156.719246] igc 0000:01:00.0 eth0: Register Dump<br>
&gt; [=C2=A0 156.724784] igc 0000:01:00.0 eth0: Register Name=C2=A0 =C2=A0V=
alue<br>
&gt; [=C2=A0 156.731067] igc 0000:01:00.0 eth0: CTRL=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 181c0641<br>
&gt; [=C2=A0 156.737607] igc 0000:01:00.0 eth0: STATUS=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 00380681<br>
&gt; [=C2=A0 156.744133] igc 0000:01:00.0 eth0: CTRL_EXT=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 100000c0<br>
&gt; [=C2=A0 156.750759] igc 0000:01:00.0 eth0: MDIC=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 18017949<br>
&gt; [=C2=A0 156.757258] igc 0000:01:00.0 eth0: ICR=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A000000001<br>
&gt; [=C2=A0 156.763785] igc 0000:01:00.0 eth0: RCTL=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 0440803a<br>
&gt; [=C2=A0 156.770324] igc 0000:01:00.0 eth0: RDLEN[0-3]=C2=A0 =C2=A0 =C2=
=A0 00001000<br>
&gt; 00001000 00001000 00001000<br>
&gt; [=C2=A0 156.779457] igc 0000:01:00.0 eth0: RDH[0-3]=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 000000ef<br>
&gt; 000000a1 00000092 000000ba<br>
&gt; [=C2=A0 156.788500] igc 0000:01:00.0 eth0: RDT[0-3]=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 000000ee<br>
&gt; 000000a0 00000091 000000b9<br>
&gt; [=C2=A0 156.797650] igc 0000:01:00.0 eth0: RXDCTL[0-3]=C2=A0 =C2=A0 =
=C2=A002040808<br>
&gt; 02040808 02040808 02040808<br>
&gt; [=C2=A0 156.806688] igc 0000:01:00.0 eth0: RDBAL[0-3]=C2=A0 =C2=A0 =C2=
=A0 02f43000<br>
&gt; 02180000 02e7f000 02278000<br>
&gt; [=C2=A0 156.815781] igc 0000:01:00.0 eth0: RDBAH[0-3]=C2=A0 =C2=A0 =C2=
=A0 00000001<br>
&gt; 00000001 00000001 00000001<br>
&gt; [=C2=A0 156.824928] igc 0000:01:00.0 eth0: TCTL=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 a503f0fa<br>
&gt; [=C2=A0 156.831587] igc 0000:01:00.0 eth0: TDBAL[0-3]=C2=A0 =C2=A0 =C2=
=A0 02f43000<br>
&gt; 02180000 02e7f000 02278000<br>
&gt; [=C2=A0 156.840637] igc 0000:01:00.0 eth0: TDBAH[0-3]=C2=A0 =C2=A0 =C2=
=A0 00000001<br>
&gt; 00000001 00000001 00000001<br>
&gt; [=C2=A0 156.849753] igc 0000:01:00.0 eth0: TDLEN[0-3]=C2=A0 =C2=A0 =C2=
=A0 00001000<br>
&gt; 00001000 00001000 00001000<br>
&gt; [=C2=A0 156.858760] igc 0000:01:00.0 eth0: TDH[0-3]=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 000000d4<br>
&gt; 0000003d 000000af 0000002a<br>
&gt; [=C2=A0 156.867771] igc 0000:01:00.0 eth0: TDT[0-3]=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 000000e4<br>
&gt; 0000005a 000000c8 0000002a<br>
&gt; [=C2=A0 156.876864] igc 0000:01:00.0 eth0: TXDCTL[0-3]=C2=A0 =C2=A0 =
=C2=A002100108<br>
&gt; 02100108 02100108 02100108<br>
&gt; [=C2=A0 156.885905] igc 0000:01:00.0 eth0: Reset adapter<br>
&gt; [=C2=A0 160.307195] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Fu=
ll<br>
&gt; Duplex, Flow Control: RX/TX<br>
&gt; [=C2=A0 160.317974] br-lan: port 1(eth0) entered blocking state<br>
&gt; [=C2=A0 160.324532] br-lan: port 1(eth0) entered forwarding state<br>
&gt; [=C2=A0 161.197263] ------------[ cut here ]------------<br>
&gt; [=C2=A0 161.202669] Kernel BUG at 0xffffffff813ce19f [verbose debug in=
fo unavailable]<br>
&gt; [=C2=A0 161.210769] invalid opcode: 0000 [#1] SMP NOPTI<br>
&gt; [=C2=A0 161.216022] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.10.146=
 #0<br>
&gt; [=C2=A0 161.222980] Hardware name: Default string Default string/Defau=
lt<br>
&gt; string, BIOS 5.19 09/23/2022<br>
&gt; [=C2=A0 161.232546] RIP: 0010:0xffffffff813ce19f<br>
&gt; [=C2=A0 161.237167] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f=
 95<br>
&gt; c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10<b=
r>
&gt; ff ff ff &lt;0f&gt; 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48=
 ca eb<br>
&gt; 80 cc<br>
&gt; [=C2=A0 161.258651] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283<br>
&gt; [=C2=A0 161.264736] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 0=
00000000000050e<br>
&gt; [=C2=A0 161.272837] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI: 0=
000000000061a10<br>
&gt; [=C2=A0 161.280942] RBP: ffffc90000118ef8 R08: 0000000000000000 R09: 0=
000000000061502<br>
&gt; [=C2=A0 161.289089] R10: 0000000000000000 R11: 0000000000000000 R12: 0=
0000000ffffff3f<br>
&gt; [=C2=A0 161.297229] R13: ffff888101f8f140 R14: 0000000000000000 R15: f=
fff888100ad9b00<br>
&gt; [=C2=A0 161.305345] FS:=C2=A0 0000000000000000(0000) GS:ffff88903fe800=
00(0000)<br>
&gt; knlGS:00000 00000000000<br>
&gt; [=C2=A0 161.314492] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 000000008005=
0033<br>
&gt; [=C2=A0 161.321139] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4: 0=
000000000350ee0<br>
&gt; [=C2=A0 161.329284] Call Trace:<br>
&gt; [=C2=A0 161.332373]=C2=A0 &lt;IRQ&gt;<br>
&gt; [=C2=A0 161.334981]=C2=A0 ? 0xffffffffa0185f78 [igc@00000000f400031b+0=
x13000]<br>
&gt; [=C2=A0 161.341949]=C2=A0 0xffffffff8185b047<br>
&gt; [=C2=A0 161.345797]=C2=A0 0xffffffff8185b2ca<br>
&gt; [=C2=A0 161.349637]=C2=A0 0xffffffff81e000bb<br>
&gt; [=C2=A0 161.353465]=C2=A0 0xffffffff81c0109f<br>
&gt; [=C2=A0 161.357304]=C2=A0 &lt;/IRQ&gt;<br>
&gt; [=C2=A0 161.359988]=C2=A0 0xffffffff8102cdac<br>
&gt; [=C2=A0 161.363783]=C2=A0 0xffffffff810bfdaf<br>
&gt; [=C2=A0 161.367584]=C2=A0 0xffffffff81a2e616<br>
&gt; [=C2=A0 161.371374]=C2=A0 0xffffffff81c00c9e<br>
&gt; [=C2=A0 161.375192] RIP: 0010:0xffffffff817e331b<br>
&gt; [=C2=A0 161.379840] Code: 21 90 ff 65 8b 3d 45 23 83 7e e8 80 20 90 ff=
 31<br>
&gt; ff 49 89 c6 e8 26 2d 90 ff 80 7d d7 00 0f 85 9e 01 00 00 fb 66 0f 1f<b=
r>
&gt; 44 00 00 &lt;45&gt; 85 ff 0f 88 cf 00 00 00 49 63 cf 48 8d 04 49 48 8d=
 14 81<br>
&gt; 48 c1<br>
&gt; [=C2=A0 161.401397] RSP: 0018:ffffc900000d3e80 EFLAGS: 00000246<br>
&gt; [=C2=A0 161.407493] RAX: ffff88903fea5180 RBX: ffff88903feadf00 RCX: 0=
00000000000001f<br>
&gt; [=C2=A0 161.415648] RDX: 0000000000000000 RSI: 0000000046ec0743 RDI: 0=
000000000000000<br>
&gt; [=C2=A0 161.423811] RBP: ffffc900000d3eb8 R08: 00000025881a3b81 R09: f=
fff888100317340<br>
&gt; [=C2=A0 161.432003] R10: 0000000000000001 R11: 0000000000000000 R12: 0=
000000000000003<br>
&gt; [=C2=A0 161.440154] R13: ffffffff824c7bc0 R14: 00000025881a3b81 R15: 0=
000000000000003<br>
&gt; [=C2=A0 161.448285]=C2=A0 0xffffffff817e357f<br>
&gt; [=C2=A0 161.452123]=C2=A0 0xffffffff810e6258<br>
&gt; [=C2=A0 161.455938]=C2=A0 0xffffffff810e63fb<br>
&gt; [=C2=A0 161.459746]=C2=A0 0xffffffff8104bec0<br>
&gt; [=C2=A0 161.463526]=C2=A0 0xffffffff810000f5<br>
&gt; [=C2=A0 161.467290] Modules linked in: pppoe ppp_async nft_fib_inet<br=
>
&gt; nf_flow_table_ipv 6 nf_flow_table_ipv4 nf_flow_table_inet wireguard<br=
>
&gt; pppox ppp_generic nft_reject_i pv6 nft_reject_ipv4 nft_reject_inet<br>
&gt; nft_reject nft_redir nft_quota nft_objref nf t_numgen nft_nat nft_masq=
<br>
&gt; nft_log nft_limit nft_hash nft_flow_offload nft_fib_ip v6 nft_fib_ipv4=
<br>
&gt; nft_fib nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flo<br>
&gt; w_table nf_conntrack libchacha20poly1305 curve25519_x86_64<br>
&gt; chacha_x86_64 slhc r8 169 poly1305_x86_64 nfnetlink nf_reject_ipv6<br>
&gt; nf_reject_ipv4 nf_log_ipv6 nf_log_i pv4 nf_log_common nf_defrag_ipv6<b=
r>
&gt; nf_defrag_ipv4 libcurve25519_generic libcrc32c libchacha igc forcedeth=
<br>
&gt; e1000e crc_ccitt bnx2 i2c_dev ixgbe e1000 amd_xgbe ip6_u dp_tunnel<br>
&gt; udp_tunnel mdio nls_utf8 ena kpp nls_iso8859_1 nls_cp437 vfat fat igb<=
br>
&gt; button_hotplug tg3 ptp realtek pps_core mii<br>
&gt; [=C2=A0 161.550507] ---[ end trace b1cb18ab2d1741bd ]---<br>
&gt; [=C2=A0 161.555938] RIP: 0010:0xffffffff813ce19f<br>
&gt; [=C2=A0 161.560634] Code: 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f=
 95<br>
&gt; c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78 0a 44 89 c2 e9 10<b=
r>
&gt; ff ff ff &lt;0f&gt; 0b 01 d2 45 89 c1 41 29 d1 ba 00 00 00 00 44 0f 48=
 ca eb<br>
&gt; 80 cc<br>
&gt; [=C2=A0 161.582281] RSP: 0018:ffffc90000118e88 EFLAGS: 00010283<br>
&gt; [=C2=A0 161.588426] RAX: ffff888101f8f200 RBX: ffffc900006f9bd0 RCX: 0=
00000000000050e<br>
&gt; [=C2=A0 161.596668] RDX: ffff888101fec000 RSI: 0000000000000a1c RDI: 0=
000000000061a10<br>
&gt; [=C2=A0 161.604860] RBP: ffffc90000118ef8 R08: 0000000000000000 R09: 0=
000000000061502<br>
&gt; [=C2=A0 161.613052] R10: 0000000000000000 R11: 0000000000000000 R12: 0=
0000000ffffff3f<br>
&gt; [=C2=A0 161.621291] R13: ffff888101f8f140 R14: 0000000000000000 R15: f=
fff888100ad9b00<br>
&gt; [=C2=A0 161.629505] FS:=C2=A0 0000000000000000(0000) GS:ffff88903fe800=
00(0000)<br>
&gt; knlGS:00000 00000000000<br>
&gt; [=C2=A0 161.638781] CS:=C2=A0 0010 DS: 0000 ES: 0000 CR0: 000000008005=
0033<br>
&gt; [=C2=A0 161.645549] CR2: 00007f941ad43a9b CR3: 000000000340a000 CR4: 0=
000000000350ee0<br>
&gt; [=C2=A0 161.653841] Kernel panic - not syncing: Fatal exception in int=
errupt<br>
&gt; [=C2=A0 161.661287] Kernel Offset: disabled<br>
&gt; [=C2=A0 161.665644] Rebooting in 3 seconds..<br>
&gt; [=C2=A0 164.670313] ACPI MEMORY or I/O RESET_REG.<br>
&gt; <br>
&gt; Kyle.<br>
&gt; _______________________________________________<br>
&gt; Intel-wired-lan mailing list<br>
&gt; <a href=3D"mailto:Intel-wired-lan@osuosl.org" target=3D"_blank" rel=3D=
"noreferrer">Intel-wired-lan@osuosl.org</a><br>
&gt; <a href=3D"https://lists.osuosl.org/mailman/listinfo/intel-wired-lan" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.osuosl.org/ma=
ilman/listinfo/intel-wired-lan</a><br>
<br>
</blockquote></div></div></div>

--0000000000009f85e705f0366530--

--===============6799551782860676262==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============6799551782860676262==--

