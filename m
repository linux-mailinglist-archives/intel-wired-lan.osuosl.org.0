Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6279EA29F8D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 05:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8BA682154;
	Thu,  6 Feb 2025 04:13:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W3C6AO1fdULc; Thu,  6 Feb 2025 04:13:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B36E8215E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738815215;
	bh=TM7UR4/GE+Pw4bH5HnjLUytze5dwvUQ6PB2Awes6Qps=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=scZ8ZTIbeDrqynhOUZxCEIb/oB97K6wIdzrCcR3v0hNwezDcpiafeu1DoZvAz5ixg
	 O3GbU81TK0VM9+iyV4txa62nSo4h21rp5XPXY5HsAyFfz5qgnCmmVTbL30EjaqQmQp
	 x6Ch63jB39HvA3S58bzN3ggXFq7ZV8MvuxtW2o+2v6/bow0U0ThmSOcWULgF5XHR3/
	 9f5VNqXrNOtIr6gADqkfS82kS3Lm9m2HjD8ZjJKuOpegdx2O7DlGlwEGO4aDVkaiZt
	 8uv9mME6tqoySdeNCucAk6axuYVU0utZ4IFvjHnzff0J61z04ASPVOtlb/7IrldKeq
	 eaWQfnmvbsMXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B36E8215E;
	Thu,  6 Feb 2025 04:13:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1997112F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 04:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F241C8215E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 04:13:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duKrSVn-FE3u for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 04:13:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=stephen@networkplumber.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 635AD82140
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 635AD82140
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 635AD82140
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 04:13:30 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-21f2339dcfdso6671415ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Feb 2025 20:13:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738815209; x=1739420009;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TM7UR4/GE+Pw4bH5HnjLUytze5dwvUQ6PB2Awes6Qps=;
 b=sYUUUqa7RN87trMhcXey1J7Xlrf1oeS1CXrV5BwlrRNmlhtwC72bRG/MBStcLqy+CT
 MphK+whxe0+ALZcb/+19vAzj/4ZfZhWf+iPWTSpLD7OLwvtsONnHtEkm7Pf9YLksnzEM
 ozhgzw9C2ONU8tN7wZE63XCC0LASESE2A1ZR/t7up0UAVtY3D4v5TvQxXc9XhZb+31n/
 hQUrZKoa4Xo4RSCy9v7+EUDvtZjcxclOyM+FynJFEbjdXtOXAfm8/e8wdXAroBDM+mtB
 tlyNuWWQLNOsiF3S3CVC6Qx8NWERBAhnZ9JvfVLusnKdeXZtmoLHNVC+US10wsPgCo8V
 uPOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUCTGYSDLwVnAz4XDD4+1vslYklipdNWRN3YZoMJlKxfY3WeVo5+7Ovjes8jZ162yNOasmWE0VfWVeEVuumLvw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz9Mmb5GySnUW+0oXjabnIpwxkSZKr1ffPebyvyykKfMqwIRPUb
 fT19AkvvuENdeuzHge+iZrvwrTB4dtH/HS5sgW1OUcZLiv+xa/SA55yOd4CYNi0=
X-Gm-Gg: ASbGncs23eCD5TEn+9zyGnRE9ZqwYnKThPNda6zsxf45ecXJXZ02+SOtnvclrp3odU/
 +AEPA4Nn4RmjNQUlNQipYmHMzIOS9HsCUQApANvsShoRwRqyJ5anEcLpsB8YEA5CfEXgEqF7R8s
 TRYCzF9sTD1F0OnF3Xh4qhYzcljav8s3lSh2qwHLRIQtNjNPaQ32GEJAfBsnmTCS2xuIdEaA1zm
 vrJhEudQBXOWLcAb6gVYVQw8PZXMV6qheGx2DOMCmb/6Qvpf02F7qNHOQI0hAcAWaLXzDEtlDgU
 ffMkUSH4mhHyYijzccJBZKi97AZA4XWLmW/oTqR14Ez+X/VPdLAUckfOjFfGu+iw2pxQ
X-Google-Smtp-Source: AGHT+IE8rYcHczDEOLJjxPsFCcDaab370s4BRnPMuORHQVz3/IK5X5+6wcLsGlLQrtqVgYkARgFFTA==
X-Received: by 2002:a17:903:2406:b0:216:4b6f:dde5 with SMTP id
 d9443c01a7336-21f2f19b5a0mr35889315ad.13.1738815209588; 
 Wed, 05 Feb 2025 20:13:29 -0800 (PST)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21f3683d551sm2136055ad.110.2025.02.05.20.13.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2025 20:13:29 -0800 (PST)
Date: Wed, 5 Feb 2025 20:13:27 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Cc: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250205201327.7a4555cf@hermes.local>
In-Reply-To: <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
 <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1738815209;
 x=1739420009; darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TM7UR4/GE+Pw4bH5HnjLUytze5dwvUQ6PB2Awes6Qps=;
 b=WZn/9+Mv0L1HRhYoq9MvqbKvoK63dk2Lre0Vaj6FKvr7CPmMnDtLvhh2PXWzOUfyAa
 UcXDgsQ6Cc3//W59FdBt7s+8l+oD+YPvnKjRYErZ73Oy7drmjZ3AueaFyBDfOAgUzDoI
 Bhu7ZQXRmcPaJIc9+0fKOPbjmlKZBG3Elr8jLUWL+ga981ZHukVRwvCZIiQbAKHdzPEd
 sx03TyqZZrWxYKhJhcfqAuophLurzyhQS+dc/FeCmwiG9E56KEk98cq+Fxj6L3V5A8s+
 exv0fC+EnmoJsrC2/gd3nWxoyHXl50yZCjclb/hoDVqYL000VEj5M0rTyTLfGD7X2zAx
 WRng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=networkplumber.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=WZn/9+Mv
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

On Wed, 5 Feb 2025 12:36:31 +0200
"Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:

> On 1/31/2025 3:21 AM, Stephen Hemminger wrote:
> > On Thu, 30 Jan 2025 21:17:30 +0200
> > "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> >   
> >> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:  
> >>> I am using:
> >>>
> >>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
> >>> 	Subsystem: Intel Corporation Device 0000
> >>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
> >>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
> >>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
> >>> 	Capabilities: [40] Power Management version 3
> >>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
> >>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> >>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
> >>> 	Capabilities: [100] Advanced Error Reporting
> >>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
> >>> 	Capabilities: [1c0] Latency Tolerance Reporting
> >>> 	Capabilities: [1f0] Precision Time Measurement
> >>> 	Capabilities: [1e0] L1 PM Substates
> >>> 	Kernel driver in use: igc
> >>> 	Kernel modules: igc
> >>>
> >>>
> >>> Using both Debian testing and my own kernel built from 6.12, the igc
> >>> driver appears broken after resume.  
> >>
> >>   From which system state are you resuming?
> >>  
> >>>
> >>> After resuming the device is down and no address present.
> >>> Attempts to set link up manually fail.  
> >>
> >> Did you get any errors in the dmesg log?
> >> What is the firmware version on your device (you can get it by running
> >> ethtool -i)?
> >>  
> >>> If I do rmmod/modprobe of igc it comes back.
> >>>
> >>> Doing a bit of bisectting but it is slow going.  
> >>
> >> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
> >> share more details about your system so we can create a similar setup?  
> > 
> > Given that error reported is -ENODEV, might be a generic netdev problem not
> > just for igc device.
> >   
> 
> We weren't able to reproduce this issue on our systems, even though we 
> tried several suspend-resume cycles on different kernels and different 
> systems.
> 
> However, a few days ago we received a comment in a BZ about an issue 
> similar to yours. In there adding a short delay in igc_resume function
> https://bugzilla.kernel.org/show_bug.cgi?id=219143
> https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123
> 
> 
> 
> Can you try to see if it fixes your issue as well?

I tried the proposed delay and it had no impact.
Any idea of other things to instrument?
