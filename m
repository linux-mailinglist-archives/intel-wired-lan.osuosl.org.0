Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2726EAE9D9B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jun 2025 14:36:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F351409D3;
	Thu, 26 Jun 2025 12:36:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XNxNXQbOKMYA; Thu, 26 Jun 2025 12:36:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFCB3409E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750941357;
	bh=IIqayTiKlEsqAZEl2+VeQD4kXMhuqqa5mRlAGY3oU6A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lm6uc97lFKq1wroUC1MQd3CJbstw1dNwvnW7C60MXSJoDocIv3S0B2M1gGP4dzPLU
	 To8mXw59ekMZ2TOI8wkW3MR/f6K1ed39NBn+gkaWxzzx9xkE/6Aj8rbvwP7jL9CaM1
	 GE8873desJMPZ8Yq/11DlZwrKsKolPhoijkrdvqKYqwZO336qMYELAnBj+ec2CuTdj
	 ENVBT8qg1mdEFiCu7CYRF9OQzf60YJsuxqw6weJPYKEkISG55v5BgywrFE0CSuIqeA
	 +G/fOCDOSNopEUVFT63x1/fg9svY7oZW6gpDVc0Yi1yf1e77b0As0Fh2qUOg8Wrog9
	 88asu2EHPfJsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFCB3409E0;
	Thu, 26 Jun 2025 12:35:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4257510A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 12:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33901409D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 12:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wmkMvNv-ViZY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jun 2025 12:35:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=209.85.208.176;
 helo=mail-lj1-f176.google.com; envelope-from=timo.teras@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D312140986
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D312140986
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D312140986
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 12:35:51 +0000 (UTC)
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-32b7113ed6bso9381361fa.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jun 2025 05:35:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750941349; x=1751546149;
 h=content-transfer-encoding:mime-version:message-id:subject:to:from
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IIqayTiKlEsqAZEl2+VeQD4kXMhuqqa5mRlAGY3oU6A=;
 b=d371y+TraDzVqnp7HnKZm7vVai6ooYwUjQNNmnuKsJxiuZu/uApWrrUq2BeuBKKCmM
 dZ8zr1XrzITr60GGx3nePZ0MuFMJCLg/DuWTX5HBFHawKtu2WVO2f0RH1TWtou1Gqz8v
 lyrkEVEbi+D3+fmc6mmvcBiZxIAXW0xFPh4zswBZEEBpCR63T2baghNCnkJ+IWDqX0tL
 gH2Xlcp+BdqC29W9+7qrOMt3D3YRn6wJ7gp8ZuobXfw+kVjdvTp+Y9AnPfd8WEIr291u
 VEujfwJqqlVPo9vX0mxBM0yU8tnpzMuMWdLVN7SNt0s8pvpj4d7Y8CRvetPjD+dIDq9U
 VhBg==
X-Gm-Message-State: AOJu0YwVB1DM1slu5J/CKYudGil8IDs3nXNuOp+3d1D5GK75GNm/EF6N
 m803WwuxmWWTjPzlRwlaps+jBVhaZAAYAneKap/GdkPCP4PBuO00Gj93vzJyfA==
X-Gm-Gg: ASbGncsJSuKlwPOvneIymjZ1b09G5khF9dPV1LTgpDsfhODz9DN9W6inZRZNewOm5IN
 daoBe+AC3k8O+1N0ONH/XhqdGF2QMthQeGbBiRCaXLPzz9GzYbpzYv1eMX1tQ3qLD63VefLHy5Q
 0U8Bg+MElna2OwWJ47pc7NFaXr216qBhVXSxlLUqxB3qhZGOIdWh+lvqpqhygp/JRHDFjCXSOXk
 XZnBWVum2guJASQ4ctoy38KGkQ1IjmuUHPvbck4xzKF++9ZXnskBys0XCGeiyNzryT/u1yj0uzU
 RBlMVjkNkNHD+6vpXPHG5ggHGjZrCx5LAfHgTEKjaP2HvWHHE8qWLtRXE5RiT/M+rfyuwSE3EyV
 dc3t4K8oR/bp8IK5n5o6JPdjIGumqr9nx3XC5rgX9tzUO
X-Google-Smtp-Source: AGHT+IHDaC+yvGH7qUnKUNY5qAXTUMWDW28T9KeJwc7iUPAvJ+j6+I96e+c1CPNblOQO9gJTBCNODw==
X-Received: by 2002:a2e:a4b6:0:b0:32b:8778:6f06 with SMTP id
 38308e7fff4ca-32cc64fe7edmr16651331fa.18.1750941348299; 
 Thu, 26 Jun 2025 05:35:48 -0700 (PDT)
Received: from onyx.my.domain (n5yl1w0nq70r2v9rah5-1.v6.elisa-mobile.fi.
 [2001:999:584:aa55:44b9:434a:24fe:d2c9])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-32cd2ec6964sm1962591fa.70.2025.06.26.05.35.47
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Jun 2025 05:35:47 -0700 (PDT)
Date: Thu, 26 Jun 2025 15:35:44 +0300
From: Timo Teras <timo.teras@iki.fi>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20250626153544.1853d106@onyx.my.domain>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-alpine-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iki.fi
Subject: [Intel-wired-lan] Unstable ethernet connection on Dell Pro 16
 (Lunar Lake)
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

Hi,

I'm having a strange unstability issue on Dell Pro 16 laptop with the
e1000e. With a high likely hood the NIC enters in non-functional state
after the cable has been unplugged and plugged in again. If this
happens, the NIC first enters 1gbps/half-duplex mode and then goes down
and then finally enters the 1gbps/full-duplex mode. Basically same
symptoms as https://bugzilla.kernel.org/show_bug.cgi?id=218642 with
additionally ending up non-working state (dhcpd does not get IP
address).

This is on vanilla Linux 6.12.34 with cherry-picked commit:
 "e1000e: set fixed clock frequency indication for Nahum 11 and Nahum 13"

Affected machine is:
DMI: Dell Inc. Dell Pro 16 Plus PB16250/0W8RP8, BIOS 2.3.1 05/16/2025
(see end of message for dmesg from boot)

The relevant dmesg 
e1000e: Intel(R) PRO/1000 Network Driver
e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) set to dynamic conservative mode
e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): registered PHC clock
e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) <mac>
e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network Connection
e1000e 0000:00:1f.6 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: None

<<<cable disconnected>>>
e1000e 0000:00:1f.6 eth0: NIC Link is Down

<<<cable connected>>>
e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Half Duplex, Flow Control: None
e1000e 0000:00:1f.6 eth0: NIC Link is Down
<<<few seconds go>>>
e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: None
<<<stays like this, but network no longer works>>>

At this point the connection does not recover unless manually doing
ifdown/ifup and/or reloading the e1000e module.

I also tried e1000e IntMode=0 and this ended up not detecting link
state change from down to up.

For reference, I have the same kernel working on the machine:
DMI: Dell Inc. Latitude 5430/0260KT, BIOS 1.27.0 12/18/2024
e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1) <mac>
e1000e 0000:00:1f.6 eth0: MAC: 15, PHY: 12, PBA No: FFFFFF-0FF

And another older lenovo box with a yet older MAC.

So the issue seems to be specific to MAC 17 / Lunar Lake.

Any ideas what causes this, or how to fix it?

Happy to provide additional details if needed, or test out patches.

Thanks,
Timo

Dell Pro 16 Plus dmesg from boot up:

[    0.000000] Linux version 6.12.34-1 (builder@builder) (gcc (Alpine 14.2.0) 14.2.0, GNU ld (GNU Binutils) 2.43.1) #1 SMP 2025-06-26 06:54:53
...
[    0.000000] KERNEL supported cpus:
[    0.000000]   Intel GenuineIntel
[    0.000000] x86/tme: not enabled by BIOS
[    0.000000] x86/split lock detection: #AC: crashing the kernel on kernel split_locks and warning on user-space split_locks
[    0.000000] BIOS-provided physical RAM map:
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009efff] usable
[    0.000000] BIOS-e820: [mem 0x000000000009f000-0x00000000000fffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x0000000051514fff] usable
[    0.000000] BIOS-e820: [mem 0x0000000051515000-0x0000000055510fff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000055511000-0x0000000055d71fff] ACPI NVS
[    0.000000] BIOS-e820: [mem 0x0000000055d72000-0x0000000055ffefff] ACPI data
[    0.000000] BIOS-e820: [mem 0x0000000055fff000-0x0000000055ffffff] usable
[    0.000000] BIOS-e820: [mem 0x0000000056000000-0x00000000687fffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000c0000000-0x00000000cfffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000f8000000-0x00000000f9ffffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000fed20000-0x00000000fed7ffff] reserved
[    0.000000] BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
[    0.000000] BIOS-e820: [mem 0x0000000100000000-0x000000048fffffff] usable
[    0.000000] NX (Execute Disable) protection: active
[    0.000000] APIC: Static calls initialized
[    0.000000] efi: EFI v2.7 by Dell
[    0.000000] efi: ACPI=0x55ffe000 ACPI 2.0=0x55ffe014 SMBIOS=0x51da1000 TPMFinalLog=0x55cb8000 ESRT=0x51d30d18 MEMATTR=0x49726018 INITRD=0x4970bf98 RNG=0x55eff018 TPMEventLog=0x55efc018 
[    0.000000] random: crng init done
[    0.000000] efi: Remove mem95: MMIO range=[0xc0000000-0xcfffffff] (256MB) from e820 map
[    0.000000] e820: remove [mem 0xc0000000-0xcfffffff] reserved
[    0.000000] efi: Remove mem96: MMIO range=[0xf8000000-0xf9ffffff] (32MB) from e820 map
[    0.000000] e820: remove [mem 0xf8000000-0xf9ffffff] reserved
[    0.000000] efi: Remove mem98: MMIO range=[0xff000000-0xffffffff] (16MB) from e820 map
[    0.000000] e820: remove [mem 0xff000000-0xffffffff] reserved
[    0.000000] SMBIOS 3.8 present.
[    0.000000] DMI: Dell Inc. Dell Pro 16 Plus PB16250/0W8RP8, BIOS 2.3.1 05/16/2025
[    0.000000] DMI: Memory slots populated: 1/1
[    0.000000] tsc: Detected 3200.000 MHz processor
[    0.000000] tsc: Detected 3187.200 MHz TSC
[    0.000010] e820: update [mem 0x00000000-0x00000fff] usable ==> reserved
[    0.000012] e820: remove [mem 0x000a0000-0x000fffff] usable
[    0.000018] last_pfn = 0x490000 max_arch_pfn = 0x400000000
[    0.000023] MTRR map: 8 entries (3 fixed + 5 variable; max 23), built from 10 variable MTRRs
[    0.000026] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT  
[    0.000546] x2apic: enabled by BIOS, switching to x2apic ops
[    0.000547] last_pfn = 0x56000 max_arch_pfn = 0x400000000
[    0.007256] esrt: Reserving ESRT space from 0x0000000051d30d18 to 0x0000000051d30d78.
[    0.007268] Using GB pages for direct mapping
[    0.007470] Secure boot disabled
[    0.007471] RAMDISK: [mem 0x47973000-0x48fc0fff]
[    0.007474] ACPI: Early table checksum verification disabled
[    0.007478] ACPI: RSDP 0x0000000055FFE014 000024 (v02 DELL  )
[    0.007481] ACPI: XSDT 0x0000000055F04228 00019C (v01 DELL   Dell Inc 00000002      01000013)
[    0.007487] ACPI: FACP 0x0000000055FDB000 000114 (v06 DELL   Dell Inc 00000002      01000013)
[    0.007492] ACPI: DSDT 0x0000000055F2A000 0AD92C (v02 DELL   Dell Inc 00000002      01000013)
[    0.007495] ACPI: FACS 0x0000000055CE2000 000040
[    0.007497] ACPI: SSDT 0x0000000055FFC000 000024 (v02 INTEL  TxtSsdt  00001000 INTL 20210930)
[    0.007500] ACPI: SSDT 0x0000000055FFB000 00038C (v02 PmaxDv Pmax_Dev 00000001 INTL 20210930)
[    0.007503] ACPI: SSDT 0x0000000055FFA000 0006CB (v02 PmRef  Cpu0Ist  00003000 INTL 20210930)
[    0.007505] ACPI: SSDT 0x0000000055FF9000 0005FD (v02 PmRef  Cpu0Hwp  00003000 INTL 20210930)
[    0.007508] ACPI: SSDT 0x0000000055FF8000 0001AB (v02 PmRef  Cpu0Psd  00003000 INTL 20210930)
[    0.007510] ACPI: SSDT 0x0000000055FF7000 000394 (v02 PmRef  Cpu0Cst  00003001 INTL 20210930)
[    0.007513] ACPI: SSDT 0x0000000055FF5000 001BAF (v02 PmRef  ApIst    00003000 INTL 20210930)
[    0.007516] ACPI: SSDT 0x0000000055FF3000 001620 (v02 PmRef  ApHwp    00003000 INTL 20210930)
[    0.007518] ACPI: SSDT 0x0000000055FF1000 001349 (v02 PmRef  ApPsd    00003000 INTL 20210930)
[    0.007521] ACPI: SSDT 0x0000000055FF0000 000FBB (v02 PmRef  ApCst    00003000 INTL 20210930)
[    0.007523] ACPI: SSDT 0x0000000055FEC000 003BC8 (v02 CpuRef CpuSsdt  00003000 INTL 20210930)
[    0.007526] ACPI: DTPR 0x0000000055FEB000 000088 (v01                 00000000      00000000)
[    0.007529] ACPI: SSDT 0x0000000055FE7000 003626 (v02 INTEL  PDatTabl 00001000 INTL 20210930)
[    0.007531] ACPI: SSDT 0x0000000055FE6000 000A57 (v02 INTEL  IgfxSsdt 00003000 INTL 20210930)
[    0.007534] ACPI: SSDT 0x0000000055FDC000 009BEE (v02 INTEL  TcssSsdt 00001000 INTL 20210930)
[    0.007536] ACPI: HPET 0x0000000055FDA000 000038 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007539] ACPI: APIC 0x0000000055FD9000 000358 (v05 DELL   Dell Inc 00000002      01000013)
[    0.007541] ACPI: MCFG 0x0000000055FD8000 00003C (v01 DELL   Dell Inc 00000002      01000013)
[    0.007544] ACPI: SSDT 0x0000000055F28000 0015EA (v02 DELL   DellRtd3 00001000 INTL 20210930)
[    0.007546] ACPI: SSDT 0x0000000055F23000 004639 (v02 DptfTb DptfTabl 00001000 INTL 20210930)
[    0.007549] ACPI: BERT 0x0000000055FFD000 000030 (v01 INTEL  EDK2     00000001 INTL 00000001)
[    0.007551] ACPI: NHLT 0x0000000055F21000 0002E3 (v00 DELL   Dell Inc 00000002      01000013)
[    0.007554] ACPI: SSDT 0x0000000055F1F000 0011F4 (v02 DELL   UsbCTabl 00001000 INTL 20210930)
[    0.007557] ACPI: LPIT 0x0000000055F1E000 0000CC (v01 DELL   Dell Inc 00000002      01000013)
[    0.007559] ACPI: WSMT 0x0000000055F1D000 000028 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007562] ACPI: SSDT 0x0000000055F1C000 000CA6 (v02 DELL   PtidDevc 00001000 INTL 20210930)
[    0.007564] ACPI: SSDT 0x0000000055F16000 005E42 (v02 DELL   TbtTypeC 00000000 INTL 20210930)
[    0.007566] ACPI: DBGP 0x0000000055F15000 000034 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007569] ACPI: DBG2 0x0000000055F14000 000054 (v00 DELL   Dell Inc 00000002      01000013)
[    0.007572] ACPI: BOOT 0x0000000055F13000 000028 (v01 DELL   CBX3     00000002      01000013)
[    0.007574] ACPI: MSDM 0x0000000055F12000 000055 (v03 DELL   CBX3     06222004 AMI  00010013)
[    0.007577] ACPI: SSDT 0x0000000055F11000 00060E (v02 DELL   Tpm2Tabl 00001000 INTL 20210930)
[    0.007579] ACPI: TPM2 0x0000000055F10000 00004C (v04 DELL   Dell Inc 00000002      01000013)
[    0.007582] ACPI: DMAR 0x0000000055F0F000 000098 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007584] ACPI: FPDT 0x0000000055F0E000 000034 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007587] ACPI: SSDT 0x0000000055F0D000 000024 (v02 INTEL  TxtSsdt  00001000 INTL 20210930)
[    0.007589] ACPI: SSDT 0x0000000055F0B000 0015AA (v02 DELL   xh_Dell_ 00000000 INTL 20210930)
[    0.007592] ACPI: SSDT 0x0000000055F08000 00281A (v02 SocGpe SocGpe   00003000 INTL 20210930)
[    0.007595] ACPI: SSDT 0x0000000055F05000 0028D3 (v02 SocCmn SocCmn   00003000 INTL 20210930)
[    0.007597] ACPI: UEFI 0x0000000055CB6000 00063A (v01 INTEL  RstVmdE  00000000 INTL 00000000)
[    0.007600] ACPI: UEFI 0x0000000055CB5000 00005C (v01 INTEL  RstVmdV  00000000 INTL 00000000)
[    0.007602] ACPI: SDEV 0x0000000055F22000 00015A (v01 DELL   Dell Inc 00000002      01000013)
[    0.007605] ACPI: ASF! 0x0000000055F03000 0000A0 (v32 DELL   Dell Inc 00000002      01000013)
[    0.007607] ACPI: PHAT 0x0000000055F02000 000521 (v01 DELL   Dell Inc 00000005 MSFT 0100000D)
[    0.007610] ACPI: OEMD 0x0000000055F01000 00019C (v01 DELL   Dell Inc 00000000 DELL 00000000)
[    0.007612] ACPI: BGRT 0x0000000055F00000 000038 (v01 DELL   Dell Inc 00000002      01000013)
[    0.007614] ACPI: Reserving FACP table memory at [mem 0x55fdb000-0x55fdb113]
[    0.007616] ACPI: Reserving DSDT table memory at [mem 0x55f2a000-0x55fd792b]
[    0.007617] ACPI: Reserving FACS table memory at [mem 0x55ce2000-0x55ce203f]
[    0.007618] ACPI: Reserving SSDT table memory at [mem 0x55ffc000-0x55ffc023]
[    0.007619] ACPI: Reserving SSDT table memory at [mem 0x55ffb000-0x55ffb38b]
[    0.007620] ACPI: Reserving SSDT table memory at [mem 0x55ffa000-0x55ffa6ca]
[    0.007621] ACPI: Reserving SSDT table memory at [mem 0x55ff9000-0x55ff95fc]
[    0.007621] ACPI: Reserving SSDT table memory at [mem 0x55ff8000-0x55ff81aa]
[    0.007622] ACPI: Reserving SSDT table memory at [mem 0x55ff7000-0x55ff7393]
[    0.007623] ACPI: Reserving SSDT table memory at [mem 0x55ff5000-0x55ff6bae]
[    0.007624] ACPI: Reserving SSDT table memory at [mem 0x55ff3000-0x55ff461f]
[    0.007625] ACPI: Reserving SSDT table memory at [mem 0x55ff1000-0x55ff2348]
[    0.007626] ACPI: Reserving SSDT table memory at [mem 0x55ff0000-0x55ff0fba]
[    0.007626] ACPI: Reserving SSDT table memory at [mem 0x55fec000-0x55fefbc7]
[    0.007627] ACPI: Reserving DTPR table memory at [mem 0x55feb000-0x55feb087]
[    0.007628] ACPI: Reserving SSDT table memory at [mem 0x55fe7000-0x55fea625]
[    0.007629] ACPI: Reserving SSDT table memory at [mem 0x55fe6000-0x55fe6a56]
[    0.007630] ACPI: Reserving SSDT table memory at [mem 0x55fdc000-0x55fe5bed]
[    0.007631] ACPI: Reserving HPET table memory at [mem 0x55fda000-0x55fda037]
[    0.007632] ACPI: Reserving APIC table memory at [mem 0x55fd9000-0x55fd9357]
[    0.007632] ACPI: Reserving MCFG table memory at [mem 0x55fd8000-0x55fd803b]
[    0.007633] ACPI: Reserving SSDT table memory at [mem 0x55f28000-0x55f295e9]
[    0.007634] ACPI: Reserving SSDT table memory at [mem 0x55f23000-0x55f27638]
[    0.007635] ACPI: Reserving BERT table memory at [mem 0x55ffd000-0x55ffd02f]
[    0.007636] ACPI: Reserving NHLT table memory at [mem 0x55f21000-0x55f212e2]
[    0.007637] ACPI: Reserving SSDT table memory at [mem 0x55f1f000-0x55f201f3]
[    0.007637] ACPI: Reserving LPIT table memory at [mem 0x55f1e000-0x55f1e0cb]
[    0.007638] ACPI: Reserving WSMT table memory at [mem 0x55f1d000-0x55f1d027]
[    0.007639] ACPI: Reserving SSDT table memory at [mem 0x55f1c000-0x55f1cca5]
[    0.007640] ACPI: Reserving SSDT table memory at [mem 0x55f16000-0x55f1be41]
[    0.007641] ACPI: Reserving DBGP table memory at [mem 0x55f15000-0x55f15033]
[    0.007642] ACPI: Reserving DBG2 table memory at [mem 0x55f14000-0x55f14053]
[    0.007643] ACPI: Reserving BOOT table memory at [mem 0x55f13000-0x55f13027]
[    0.007643] ACPI: Reserving MSDM table memory at [mem 0x55f12000-0x55f12054]
[    0.007644] ACPI: Reserving SSDT table memory at [mem 0x55f11000-0x55f1160d]
[    0.007645] ACPI: Reserving TPM2 table memory at [mem 0x55f10000-0x55f1004b]
[    0.007646] ACPI: Reserving DMAR table memory at [mem 0x55f0f000-0x55f0f097]
[    0.007647] ACPI: Reserving FPDT table memory at [mem 0x55f0e000-0x55f0e033]
[    0.007648] ACPI: Reserving SSDT table memory at [mem 0x55f0d000-0x55f0d023]
[    0.007649] ACPI: Reserving SSDT table memory at [mem 0x55f0b000-0x55f0c5a9]
[    0.007649] ACPI: Reserving SSDT table memory at [mem 0x55f08000-0x55f0a819]
[    0.007650] ACPI: Reserving SSDT table memory at [mem 0x55f05000-0x55f078d2]
[    0.007651] ACPI: Reserving UEFI table memory at [mem 0x55cb6000-0x55cb6639]
[    0.007652] ACPI: Reserving UEFI table memory at [mem 0x55cb5000-0x55cb505b]
[    0.007653] ACPI: Reserving SDEV table memory at [mem 0x55f22000-0x55f22159]
[    0.007654] ACPI: Reserving ASF! table memory at [mem 0x55f03000-0x55f0309f]
[    0.007655] ACPI: Reserving PHAT table memory at [mem 0x55f02000-0x55f02520]
[    0.007656] ACPI: Reserving OEMD table memory at [mem 0x55f01000-0x55f0119b]
[    0.007657] ACPI: Reserving BGRT table memory at [mem 0x55f00000-0x55f00037]
[    0.007694] APIC: Switched APIC routing to: cluster x2apic
[    0.007712] Zone ranges:
[    0.007713]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]
[    0.007715]   DMA32    [mem 0x0000000001000000-0x00000000ffffffff]
[    0.007716]   Normal   [mem 0x0000000100000000-0x000000048fffffff]
[    0.007718] Movable zone start for each node
[    0.007718] Early memory node ranges
[    0.007719]   node   0: [mem 0x0000000000001000-0x000000000009efff]
[    0.007720]   node   0: [mem 0x0000000000100000-0x0000000051514fff]
[    0.007721]   node   0: [mem 0x0000000055fff000-0x0000000055ffffff]
[    0.007722]   node   0: [mem 0x0000000100000000-0x000000048fffffff]
[    0.007724] Initmem setup node 0 [mem 0x0000000000001000-0x000000048fffffff]
[    0.007729] On node 0, zone DMA: 1 pages in unavailable ranges
[    0.007754] On node 0, zone DMA: 97 pages in unavailable ranges
[    0.009953] On node 0, zone DMA32: 19178 pages in unavailable ranges
[    0.033391] On node 0, zone Normal: 8192 pages in unavailable ranges
[    0.033756] ACPI: PM-Timer IO Port: 0x1808
[    0.033766] ACPI: X2APIC_NMI (uid[0xffffffff] high level lint[0x1])
[    0.033802] IOAPIC[0]: apic_id 2, version 32, address 0xfec00000, GSI 0-119
[    0.033805] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)
[    0.033807] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)
[    0.033813] ACPI: Using ACPI (MADT) for SMP configuration information
[    0.033814] ACPI: HPET id: 0x8086a201 base: 0xfed00000
[    0.033822] e820: update [mem 0x4970d000-0x49718fff] usable ==> reserved
[    0.033831] TSC deadline timer available
[    0.033834] CPU topo: Max. logical packages:   1
[    0.033835] CPU topo: Max. logical dies:       1
[    0.033835] CPU topo: Max. dies per package:   1
[    0.033838] CPU topo: Max. threads per core:   2
[    0.033839] CPU topo: Num. cores per package:    12
[    0.033840] CPU topo: Num. threads per package:  14
[    0.033841] CPU topo: Allowing 14 present CPUs plus 0 hotplug CPUs
[    0.033853] [mem 0x68800000-0xfed1ffff] available for PCI devices
[    0.033855] Booting paravirtualized kernel on bare hardware
[    0.033857] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 6370452778343963 ns
[    0.039840] setup_percpu: NR_CPUS:32 nr_cpumask_bits:14 nr_cpu_ids:14 nr_node_ids:1
[    0.040763] percpu: Embedded 69 pages/cpu s156184 r8192 d118248 u524288
[    0.040768] pcpu-alloc: s156184 r8192 d118248 u524288 alloc=1*2097152
[    0.040771] pcpu-alloc: [0] 00 01 02 03 [0] 04 05 06 07 
[    0.040776] pcpu-alloc: [0] 08 09 10 11 [0] 12 13 -- -- 
[    0.040792] Kernel command line: quiet vt.global_cursor_default=0
[    0.042293] Dentry cache hash table entries: 2097152 (order: 12, 16777216 bytes, linear)
[    0.043027] Inode-cache hash table entries: 1048576 (order: 11, 8388608 bytes, linear)
[    0.043160] Built 1 zonelists, mobility grouping on.  Total pages: 4068532
[    0.043380] mem auto-init: stack:all(zero), heap alloc:on, heap free:on
[    0.043382] mem auto-init: clearing system memory may take some time...
[    0.043392] software IO TLB: area num 16.
[    1.446997] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=14, Nodes=1
[    1.447104] rcu: Hierarchical RCU implementation.
[    1.447105] rcu: 	RCU restricting CPUs from NR_CPUS=32 to nr_cpu_ids=14.
[    1.447107] rcu: RCU calculated value of scheduler-enlistment delay is 30 jiffies.
[    1.447108] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=14
[    1.447115] NR_IRQS: 4352, nr_irqs: 2168, preallocated irqs: 16
[    1.447404] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    1.447634] kfence: initialized - using 2097152 bytes for 255 objects at 0x(____ptrval____)-0x(____ptrval____)
[    1.447663] Console: colour dummy device 80x25
[    1.447665] printk: legacy console [tty0] enabled
[    1.447695] ACPI: Core revision 20240827
[    1.448134] hpet: HPET dysfunctional in PC10. Force disabled.
[    1.448229] APIC: Switch to symmetric I/O mode setup
[    1.448231] DMAR: Host address width 42
[    1.448232] DMAR: DRHD base: 0x000000fc800000 flags: 0x0
[    1.448242] DMAR: dmar0: reg_base_addr fc800000 ver 7:0 cap c9de008cee690462 ecap 12ca9a00f0ef5e
[    1.448245] DMAR: DRHD base: 0x000000fc801000 flags: 0x1
[    1.448249] DMAR: dmar1: reg_base_addr fc801000 ver 7:0 cap c9de008cee690462 ecap 12ca9a00f0efde
[    1.448251] DMAR: SATC flags: 0x1
[    1.448255] DMAR-IR: IOAPIC id 2 under DRHD base  0xfc801000 IOMMU 1
[    1.448256] DMAR-IR: HPET id 0 under DRHD base 0xfc801000
[    1.448257] DMAR-IR: Queued invalidation will be enabled to support x2apic and Intr-remapping.
[    1.449527] DMAR-IR: Enabled IRQ remapping in x2apic mode
[    1.453563] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x2df10e7656b, max_idle_ns: 440795364873 ns
[    1.453569] Calibrating delay loop (skipped), value calculated using timer frequency.. 6376.00 BogoMIPS (lpj=10624000)
[    1.453629] CPU0: Thermal monitoring enabled (TM1)
[    1.453630] x86/cpu: User Mode Instruction Prevention (UMIP) activated
[    1.453638] CET detected: Indirect Branch Tracking enabled
[    1.453639] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
[    1.453640] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
[    1.453643] process: using mwait in idle threads
[    1.453645] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
[    1.453647] Spectre V2 : Mitigation: Enhanced / Automatic IBRS
[    1.453648] Spectre V2 : mitigation: Enabling conditional Indirect Branch Prediction Barrier
[    1.453650] Speculative Store Bypass: Mitigation: Speculative Store Bypass disabled via prctl
[    1.453660] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point registers'
[    1.453661] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'
[    1.453662] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'
[    1.453663] x86/fpu: Supporting XSAVE feature 0x200: 'Protection Keys User registers'
[    1.453664] x86/fpu: Supporting XSAVE feature 0x800: 'Control-flow User registers'
[    1.453665] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256
[    1.453666] x86/fpu: xstate_offset[9]:  832, xstate_sizes[9]:    8
[    1.453667] x86/fpu: xstate_offset[11]:  840, xstate_sizes[11]:   16
[    1.453669] x86/fpu: Enabled xstate features 0xa07, context size is 856 bytes, using 'compacted' format.
[    1.456900] Freeing SMP alternatives memory: 20K
[    1.456900] pid_max: default: 32768 minimum: 301
[    1.456900] LSM: initializing lsm=capability,yama
[    1.456900] Yama: becoming mindful.
[    1.456900] Mount-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    1.456900] Mountpoint-cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
[    1.456900] smpboot: CPU0: Intel(R) Core(TM) Ultra 5 235U (family: 0x6, model: 0xb5, stepping: 0x0)
[    1.456900] Performance Events: XSAVE Architectural LBR, PEBS fmt4+-baseline,  AnyThread deprecated, Meteorlake Hybrid events, 32-deep LBR, full-width counters, Intel PMU driver.
[    1.456900] core: cpu_core PMU driver: 
[    1.456900] ... version:                5
[    1.456900] ... bit width:              48
[    1.456900] ... generic registers:      8
[    1.456900] ... value mask:             0000ffffffffffff
[    1.456900] ... max period:             00007fffffffffff
[    1.456900] ... fixed-purpose events:   4
[    1.456900] ... event mask:             0000000f000000ff
[    1.456900] signal: max sigframe size: 3232
[    1.456900] Estimated ratio of average max frequency by base frequency (times 1024): 1568
[    1.456900] rcu: Hierarchical SRCU implementation.
[    1.456900] rcu: 	Max phase no-delay instances is 1000.
[    1.456900] Timer migration: 2 hierarchy levels; 8 children per group; 2 crossnode level
[    1.456900] NMI watchdog: Enabled. Permanently consumes one hw-PMU counter.
[    1.456900] smp: Bringing up secondary CPUs ...
[    1.456900] smpboot: x86: Booting SMP configuration:
[    1.456900] .... node  #0, CPUs:        #2  #4  #5  #6  #7  #8  #9 #10 #11 #12 #13
[    0.009362] core: cpu_atom PMU driver: 
[    0.009362] ... version:                5
[    0.009362] ... bit width:              48
[    0.009362] ... generic registers:      8
[    0.009362] ... value mask:             0000ffffffffffff
[    0.009362] ... max period:             00007fffffffffff
[    0.009362] ... fixed-purpose events:   3
[    0.009362] ... event mask:             00000007000000ff
[    1.456982]   #1  #3
[    1.458067] smp: Brought up 1 node, 14 CPUs
[    1.458067] ----------------
[    1.458067] | NMI testsuite:
[    1.458067] --------------------
[    1.458067]   remote IPI:  ok  |
[    1.458067]    local IPI:  ok  |
[    1.458067] --------------------
[    1.458067] Good, all   2 testcases passed! |
[    1.458067] ---------------------------------
[    1.458067] smpboot: Total of 14 processors activated (89277.00 BogoMIPS)
[    1.460297] Memory: 15854468K/16274128K available (10240K kernel code, 1447K rwdata, 3264K rodata, 1748K init, 2460K bss, 399348K reserved, 0K cma-reserved)
[    1.460599] devtmpfs: initialized
[    1.460607] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 6370867519511994 ns
[    1.460607] futex hash table entries: 4096 (order: 6, 262144 bytes, linear)
[    1.460607] pinctrl core: initialized pinctrl subsystem
[    1.460661] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    1.460799] thermal_sys: Registered thermal governor 'fair_share'
[    1.460800] thermal_sys: Registered thermal governor 'bang_bang'
[    1.460801] thermal_sys: Registered thermal governor 'step_wise'
[    1.460801] thermal_sys: Registered thermal governor 'user_space'
[    1.460810] cpuidle: using governor ladder
[    1.460813] cpuidle: using governor menu
[    1.460832] Simple Boot Flag at 0x47 set to 0x80
[    1.460832] PCI: ECAM [mem 0xc0000000-0xcdffffff] (base 0xc0000000) for domain 0000 [bus 00-df]
[    1.460832] PCI: Using configuration type 1 for base access
[    1.460832] HugeTLB: registered 2.00 MiB page size, pre-allocated 0 pages
[    1.460832] HugeTLB: 28 KiB vmemmap can be freed for a 2.00 MiB page
[    1.460832] cryptd: max_cpu_qlen set to 1000
[    1.460832] ACPI: Added _OSI(Module Device)
[    1.460832] ACPI: Added _OSI(Processor Device)
[    1.460832] ACPI: Added _OSI(Processor Aggregator Device)
[    1.542035] ACPI: 24 ACPI AML tables successfully acquired and loaded
[    1.555644] ACPI: EC: EC started
[    1.555646] ACPI: EC: interrupt blocked
[    1.559982] ACPI: EC: EC_CMD/EC_SC=0x934, EC_DATA=0x930
[    1.559982] ACPI: \_SB_.PC00.LPCB.ECDV: Boot DSDT EC used to handle transactions
[    1.559982] ACPI: Interpreter enabled
[    1.559982] ACPI: PM: (supports S0 S5)
[    1.559982] ACPI: Using IOAPIC for interrupt routing
[    1.559982] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
[    1.559982] PCI: Ignoring E820 reservations for host bridge windows
[    1.559982] ACPI: Enabled 10 GPEs in block 00 to 7F
[    1.559982] ACPI: Enabled 8 GPEs in block 80 to DF
[    1.563355] ACPI: \_SB_.PC00.XHCI.RHUB.SS01.UWW3: New power resource
[    1.572778] ACPI: \_SB_.PC00.RP01.PXP_: New power resource
[    1.580979] ACPI: \_SB_.PC00.TBT0: New power resource
[    1.581021] ACPI: \_SB_.PC00.TBT1: New power resource
[    1.581062] ACPI: \_SB_.PC00.D3C_: New power resource
[    1.595771] ACPI: \PIN_: New power resource
[    1.596317] ACPI: PCI Root Bridge [PC00] (domain 0000 [bus 00-df])
[    1.596322] acpi PNP0A08:00: _OSC: OS supports [ExtendedConfig ASPM ClockPM Segments MSI HPX-Type3]
[    1.597006] acpi PNP0A08:00: _OSC: OS now controls [PME PCIeCapability LTR]
[    1.598135] PCI host bridge to bus 0000:00
[    1.598137] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
[    1.598139] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
[    1.598140] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
[    1.598141] pci_bus 0000:00: root bus resource [mem 0x70000000-0xbfffffff window]
[    1.598142] pci_bus 0000:00: root bus resource [mem 0x4000000000-0x3ffbfffffff window]
[    1.598144] pci_bus 0000:00: root bus resource [bus 00-df]
[    1.598267] pci 0000:00:00.0: [8086:7d30] type 00 class 0x060000 conventional PCI endpoint
[    1.598384] pci 0000:00:02.0: [8086:7d41] type 00 class 0x030000 PCIe Root Complex Integrated Endpoint
[    1.598396] pci 0000:00:02.0: BAR 0 [mem 0x501a000000-0x501affffff 64bit pref]
[    1.598405] pci 0000:00:02.0: BAR 2 [mem 0x4000000000-0x400fffffff 64bit pref]
[    1.598435] pci 0000:00:02.0: DMAR: Skip IOMMU disabling for graphics
[    1.598438] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
[    1.598472] pci 0000:00:02.0: PME# supported from D0 D3hot
[    1.598490] pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x00ffffff 64bit pref]
[    1.598491] pci 0000:00:02.0: VF BAR 0 [mem 0x00000000-0x06ffffff 64bit pref]: contains BAR 0 for 7 VFs
[    1.598624] pci 0000:00:04.0: [8086:7d03] type 00 class 0x118000 conventional PCI endpoint
[    1.598639] pci 0000:00:04.0: BAR 0 [mem 0x501c080000-0x501c09ffff 64bit]
[    1.598826] pci 0000:00:06.0: [8086:09ab] type 00 class 0x088000 conventional PCI endpoint
[    1.599270] pci 0000:00:07.0: [8086:7ec6] type 01 class 0x060400 PCIe Root Port
[    1.599295] pci 0000:00:07.0: PCI bridge to [bus 01-2a]
[    1.599301] pci 0000:00:07.0:   bridge window [mem 0x76000000-0x7bffffff]
[    1.599310] pci 0000:00:07.0:   bridge window [mem 0x4010000000-0x480fffffff 64bit pref]
[    1.599375] pci 0000:00:07.0: PME# supported from D0 D3hot D3cold
[    1.599405] pci 0000:00:07.0: PTM enabled (root), 4ns granularity
[    1.599923] pci 0000:00:07.3: [8086:7ec7] type 01 class 0x060400 PCIe Root Port
[    1.599949] pci 0000:00:07.3: PCI bridge to [bus 2b-54]
[    1.599954] pci 0000:00:07.3:   bridge window [mem 0x70000000-0x75ffffff]
[    1.599963] pci 0000:00:07.3:   bridge window [mem 0x4810000000-0x500fffffff 64bit pref]
[    1.600027] pci 0000:00:07.3: PME# supported from D0 D3hot D3cold
[    1.600056] pci 0000:00:07.3: PTM enabled (root), 4ns granularity
[    1.600571] pci 0000:00:08.0: [8086:774c] type 00 class 0x088000 conventional PCI endpoint
[    1.600586] pci 0000:00:08.0: BAR 0 [mem 0x501c0dc000-0x501c0dcfff 64bit]
[    1.600688] pci 0000:00:0a.0: [8086:7d0d] type 00 class 0x118000 PCIe Root Complex Integrated Endpoint
[    1.600695] pci 0000:00:0a.0: BAR 0 [mem 0x501c040000-0x501c07ffff 64bit]
[    1.600711] pci 0000:00:0a.0: enabling Extended Tags
[    1.600770] pci 0000:00:0b.0: [8086:7d1d] type 00 class 0x120000 PCIe Root Complex Integrated Endpoint
[    1.600779] pci 0000:00:0b.0: BAR 0 [mem 0x5010000000-0x5017ffffff 64bit]
[    1.600791] pci 0000:00:0b.0: BAR 4 [mem 0x501c0db000-0x501c0dbfff 64bit]
[    1.600875] pci 0000:00:0d.0: [8086:7ec0] type 00 class 0x0c0330 conventional PCI endpoint
[    1.600889] pci 0000:00:0d.0: BAR 0 [mem 0x501c0c0000-0x501c0cffff 64bit]
[    1.600948] pci 0000:00:0d.0: PME# supported from D3hot D3cold
[    1.601225] pci 0000:00:0d.3: [8086:7ec3] type 00 class 0x0c0340 conventional PCI endpoint
[    1.601239] pci 0000:00:0d.3: BAR 0 [mem 0x501c000000-0x501c03ffff 64bit]
[    1.601248] pci 0000:00:0d.3: BAR 2 [mem 0x501c0da000-0x501c0dafff 64bit]
[    1.601291] pci 0000:00:0d.3: supports D1 D2
[    1.601292] pci 0000:00:0d.3: PME# supported from D0 D1 D2 D3hot D3cold
[    1.601381] pci 0000:00:0e.0: [8086:7d0b] type 00 class 0x010400 PCIe Root Complex Integrated Endpoint
[    1.601397] pci 0000:00:0e.0: BAR 0 [mem 0x5018000000-0x5019ffffff 64bit]
[    1.601404] pci 0000:00:0e.0: BAR 2 [mem 0x7c000000-0x7cffffff]
[    1.601421] pci 0000:00:0e.0: BAR 4 [mem 0x501b000000-0x501bffffff 64bit]
[    1.601580] pci 0000:00:12.0: [8086:7745] type 00 class 0x070000 conventional PCI endpoint
[    1.601592] pci 0000:00:12.0: BAR 0 [mem 0x501c0b0000-0x501c0bffff 64bit]
[    1.601637] pci 0000:00:12.0: PME# supported from D0 D3hot
[    1.601968] pci 0000:00:14.0: [8086:777d] type 00 class 0x0c0330 conventional PCI endpoint
[    1.601982] pci 0000:00:14.0: BAR 0 [mem 0x501c0a0000-0x501c0affff 64bit]
[    1.602040] pci 0000:00:14.0: PME# supported from D3hot D3cold
[    1.602328] pci 0000:00:14.2: [8086:777f] type 00 class 0x050000 conventional PCI endpoint
[    1.602344] pci 0000:00:14.2: BAR 0 [mem 0x501c0d0000-0x501c0d3fff 64bit]
[    1.602355] pci 0000:00:14.2: BAR 2 [mem 0x501c0d9000-0x501c0d9fff 64bit]
[    1.602522] pci 0000:00:15.0: [8086:7778] type 00 class 0x0c8000 conventional PCI endpoint
[    1.602544] pci 0000:00:15.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
[    1.602818] pci 0000:00:15.3: [8086:777b] type 00 class 0x0c8000 conventional PCI endpoint
[    1.602839] pci 0000:00:15.3: BAR 0 [mem 0x00000000-0x00000fff 64bit]
[    1.603057] pci 0000:00:16.0: [8086:7770] type 00 class 0x078000 conventional PCI endpoint
[    1.603080] pci 0000:00:16.0: BAR 0 [mem 0x501c0d6000-0x501c0d6fff 64bit]
[    1.603169] pci 0000:00:16.0: PME# supported from D3hot
[    1.603469] pci 0000:00:16.3: [8086:7773] type 00 class 0x070002 conventional PCI endpoint
[    1.603479] pci 0000:00:16.3: BAR 0 [io  0x3020-0x3027]
[    1.603485] pci 0000:00:16.3: BAR 1 [mem 0x7d121000-0x7d121fff]
[    1.603596] pci 0000:00:1c.0: [8086:7739] type 01 class 0x060400 PCIe Root Port
[    1.603616] pci 0000:00:1c.0: PCI bridge to [bus 55]
[    1.603621] pci 0000:00:1c.0:   bridge window [mem 0x7d000000-0x7d0fffff]
[    1.603684] pci 0000:00:1c.0: PME# supported from D0 D3hot D3cold
[    1.603715] pci 0000:00:1c.0: PTM enabled (root), 4ns granularity
[    1.604218] pci 0000:00:1e.0: [8086:7725] type 00 class 0x078000 conventional PCI endpoint
[    1.604239] pci 0000:00:1e.0: BAR 0 [mem 0x00000000-0x00000fff 64bit]
[    1.604517] pci 0000:00:1f.0: [8086:7703] type 00 class 0x060100 conventional PCI endpoint
[    1.604820] pci 0000:00:1f.4: [8086:7722] type 00 class 0x0c0500 conventional PCI endpoint
[    1.604840] pci 0000:00:1f.4: BAR 0 [mem 0x501c0d4000-0x501c0d40ff 64bit]
[    1.604864] pci 0000:00:1f.4: BAR 4 [io  0xefa0-0xefbf]
[    1.605027] pci 0000:00:1f.5: [8086:7723] type 00 class 0x0c8000 conventional PCI endpoint
[    1.605057] pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]
[    1.605235] pci 0000:00:1f.6: [8086:57a0] type 00 class 0x020000 conventional PCI endpoint
[    1.605259] pci 0000:00:1f.6: BAR 0 [mem 0x7d100000-0x7d11ffff]
[    1.605377] pci 0000:00:1f.6: PME# supported from D0 D3hot D3cold
[    1.605540] pci 0000:00:07.0: PCI bridge to [bus 01-2a]
[    1.605577] pci 0000:00:07.3: PCI bridge to [bus 2b-54]
[    1.605627] pci 0000:55:00.0: [10ec:525a] type 00 class 0xff0000 PCIe Endpoint
[    1.605648] pci 0000:55:00.0: BAR 1 [mem 0x7d000000-0x7d000fff]
[    1.605752] pci 0000:55:00.0: supports D1 D2
[    1.605753] pci 0000:55:00.0: PME# supported from D1 D2 D3hot D3cold
[    1.606342] pci 0000:00:1c.0: PCI bridge to [bus 55]
[    1.606363] pci_bus 0000:00: on NUMA node 0
[    1.611557] ACPI: EC: interrupt unblocked
[    1.611558] ACPI: EC: event unblocked
[    1.613573] ACPI: EC: EC_CMD/EC_SC=0x934, EC_DATA=0x930
[    1.613573] ACPI: EC: GPE=0x6e
[    1.613573] ACPI: \_SB_.PC00.LPCB.ECDV: Boot DSDT EC initialization complete
[    1.613573] ACPI: \_SB_.PC00.LPCB.ECDV: EC: Used to handle transactions and events
[    1.613573] iommu: Default domain type: Translated
[    1.613573] iommu: DMA domain TLB invalidation policy: strict mode
[    1.613573] ACPI: bus type USB registered
[    1.613573] usbcore: registered new interface driver usbfs
[    1.613573] usbcore: registered new interface driver hub
[    1.613573] usbcore: registered new device driver usb
[    1.613573] pps_core: LinuxPPS API ver. 1 registered
[    1.613573] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
[    1.613764] efivars: Registered efivars operations
[    1.613764] PCI: Using ACPI for IRQ routing
[    1.622166] PCI: pci_cache_line_size set to 64 bytes
[    1.622271] pci 0000:00:1f.5: BAR 0 [mem 0xfe010000-0xfe010fff]: can't claim; no compatible bridge window
[    1.622379] e820: reserve RAM buffer [mem 0x0009f000-0x0009ffff]
[    1.622380] e820: reserve RAM buffer [mem 0x4970d000-0x4bffffff]
[    1.622381] e820: reserve RAM buffer [mem 0x51515000-0x53ffffff]
[    1.622382] e820: reserve RAM buffer [mem 0x56000000-0x57ffffff]
[    1.623598] pci 0000:00:02.0: vgaarb: setting as boot VGA device
[    1.623598] pci 0000:00:02.0: vgaarb: bridge control possible
[    1.623598] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
[    1.623598] vgaarb: loaded
[    1.623618] clocksource: Switched to clocksource tsc-early
[    1.623727] VFS: Disk quotas dquot_6.6.0
[    1.623736] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 bytes)
[    1.623785] pnp: PnP ACPI init
[    1.624040] system 00:00: [io  0x0680-0x069f] has been reserved
[    1.624044] system 00:00: [io  0x164e-0x164f] has been reserved
[    1.624171] system 00:02: [io  0x1854-0x1857] has been reserved
[    1.626163] pnp 00:05: disabling [mem 0x00000000-0x00000fff] because it overlaps 0000:00:02.0 BAR 7 [mem 0x00000000-0x06ffffff 64bit pref]
[    1.626167] pnp 00:05: disabling [mem 0x00000000-0x00000fff] because it overlaps 0000:00:02.0 BAR 7 [mem 0x00000000-0x06ffffff 64bit pref]
[    1.626194] system 00:05: [mem 0xfedc0000-0xfedc7fff] has been reserved
[    1.626197] system 00:05: [mem 0xc0000000-0xcfffffff] has been reserved
[    1.626199] system 00:05: [mem 0xfed20000-0xfed7ffff] could not be reserved
[    1.626201] system 00:05: [mem 0xfc800000-0xfc81ffff] could not be reserved
[    1.626202] system 00:05: [mem 0xfed45000-0xfed8ffff] could not be reserved
[    1.626204] system 00:05: [mem 0xfee00000-0xfeefffff] has been reserved
[    1.626869] system 00:06: [io  0x2000-0x20fe] has been reserved
[    1.630456] pnp: PnP ACPI: found 8 devices
[    1.635889] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
[    1.635926] NET: Registered PF_INET protocol family
[    1.635951] IP idents hash table entries: 262144 (order: 9, 2097152 bytes, linear)
[    1.638826] tcp_listen_portaddr_hash hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    1.638843] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    1.638852] TCP established hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    1.638956] TCP bind hash table entries: 65536 (order: 9, 2097152 bytes, linear)
[    1.639134] TCP: Hash tables configured (established 131072 bind 65536)
[    1.639155] UDP hash table entries: 8192 (order: 6, 262144 bytes, linear)
[    1.639217] UDP-Lite hash table entries: 8192 (order: 6, 262144 bytes, linear)
[    1.639269] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    1.639278] pci 0000:00:07.0: bridge window [io  0x1000-0x0fff] to [bus 01-2a] add_size 1000
[    1.639282] pci 0000:00:07.3: bridge window [io  0x1000-0x0fff] to [bus 2b-54] add_size 1000
[    1.639291] pci 0000:00:02.0: VF BAR 0 [mem 0x501d000000-0x5023ffffff 64bit pref]: assigned
[    1.639297] pci 0000:00:07.0: bridge window [io  0x4000-0x4fff]: assigned
[    1.639299] pci 0000:00:07.3: bridge window [io  0x5000-0x5fff]: assigned
[    1.639301] pci 0000:00:15.0: BAR 0 [mem 0x501c0d5000-0x501c0d5fff 64bit]: assigned
[    1.639340] pci 0000:00:15.3: BAR 0 [mem 0x501c0d7000-0x501c0d7fff 64bit]: assigned
[    1.639417] pci 0000:00:1e.0: BAR 0 [mem 0x501c0d8000-0x501c0d8fff 64bit]: assigned
[    1.639434] pci 0000:00:1f.5: BAR 0 [mem 0x7d120000-0x7d120fff]: assigned
[    1.639445] pci 0000:00:07.0: PCI bridge to [bus 01-2a]
[    1.639447] pci 0000:00:07.0:   bridge window [io  0x4000-0x4fff]
[    1.639452] pci 0000:00:07.0:   bridge window [mem 0x76000000-0x7bffffff]
[    1.639455] pci 0000:00:07.0:   bridge window [mem 0x4010000000-0x480fffffff 64bit pref]
[    1.639460] pci 0000:00:07.3: PCI bridge to [bus 2b-54]
[    1.639462] pci 0000:00:07.3:   bridge window [io  0x5000-0x5fff]
[    1.639466] pci 0000:00:07.3:   bridge window [mem 0x70000000-0x75ffffff]
[    1.639470] pci 0000:00:07.3:   bridge window [mem 0x4810000000-0x500fffffff 64bit pref]
[    1.639475] pci 0000:00:1c.0: PCI bridge to [bus 55]
[    1.639479] pci 0000:00:1c.0:   bridge window [mem 0x7d000000-0x7d0fffff]
[    1.639485] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
[    1.639487] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
[    1.639489] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
[    1.639490] pci_bus 0000:00: resource 7 [mem 0x70000000-0xbfffffff window]
[    1.639492] pci_bus 0000:00: resource 8 [mem 0x4000000000-0x3ffbfffffff window]
[    1.639494] pci_bus 0000:01: resource 0 [io  0x4000-0x4fff]
[    1.639495] pci_bus 0000:01: resource 1 [mem 0x76000000-0x7bffffff]
[    1.639497] pci_bus 0000:01: resource 2 [mem 0x4010000000-0x480fffffff 64bit pref]
[    1.639498] pci_bus 0000:2b: resource 0 [io  0x5000-0x5fff]
[    1.639500] pci_bus 0000:2b: resource 1 [mem 0x70000000-0x75ffffff]
[    1.639501] pci_bus 0000:2b: resource 2 [mem 0x4810000000-0x500fffffff 64bit pref]
[    1.639503] pci_bus 0000:55: resource 1 [mem 0x7d000000-0x7d0fffff]
[    1.639978] PCI: CLS 0 bytes, default 64
[    1.640004] DMAR: Intel-IOMMU force enabled due to platform opt in
[    1.640012] DMAR: No RMRR found
[    1.640013] DMAR: No ATSR found
[    1.640014] DMAR: IOMMU feature sc_support inconsistent
[    1.640016] DMAR: dmar0: Using Queued invalidation
[    1.640020] DMAR: dmar1: Using Queued invalidation
[    1.640053] Trying to unpack rootfs image as initramfs...
[    1.640341] pci 0000:00:02.0: Adding to iommu group 0
[    1.640381] pci 0000:00:00.0: Adding to iommu group 1
[    1.640403] pci 0000:00:04.0: Adding to iommu group 2
[    1.640424] pci 0000:00:06.0: Adding to iommu group 3
[    1.640438] pci 0000:00:07.0: Adding to iommu group 4
[    1.640449] pci 0000:00:07.3: Adding to iommu group 5
[    1.640459] pci 0000:00:08.0: Adding to iommu group 6
[    1.640468] pci 0000:00:0a.0: Adding to iommu group 7
[    1.640479] pci 0000:00:0b.0: Adding to iommu group 8
[    1.640496] pci 0000:00:0d.0: Adding to iommu group 9
[    1.640506] pci 0000:00:0d.3: Adding to iommu group 9
[    1.640516] pci 0000:00:0e.0: Adding to iommu group 10
[    1.640530] pci 0000:00:12.0: Adding to iommu group 11
[    1.640546] pci 0000:00:14.0: Adding to iommu group 12
[    1.640557] pci 0000:00:14.2: Adding to iommu group 12
[    1.640573] pci 0000:00:15.0: Adding to iommu group 13
[    1.640583] pci 0000:00:15.3: Adding to iommu group 13
[    1.640600] pci 0000:00:16.0: Adding to iommu group 14
[    1.640610] pci 0000:00:16.3: Adding to iommu group 14
[    1.640621] pci 0000:00:1c.0: Adding to iommu group 15
[    1.640634] pci 0000:00:1e.0: Adding to iommu group 16
[    1.640657] pci 0000:00:1f.0: Adding to iommu group 17
[    1.640668] pci 0000:00:1f.4: Adding to iommu group 17
[    1.640679] pci 0000:00:1f.5: Adding to iommu group 17
[    1.640691] pci 0000:00:1f.6: Adding to iommu group 17
[    1.640702] pci 0000:55:00.0: Adding to iommu group 18
[    1.640945] DMAR: Intel(R) Virtualization Technology for Directed I/O
[    1.640946] PCI-DMA: Using software bounce buffering for IO (SWIOTLB)
[    1.640947] software IO TLB: mapped [mem 0x000000003cc60000-0x0000000040c60000] (64MB)
[    1.646217] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2df10e7656b, max_idle_ns: 440795364873 ns
[    1.646254] clocksource: Switched to clocksource tsc
[    1.646994] workingset: timestamp_bits=46 max_order=22 bucket_order=0
[    1.654838] NET: Registered PF_ALG protocol family
[    1.654843] Key type asymmetric registered
[    1.654844] Asymmetric key parser 'x509' registered
[    1.654846] Asymmetric key parser 'pkcs8' registered
[    1.654883] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 247)
[    1.654910] io scheduler mq-deadline registered
[    1.654912] io scheduler kyber registered
[    1.656903] pcieport 0000:00:07.0: PME: Signaling with IRQ 122
[    1.657110] pcieport 0000:00:07.3: PME: Signaling with IRQ 123
[    1.657309] pcieport 0000:00:1c.0: PME: Signaling with IRQ 124
[    1.657895] vmd 0000:00:0e.0: PCI host bridge to bus 10000:e0
[    1.657899] pci_bus 10000:e0: root bus resource [bus e0-ff]
[    1.657901] pci_bus 10000:e0: root bus resource [mem 0x7c000000-0x7cffffff]
[    1.657903] pci_bus 10000:e0: root bus resource [mem 0x501b002000-0x501bffffff 64bit]
[    1.657924] pci 10000:e0:06.0: [8086:774d] type 01 class 0x060400 PCIe Root Port
[    1.657948] pci 10000:e0:06.0: PCI bridge to [bus e1]
[    1.657954] pci 10000:e0:06.0:   bridge window [io  0x0000-0x0fff]
[    1.657956] pci 10000:e0:06.0:   bridge window [mem 0x7c000000-0x7c0fffff]
[    1.658012] pci 10000:e0:06.0: PME# supported from D0 D3hot D3cold
[    1.658047] pci 10000:e0:06.0: PTM enabled (root), 4ns granularity
[    1.658120] pci 10000:e0:06.0: Adding to iommu group 10
[    1.658135] pci 10000:e0:06.0: Primary bus is hard wired to 0
[    1.658170] pci 10000:e1:00.0: [1344:5425] type 00 class 0x010802 PCIe Endpoint
[    1.658189] pci 10000:e1:00.0: BAR 0 [mem 0x7c000000-0x7c003fff 64bit]
[    1.658403] pci 10000:e1:00.0: Adding to iommu group 10
[    1.658459] pci 10000:e0:06.0: PCI bridge to [bus e1]
[    1.658467] pci 10000:e0:06.0: Primary bus is hard wired to 0
[    1.818537] Freeing initrd memory: 22840K
[    1.846165] pci 10000:e0:06.0: bridge window [mem 0x7c000000-0x7c0fffff]: assigned
[    1.846168] pci 10000:e0:06.0: bridge window [io  size 0x1000]: can't assign; no space
[    1.846170] pci 10000:e0:06.0: bridge window [io  size 0x1000]: failed to assign
[    1.846172] pci 10000:e1:00.0: BAR 0 [mem 0x7c000000-0x7c003fff 64bit]: assigned
[    1.846180] pci 10000:e0:06.0: PCI bridge to [bus e1]
[    1.846185] pci 10000:e0:06.0:   bridge window [mem 0x7c000000-0x7c0fffff]
[    1.846237] pcieport 10000:e0:06.0: can't derive routing for PCI INT A
[    1.846238] pcieport 10000:e0:06.0: PCI INT A: no GSI
[    1.846302] pcieport 10000:e0:06.0: PME: Signaling with IRQ 144
[    1.846366] vmd 0000:00:0e.0: Bound to PCI domain 10000
[    1.846567] Monitor-Mwait will be used to enter C-1 state
[    1.846573] Monitor-Mwait will be used to enter C-2 state
[    1.846577] Monitor-Mwait will be used to enter C-3 state
[    1.855591] ERST DBG: ERST support is disabled.
[    1.855667] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    1.855940] serial 0000:00:12.0: enabling device (0000 -> 0002)
[    1.856142] serial 0000:00:16.3: enabling device (0000 -> 0003)
[    1.856287] 0000:00:16.3: ttyS0 at I/O 0x3020 (irq = 19, base_baud = 115200) is a 16550A
[    1.856424] hpet_acpi_add: no address or irqs in _CRS
[    1.857809] brd: module loaded
[    1.857977] nvme nvme0: pci function 10000:e1:00.0
[    1.857979] i8042: PNP: PS/2 Controller [PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
[    1.857983] pcieport 10000:e0:06.0: can't derive routing for PCI INT A
[    1.857984] nvme 10000:e1:00.0: PCI INT A: no GSI
[    1.858348] i8042: Warning: Keylock active
[    1.860343] serio: i8042 KBD port at 0x60,0x64 irq 1
[    1.860346] serio: i8042 AUX port at 0x60,0x64 irq 12
[    1.860424] rtc_cmos 00:01: RTC can wake from S4
[    1.861197] rtc_cmos 00:01: registered as rtc0
[    1.861327] rtc_cmos 00:01: setting system clock to 2025-06-26T08:13:40 UTC (1750925620)
[    1.861348] rtc_cmos 00:01: alarms up to one month, y3k, 242 bytes nvram
[    1.861672] intel_pstate: Intel P-state driver initializing
[    1.861975] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input0
[    1.862338] intel_pstate: HWP enabled
[    1.862370] simple-framebuffer simple-framebuffer.0: framebuffer at 0x60800000, 0x8ca000 bytes
[    1.862372] simple-framebuffer simple-framebuffer.0: format=x8r8g8b8, mode=1920x1200x32, linelength=7680
[    1.862430] Console: switching to colour frame buffer device 240x75
[    1.863242] simple-framebuffer simple-framebuffer.0: fb0: simplefb registered!
[    1.863324] ENERGY_PERF_BIAS: Set to 'normal', was 'performance'
[    1.863476] microcode: Current revision: 0x0000000a
[    1.863641] IPI shorthand broadcast: enabled
[    1.863680] AES CTR mode by8 optimization enabled
[    1.864641] sched_clock: Marking stable (1858284738, 6029162)->(1895967595, -31653695)
[    1.864731] registered taskstats version 1
[    1.865475] nvme nvme0: allocated 64 MiB host memory buffer.
[    1.867668] Key type .fscrypt registered
[    1.867671] Key type fscrypt-provisioning registered
[    1.879745] nvme nvme0: 14/0/0 default/read/poll queues
[    1.881496] Key type encrypted registered
[    1.881583] BERT: [Hardware Error]: Skipped 1 error records
[    1.881585] BERT: Total records found: 1
[    1.881642] clk: Disabling unused clocks
[    1.882746]  nvme0n1: p1 p2 p3 p4 p5 p6 p7 p8 p9 p10
[    1.883864] Freeing unused kernel image (initmem) memory: 1748K
[    1.883872] Write protecting the kernel read-only data: 14336k
[    1.884445] Freeing unused kernel image (rodata/data gap) memory: 832K


