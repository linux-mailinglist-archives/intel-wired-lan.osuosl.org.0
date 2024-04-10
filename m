Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4208A01E2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 23:20:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FD9660EA2;
	Wed, 10 Apr 2024 21:20:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MTieNtWCdlfr; Wed, 10 Apr 2024 21:20:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33CBE60E9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712784053;
	bh=g6ekiFLA/bmLDiyq+3gVUA+kaAF0OcFabHDmCSx7h2A=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MT8zbFw6KmEnrq7znDJcmO1I1d8DHw0splzzK8Jl7qALGhRLeyyPrRow/bdlN6uUk
	 A12/+3sb0ZdpBAx6aF9nkwJjNdcx7iTrcqmNPQ7djb39xcO98lferifjKBevl5OZAg
	 sk2i05uov3/L46hVcIsq+jn2Ge7y9BpMRLbQ6wgwo0ZNPetP8SIyTCqWMIyYU0jrz/
	 bffVEaIfWfe6m/kF8UZiMTLScL86HYqd5KIuwrTELSBmTWiSFoV4W/fxjYrxMvZkhM
	 jcDY/cI1i4l9rrfNC/C63bC5DxwvYVJcsXKKe1hN/hkQcmjKUyCxjdXZJcETVW9G4Q
	 HMX7C6kkr2sLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33CBE60E9E;
	Wed, 10 Apr 2024 21:20:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86F931BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71F6941506
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:20:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPgkGxa2HeOD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 21:20:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=tglx@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 54E6E4109E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54E6E4109E
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54E6E4109E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:20:48 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240410114828.25581-2-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-2-lakshmi.sowjanya.d@intel.com>
Date: Wed, 10 Apr 2024 23:20:44 +0200
Message-ID: <87frvs3oer.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712784045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g6ekiFLA/bmLDiyq+3gVUA+kaAF0OcFabHDmCSx7h2A=;
 b=FwHViD6IqUH6Dt4mypFv+cxXod1xbN1HB4zKr64xGYPMeUgzzfMUVoJ3kvd+VB2CvQpdqb
 fHo+D2Hfhz+bnR9R4itTegQZbQC9gWjqfNAP97Llf0WXcwoDD5xaImLbrPk+rqf6FjuFyB
 fHpeCmy15bhH+oQNJH7DqekBYuMT//0O0aXrqBfHWIoAPFByXVaF9lHZVB2LgJDfSvlr0O
 xM9V1b7QNSNIm8LxQB3w5XPt/I8/WZ58t03zkl9PF+P+kz8pp+8somxMWj8WR2dOCLhV3k
 9zeaX8Ie/CHyXq55h5LUCieWmzP0hClz+gEEztT1OutcdXmqjLFiHcEhoESLog==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712784045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g6ekiFLA/bmLDiyq+3gVUA+kaAF0OcFabHDmCSx7h2A=;
 b=TNxLVhfTSGEjRdOUAJEdbT0v1iAfoxcexXJbxNXc0RJ2rOoS0urv9iS637SyXee84icb4A
 v2DWCNmgXp4sKaDg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=FwHViD6I; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=TNxLVhfT
Subject: Re: [Intel-wired-lan] [PATCH v6 01/11] x86/tsc: Add base clock
 properties in clocksource structure
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 joabreu@synopsys.com, intel-wired-lan@lists.osuosl.org,
 mcoquelin.stm32@gmail.com, thejesh.reddy.t.r@intel.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, andriy.shevchenko@linux.intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 10 2024 at 17:18, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>
> Add base clock hardware abstraction in clocksource structure.
>
> Add clocksource ID for x86 ART(Always Running Timer). The newly added
> clocksource ID and conversion parameters are used to convert time in a
> clocksource domain to base clock and vice versa.
>
> Convert the base clock to the system clock using convert_base_to_cs() in
> get_device_system_crosststamp().

In https://lore.kernel.org/all/875xxhi1ty.ffs@tglx I asked you to
provide a change log which explains the WHY and not the WHAT. The new
change log still fails to explain WHY this change is needed and which
problem it is trying to solve.

I further asked you to do:

    1) Add the clocksource_base struct and provide the infrastructure in
       get_device_system_crosststamp()

    2) Make TSC/ART use it

But this still does #1 and #2 in one go.

If you don't understand my review comments, then please ask. If you
disagree with them then please tell me and argue with me.

Just ignoring them is not an option.

Thanks,

        tglx
