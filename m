Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5919A2B303
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 21:09:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58EBA810AF;
	Thu,  6 Feb 2025 20:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yax23nsCtg-f; Thu,  6 Feb 2025 20:09:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C5D380D28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738872550;
	bh=/XHZ3XId1wwTNkI6hKEAPNvk648YwrLL3u2UCFT2pPE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UrN6AbFRzHYkK0/lELs5dzh4c6vFU4Y4aLh0tMTfVwVahmuUcuk16q2sKvcD8CCGA
	 mU52OPDs/bw17c7A1iqwEud6Mo2VaF+GRlEMqGyqPT55MQe0yBvD4m6Tn4ldx/7dmn
	 2YlaWNTCo9/zsfxVtLpdg5a9gDxxa9Yfo8TfomcKQkGOld6TtRE3yr0xuTLvdPW2h2
	 hG4IUJyaC5RdVjVGR1Zu23B4aICk8CgUFUfkREBVPnNbNei1+CewWueuckdDf5In5B
	 xrvACtZpkM/UjYjcJ4DJlXpXUYc6pC0q/IR+SqoxWCINu8IEH2sUfRthumtwztxdzW
	 TWZXFdNSyx16Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C5D380D28;
	Thu,  6 Feb 2025 20:09:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 71A54C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 20:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6101B60605
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 20:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ICLEIzsx7kh4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 20:09:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C2A90606C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2A90606C7
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2A90606C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 20:09:06 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-21f20666e72so28896515ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Feb 2025 12:09:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738872546; x=1739477346;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/XHZ3XId1wwTNkI6hKEAPNvk648YwrLL3u2UCFT2pPE=;
 b=ZHiCBIw9p7KPxUXHPZGoqku8sdRCxriI5aC7qcZU975rHNNfb2Jkcr0gAxsQ5DW2+c
 UNKxNj8dicIgnRMFw6m3E7wNvqCkUwQP+MgV5fJDcsUE+OpPCwn0d6+jOWGt6imt42oj
 S2Bz8ECIHwdn6ApIE8iwTwJ0uRW+e4gcmJlJeccMptQqa76rh8wF/HdvYEhHvWVMlTXU
 OFwA6IG/HeAGh2E1XBB4fXdyID0QPuyfXJ1mbIcXv0jq4lWMgC9qRdwomGNrAWzC/Ki8
 8kosmeKcH8WNZ++wRG34TY6dcWYfIayRPrcMSRj9dtZpJwtq4aR4opmnMjsn5pSk3L63
 738w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxKr70pyoGWhH+pjbuQgxD+1Zu1R5pYcIMWBA4+rUPttmzezPkrqkwDuaoSostRKUiEgkm7cNaSa6Q3XwDfN4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw+wudIFKq4B0MvQFrNa2+NDliNOJZpEgSBmFyWvrxIR2sCP2Jm
 DcBfba6BCzmSxUfoFivsa+7zkvCUL7yLetf0aIywyr/sSOjjaPnXIG+v6L/39KY=
X-Gm-Gg: ASbGncs++bNIv0jmsjWYzd4+v+6x6hDCTUSQ2kj8i2PMvemibgMmV4FnZs0dbtH3G7j
 7NCaeesDmCWU3wtTh0WaCCUtcyZSTWl7hrCCUbkX6B2/7SHYTA4sGCvNqIQsATyFcV+YNvIsc69
 LtjrTrHRJYQRK4gIQk//HbRhunjgPcoD9pqZ/5qlyaQWLnEMI7f0/GbwFNHNqqyFOL1dvJPrqGr
 qgItexW4nrUWR/k3Sq2hXtGbm8OYwW2d/4u2Vb6oh8k4LJIQR8wbJ2hKGJSsj2eXzxCBqE1Ivc3
 5GBN3k0TiWrDHy92j6xwhlw+WlrVxAihzGwkDGlPn14WUBWmOxXVQ7sVChRhQXQ5Jg5g
X-Google-Smtp-Source: AGHT+IGcAJjyMZ2CaXIYexp0oLzdTMwRPxLZ+rT+casCzQmhPYBDxZPqcSWh5xCFIDpSJuxFSkDLlA==
X-Received: by 2002:a05:6a21:b85:b0:1e1:9662:a6f2 with SMTP id
 adf61e73a8af0-1ee03b70c23mr1242858637.35.1738872545912; 
 Thu, 06 Feb 2025 12:09:05 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73048ae7baasm1706112b3a.73.2025.02.06.12.09.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2025 12:09:05 -0800 (PST)
Date: Thu, 6 Feb 2025 12:09:03 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250206120903.19db6882@hermes.local>
In-Reply-To: <4f913b04-36d1-58fd-bc93-666eaa6cc756@intel.com>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
 <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
 <20250205201327.7a4555cf@hermes.local>
 <4f913b04-36d1-58fd-bc93-666eaa6cc756@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1738872546;
 x=1739477346; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/XHZ3XId1wwTNkI6hKEAPNvk648YwrLL3u2UCFT2pPE=;
 b=SO2vmO5Tj3v+UAEF2kpIHmPkR7cQx7QPY1Nz4NHz5SeWpXj/6BXTSsJpUgL/0L/rSn
 Rrz3SP+TBl1nk3fVs2/v3gCeuZZvtpH6mLiC+dgJ5CBzVEdrPbEFS+grZIjbYpAP9Oct
 iUfs+J52WnWxi6b3fEJNSzGXUZic1ibcj1VRg/ocDsRcatuqbjNggQeONeHocorLh0Yl
 wetqAFtd0HKYLf0BbNeYHPoY3FpK0dgXaym5N2rDzJrkPBURyS/uFm75haaF9nv1B9rI
 xCwmspkIK5noIE0JN+KdhNBco8jHibzsD62PwcH/K0HQStOLkSTD3DR36yymQErNNMD0
 Vzlg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=SO2vmO5T
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

On Thu, 6 Feb 2025 15:17:00 +0200
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 2/6/2025 6:13 AM, Stephen Hemminger wrote:
> > On Wed, 5 Feb 2025 12:36:31 +0200
> > "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >   
> >> On 1/31/2025 3:21 AM, Stephen Hemminger wrote:  
> >>> On Thu, 30 Jan 2025 21:17:30 +0200
> >>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >>>      
> >>>> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:  
> >>>>> I am using:
> >>>>>
> >>>>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> >>>>> 	Subsystem: Intel Corporation Device 0000
> >>>>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> >>>>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> >>>>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> >>>>> 	Capabilities: [40] Power Management version 3
> >>>>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> >>>>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> >>>>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> >>>>> 	Capabilities: [100] Advanced Error Reporting
> >>>>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> >>>>> 	Capabilities: [1c0] Latency Tolerance Reporting
> >>>>> 	Capabilities: [1f0] Precision Time Measurement
> >>>>> 	Capabilities: [1e0] L1 PM Substates
> >>>>> 	Kernel driver in use: igc
> >>>>> 	Kernel modules: igc
> >>>>>
> >>>>>
> >>>>> Using both Debian testing and my own kernel built from 6.12, the igc
> >>>>> driver appears broken after resume.  
> >>>>
> >>>>    From which system state are you resuming?
> >>>>     
> >>>>>
> >>>>> After resuming the device is down and no address present.
> >>>>> Attempts to set link up manually fail.  
> >>>>
> >>>> Did you get any errors in the dmesg log?
> >>>> What is the firmware version on your device (you can get it by running
> >>>> ethtool -i)?
> >>>>     
> >>>>> If I do rmmod/modprobe of igc it comes back.
> >>>>>
> >>>>> Doing a bit of bisectting but it is slow going.  
> >>>>
> >>>> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
> >>>> share more details about your system so we can create a similar setup?  
> >>>
> >>> Given that error reported is -ENODEV, might be a generic netdev problem not
> >>> just for igc device.
> >>>      
> >>
> >> We weren't able to reproduce this issue on our systems, even though we
> >> tried several suspend-resume cycles on different kernels and different
> >> systems.
> >>
> >> However, a few days ago we received a comment in a BZ about an issue
> >> similar to yours. In there adding a short delay in igc_resume function
> >> https://bugzilla.kernel.org/show_bug.cgi?id=219143
> >> https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123
> >>
> >>
> >>
> >> Can you try to see if it fixes your issue as well?  
> > 
> > I tried the proposed delay and it had no impact.
> > Any idea of other things to instrument?
> >   
> 
> 
> Has the adapter worked with a different kernel? Can you try to reproduce 
> the issue over kernel 6.9?
> 
> Is the LAN cable connected to the igc adapter? Does it maintain link 
> during suspend?
> 
> Also, I saw that on your board you have three more adapters, I assume 
> that enp2s0f0np0 and enp2s0f0np1 are i40e adapters. Does this issue also 
> happen to enp87s0?

This is a new machine, and not sure if it ever worked.
I can boot some older distro via USB if that helps.

The LAN cable is always connected (it is a desktop box), and the
10G NIC's are not used; they are connected by a loopback cable and
used for DPDK testing occasionally.

It does work in Windows...
