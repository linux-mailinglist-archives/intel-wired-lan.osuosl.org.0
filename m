Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCDC881121
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:40:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D3A340839;
	Wed, 20 Mar 2024 11:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6JFpdZipQhz; Wed, 20 Mar 2024 11:40:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D7F3406FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710934818;
	bh=pwE/GBJYLkV/7/yUUomeUZHide/jRSkFJUzETBE/thU=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G0X+OYCiaRLnmMVs/OKdXCQTrr8Gf0RGqi/Li4lfyW5hPkIO0WurDk3wyxz7ormsF
	 1zX3xVYpXakdS3Z1VY7z7RRVF5T6hZ3UMzDKJBOxWTCZo/jxHUadD3rCAqAnq/Tqhn
	 7hiOphxD+KA8dDj20lR9OugVvRwkshMlJvx6hCrKzdT+pZNzM2T0f0OKzz219yISVU
	 1QtGJo8Ptb6KfnhH936kVzi3dsbvH18oFY9/JRSQvaplbh0yeYccHEuR5qmUSFZVd8
	 P2IIU4oCBxUz2TIrk8UD4qxB/dOn3jUYyedME2efOA+O68o/xrmrEJ0Kox+7GEhBJQ
	 0c5sr6KWhYiNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D7F3406FC;
	Wed, 20 Mar 2024 11:40:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A7281BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 35102407BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sZsDGimKnos7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:40:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4BBAA406FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BBAA406FC
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BBAA406FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:40:14 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <875xxhi1ty.ffs@tglx>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-2-lakshmi.sowjanya.d@intel.com> <875xxhi1ty.ffs@tglx>
Date: Wed, 20 Mar 2024 12:30:52 +0100
Message-ID: <87zfutgmxf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1710934253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pwE/GBJYLkV/7/yUUomeUZHide/jRSkFJUzETBE/thU=;
 b=MET3jxyqm1sXOQn5gphkidNCjfG+Tr/p2/ki9n+/AqGfDi6uzTb2aT/MyL+ioOWks6ndHO
 MI95oCOA1zQP2cwvzPcoi7DRiq7z2zXhoQrgJCUxMxEHjz9x4uvFfD/XYPX3zBQTUr65XL
 lNTFECeMgVwWMspuPc3Omri78q9n2MBo8amNB3KLmOlgidIbjna0YRPG5+YXucDf8l0X6t
 Xe5iJoS5QZsKia9g+j3+SDVmp31i41KL3GoBs5cawaUNf+yvjjaPvcxueJEeMTUBz6dcYS
 q1ELLfg0R+vKzoni0nnLM5iim2DRcVOb6v7gUhRjGS7rNFMU1AXrXD/j6iMeew==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1710934253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pwE/GBJYLkV/7/yUUomeUZHide/jRSkFJUzETBE/thU=;
 b=KD+F/3vIh9T1cQ/PXywhSvE5rgPwIOfCSkG52QZ7ALq7BZCiJ1z2qhgQYCog3Dp3vC7iyf
 WkvevLWZUyLc3cCw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=MET3jxyq; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=KD+F/3vI
Subject: Re: [Intel-wired-lan] [PATCH v5 01/11] x86/tsc: Add base clock
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 20 2024 at 12:23, Thomas Gleixner wrote:

> On Tue, Mar 19 2024 at 18:35, lakshmi.sowjanya.d@intel.com wrote:
>> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>>
>> Add base clock hardware abstraction in clocksource structure.
>>
>> Add clocksource ID for x86 ART(Always Running Timer).
>
> This change log tells the WHAT but not the WHY. You have to add context
> and explanation WHY this change is required and why it makes sense.
>
> Also I think this should be ordered differently:
>
>   1) Add the clocksource_base struct and provide the infrastructure in
>      get_device_system_crosststamp()
>
>   2) Make TSC/ART use it

    2a) Remove the art to tsc conversion in drivers
    2b) Remove art to tsc

>   3) Add the realtime muck
>
> Thanks,
>
>         tglx
