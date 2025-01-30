Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FDBA23659
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jan 2025 22:09:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0456846B2;
	Thu, 30 Jan 2025 21:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5PE_-cmKqOGB; Thu, 30 Jan 2025 21:09:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78FC984294
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738271341;
	bh=rm1X2iERP+p8zCDW1pXLY6+ld26f0LPqmx9BHrZwU70=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KcfR5bK12EMm+tf9IhPHdlB2ha/Vyx9u52rcsI1PYXQ5DTmDpcQfFRQzG4+3TF58h
	 LUfZnw+cFtxJZQqK7CphojTZHB8otg8lX6P1+EwUsKprG8uUZdiRFhKumZJwuBXUgX
	 1QnGn6pBGCAImi7pohWJXNMb5jF5Nqtm0MW/RNjRKwyk0xLPTt+3UvA+zHpyn2l5LF
	 D62U4Zv+Mef7OB4FwatQQqMs6anvOHStBWMXr40Vz+gKk9uC8zGOeCFr7AiGrtq0bT
	 drUaIqCWwtDg5ItRlfqfnf3/dLloTZkotdVK9m0q3xu1LPLx1eQhwix0o7vjoj39GT
	 k2g0NVf7m61VQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78FC984294;
	Thu, 30 Jan 2025 21:09:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EDC3112C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 21:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE2FE416CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 21:08:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tV_HRgORGSYO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jan 2025 21:08:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0526F416C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0526F416C7
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0526F416C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 21:08:56 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-21654fdd5daso22290235ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jan 2025 13:08:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738271336; x=1738876136;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rm1X2iERP+p8zCDW1pXLY6+ld26f0LPqmx9BHrZwU70=;
 b=QO+xjtQ+Ng/bbBK5xN1XKiuhkCsa+ESYd1nQhdqzGbJE1sqUxxWLFmUG2N9QyA16xl
 YyS7Da0lhTBr7HDntXDiORFIWibWX5qPrG6bP6XQTnx8dXG68rhLDbTHXL6nH7+7HhBa
 /YpHOO05u8gl9QtvHM70EGd6WM8ufcdSaLsrmr4lbfsGEXbK5URKfLwTX/j4wIvq86HQ
 al6HPuahwFlCTcOkHx/xT75wTrKhOpsxIgpM9JWOmYcFbpDxbUaqs3u+5wsh4hUn6cAo
 zoogSVHAy804OWWjSOF//QY39kWHlK46lgUVNed34JEy0qX1PWzaNBykI1dxmPyP2HB5
 GBbQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUL0Duy/BQkRn7aRQaS2UiuDjT/yCEKLD7KPv0bLa7hHjOiBaukIf7bdK22n987/GPCuLdvFJM+ikmJnMvwzdY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzXQf/nc4C2w+5+Svpeg9U2JGOh6LNbQ4yaRf4T11qdMaLcur3j
 h0DtdwOA1M1XqeQWij1nHjRmPR3lEOe7NDtf5olroRuLtDxYvL40616bHj0u8rM=
X-Gm-Gg: ASbGncu9nrHHvwClyqJ9VQy7doOhob0p+dr8APMIjrSQTCda52McKKcNfkrho6WkayM
 dKoYvK5CnCiAMmwnDjhszFASnTY2bxiuOiFbOsNdiRQCJaVIWswgDcaMXde1t/FIJldeUE4ZvKJ
 w4Db0T9SYyesJ4ksuOilDfcfoTeUxTYvEMoelm2AeR/bwI3fkuA8Ke5qqx/rmfRPNcSlhMLDa24
 /DT0Ii4OApcX44Qp3nPQKAU0SGUd1MQXjiSI5txx+yPWb73plvVk9D3H1SFxcJACDlXWWLRznN+
 b0o/sVUGrQkfs6P0txVbrS40ohmpQILjIYIrJibaaNy1GhkPWt5VXXvxaTJCnb/YaFtb
X-Google-Smtp-Source: AGHT+IFytJpJWVkdRYA+Ezx0WHKH2fQVJCtzSVkjl0gSC0WpyKs9BH+7GwXIy0+sKhOo2zmhKtBkyw==
X-Received: by 2002:a17:902:da86:b0:216:3c2b:a5d0 with SMTP id
 d9443c01a7336-21dd7dd8081mr112128225ad.51.1738271335846; 
 Thu, 30 Jan 2025 13:08:55 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21de31f7020sm18209125ad.76.2025.01.30.13.08.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Jan 2025 13:08:55 -0800 (PST)
Date: Thu, 30 Jan 2025 13:08:53 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250130130853.3dd7987f@hermes.local>
In-Reply-To: <531227ca-89fe-4398-8cba-3647be509454@intel.com>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1738271336;
 x=1738876136; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rm1X2iERP+p8zCDW1pXLY6+ld26f0LPqmx9BHrZwU70=;
 b=nMwicy9uHYENY2LNhdF507OZpL7WuabSpoWqpJBlrhdySQz3HbYcJk32lIeWK65A3+
 j/ibbjns8/XGjkqNjbIDZGHlKHoVwATSlfFi0u5jJEXgHZcmFqyb5hRc2p9eMJOE2E6L
 qfhbxhBZDWp0n+jh4llhuZi7nu2E4OxrrUKZbfrD+voDAlQF66emSoXsy5x9t0PzF/o+
 THQHH2lBG6+tgcmSqoP43lP4CDn6T+nmQWQMUOwAdB13md2AK8R+IMVh6V8uF+LNg23Y
 TdNe1k6GrisqRR5gCj89EhygBtnGq/bhyfNQDAIQLp0ObSER935sG6oZ6yiUZSZhGuIA
 wXkw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=nMwicy9u
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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

On Thu, 30 Jan 2025 21:17:30 +0200
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
> > I am using:
> > 
> > 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> > 	Subsystem: Intel Corporation Device 0000
> > 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> > 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> > 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> > 	Capabilities: [40] Power Management version 3
> > 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> > 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> > 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> > 	Capabilities: [100] Advanced Error Reporting
> > 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> > 	Capabilities: [1c0] Latency Tolerance Reporting
> > 	Capabilities: [1f0] Precision Time Measurement
> > 	Capabilities: [1e0] L1 PM Substates
> > 	Kernel driver in use: igc
> > 	Kernel modules: igc
> > 
> > 
> > Using both Debian testing and my own kernel built from 6.12, the igc
> > driver appears broken after resume.  

Before suspend

$ sudo ethtool enp90s0
Settings for enp90s0:
	Supported ports: [ TP ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	                        2500baseT/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	                        2500baseT/Full
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Auto-negotiation: on
	Port: Twisted Pair
	PHYAD: 0
	Transceiver: internal
	MDI-X: Unknown
	Supports Wake-on: pumbg
	Wake-on: d
        Current message level: 0x00000007 (7)
                               drv probe link
	Link detected: yes




>  From which system state are you resuming?

Suspend to ram

> 
> > 
> > After resuming the device is down and no address present.
> > Attempts to set link up manually fail.  
> 
> Did you get any errors in the dmesg log?

See below.

> What is the firmware version on your device (you can get it by running 
> ethtool -i)?

$ sudo ethtool -i enp90s0
driver: igc
version: 6.12.9-amd64
firmware-version: 2017:888d
expansion-rom-version: 
bus-info: 0000:5a:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

The error after resume is:
$ ip -br a
lo               UNKNOWN        127.0.0.1/8 ::1/128 
enp87s0          DOWN           
enp90s0          DOWN           
enp2s0f0np0      UP             
enp2s0f1np1      UP             
wlp91s0          DOWN           

$ sudo ip li set enp90s0 up
RTNETLINK answers: No such device


> > If I do rmmod/modprobe of igc it comes back.
> > 
> > Doing a bit of bisectting but it is slow going.  
> 
> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you 
> share more details about your system so we can create a similar setup?

Dmesg starting with suspending.

[14229.851637] Lockdown: systemd-logind: hibernation is restricted; see man kernel_lockdown.7
[14230.089271] PM: suspend entry (deep)
[14230.093900] Filesystems sync: 0.004 seconds
[14230.095179] Freezing user space processes
[14230.096559] Freezing user space processes completed (elapsed 0.001 seconds)
[14230.096561] OOM killer disabled.
[14230.096562] Freezing remaining freezable tasks
[14230.097744] Freezing remaining freezable tasks completed (elapsed 0.001 seconds)
[14230.097773] printk: Suspending console(s) (use no_console_suspend to debug)
[14230.134978] serial 00:01: disabled
[14230.607766] ACPI: PM: Preparing to enter system sleep state S3
[14230.618973] ACPI: PM: Saving platform NVS memory
[14230.619096] Disabling non-boot CPUs ...
[14230.621589] smpboot: CPU 19 is now offline
[14230.627525] smpboot: CPU 18 is now offline
[14230.630805] smpboot: CPU 17 is now offline
[14230.635371] smpboot: CPU 16 is now offline
[14230.641840] smpboot: CPU 15 is now offline
[14230.649528] smpboot: CPU 14 is now offline
[14230.658873] smpboot: CPU 13 is now offline
[14230.666231] smpboot: CPU 12 is now offline
[14230.672531] smpboot: CPU 11 is now offline
[14230.684986] smpboot: CPU 10 is now offline
[14230.689311] smpboot: CPU 9 is now offline
[14230.695249] smpboot: CPU 8 is now offline
[14230.698769] smpboot: CPU 7 is now offline
[14230.704500] smpboot: CPU 6 is now offline
[14230.707715] smpboot: CPU 5 is now offline
[14230.714217] smpboot: CPU 4 is now offline
[14230.717362] smpboot: CPU 3 is now offline
[14230.723696] smpboot: CPU 2 is now offline
[14230.730325] smpboot: CPU 1 is now offline
[14230.743949] ACPI: PM: Low-level resume complete
[14230.744013] ACPI: PM: Restoring platform NVS memory
[14230.745033] Enabling non-boot CPUs ...
[14230.745051] smpboot: Booting Node 0 Processor 1 APIC 0x1
[14230.747051] CPU1 is up
[14230.747063] smpboot: Booting Node 0 Processor 2 APIC 0x8
[14230.754733] CPU2 is up
[14230.754744] smpboot: Booting Node 0 Processor 3 APIC 0x9
[14230.758406] CPU3 is up
[14230.758417] smpboot: Booting Node 0 Processor 4 APIC 0x10
[14230.765655] CPU4 is up
[14230.765665] smpboot: Booting Node 0 Processor 5 APIC 0x11
[14230.768770] CPU5 is up
[14230.768811] smpboot: Booting Node 0 Processor 6 APIC 0x18
[14230.776704] CPU6 is up
[14230.776715] smpboot: Booting Node 0 Processor 7 APIC 0x19
[14230.780617] CPU7 is up
[14230.780630] smpboot: Booting Node 0 Processor 8 APIC 0x20
[14230.795282] CPU8 is up
[14230.795321] smpboot: Booting Node 0 Processor 9 APIC 0x21
[14230.801205] CPU9 is up
[14230.801222] smpboot: Booting Node 0 Processor 10 APIC 0x28
[14230.823488] CPU10 is up
[14230.823518] smpboot: Booting Node 0 Processor 11 APIC 0x29
[14230.829138] CPU11 is up
[14230.829151] smpboot: Booting Node 0 Processor 12 APIC 0x30
[14230.838271] core: cpu_atom PMU driver: PEBS-via-PT 
[14230.838276] ... version:                5
[14230.838278] ... bit width:              48
[14230.838279] ... generic registers:      6
[14230.838279] ... value mask:             0000ffffffffffff
[14230.838280] ... max period:             00007fffffffffff
[14230.838281] ... fixed-purpose events:   3
[14230.838281] ... event mask:             000000070000003f
[14230.839284] CPU12 is up
[14230.839327] smpboot: Booting Node 0 Processor 13 APIC 0x32
[14230.849421] CPU13 is up
[14230.849433] smpboot: Booting Node 0 Processor 14 APIC 0x34
[14230.859509] CPU14 is up
[14230.859526] smpboot: Booting Node 0 Processor 15 APIC 0x36
[14230.867307] CPU15 is up
[14230.867320] smpboot: Booting Node 0 Processor 16 APIC 0x38
[14230.879578] CPU16 is up
[14230.879604] smpboot: Booting Node 0 Processor 17 APIC 0x3a
[14230.888018] CPU17 is up
[14230.888068] smpboot: Booting Node 0 Processor 18 APIC 0x3c
[14230.898765] CPU18 is up
[14230.898778] smpboot: Booting Node 0 Processor 19 APIC 0x3e
[14230.907338] CPU19 is up
[14230.915217] ACPI: PM: Waking up from system sleep state S3
[14231.077999] spd5118 0-0050: Failed to write b = 0: -6
[14231.078021] spd5118 0-0050: PM: dpm_run_callback(): spd5118_resume [spd5118] returns -6
[14231.078162] spd5118 0-0050: PM: failed to resume async: error -6
[14231.096445] nvme nvme0: D3 entry latency set to 10 seconds
[14231.100118] nvme nvme0: 20/0/0 default/read/poll queues
[14231.107107] i40e 0000:02:00.0: FW LLDP is disabled, attempting SW DCB
[14231.109039] serial 00:01: activated
[14231.109521] nvme nvme1: 8/0/0 default/read/poll queues
[14231.114757] i40e 0000:02:00.0: SW DCB initialization succeeded.
[14231.182024] i40e 0000:02:00.1: FW LLDP is disabled, attempting SW DCB
[14231.189703] i40e 0000:02:00.1: SW DCB initialization succeeded.
[14231.260752] usb 3-2.2: reset high-speed USB device number 6 using xhci_hcd
[14231.596571] OOM killer enabled.
[14231.596573] Restarting tasks ... 
[14231.597134] mei_hdcp 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04: bound 0000:00:02.0 (ops i915_hdcp_ops [i915])
[14231.597539] done.
[14231.597547] random: crng reseeded on system resumption
[14231.599560] PM: suspend exit
[14234.740539] usb 3-2.2: reset high-speed USB device number 6 using xhci_hcd
[14238.192310] usb 3-2.2: reset high-speed USB device number 6 using xhci_hcd

Note: I blacklisted i40e but that seems to act only at boot time, not on resume...
