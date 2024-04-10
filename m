Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0171D8A0316
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 00:15:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA02D60EB9;
	Wed, 10 Apr 2024 22:15:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCKonJ6caEbK; Wed, 10 Apr 2024 22:15:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D847460EA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712787337;
	bh=yv1aoSAnbbHpJLpzRKC+j97D6+Bc6CY0CLsHS2K8ILg=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N886/bxZU6TfyWyRRmFug00wbsxZrbyaxZpmtqOEx0uhMMieeUz64CMHnRLc2M4LQ
	 bZeXaawxVqRocsMwT15SuMsXSlEB6T2GIZhpng1Ec68GjlSilmDWdsbyVqtJSKeN5P
	 TlUqbebKlHGR67ae/OC8p0Mau77kjwNQFs8g8+0Yfyk1n2I61iDyIfFOcMveh7I3L2
	 Alu2P4+M1H3vORTC7BQQ9MfHzvP4gH4yjkr5aeO/9DIE6D1P/fjLBDAa3VRDHzNST5
	 38PXlVP8RPRGM+FJwNNZRIxKFGRdHzG7AS5mgrJHUOh2k1++aKOUtWmmheNUiihbDe
	 C4CRDpUNCZURw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D847460EA9;
	Wed, 10 Apr 2024 22:15:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37B8A1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2376960606
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:15:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GhqAPM3iGi_e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 22:15:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=tglx@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04D41600CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04D41600CC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04D41600CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:15:33 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240410114828.25581-9-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-9-lakshmi.sowjanya.d@intel.com>
Date: Thu, 11 Apr 2024 00:15:31 +0200
Message-ID: <877ch43lvg.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712787331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yv1aoSAnbbHpJLpzRKC+j97D6+Bc6CY0CLsHS2K8ILg=;
 b=v4npgz+5aALgAbCa4gYmW+sAu1VbuMi5mmGWhrk2cAcWRxxH4pHy5nrXHNxv1At5IAeB/0
 iSKfMviSNGaDOtJ64MoFjVFPiPswQ4GMq/F/eukaTkHCHFNIV9ltqfTCJSY+Jeax8N38/D
 lociKYTR0SP6bWY88di3mNDqOJ2v4jw/yrpwKM4Ap/hBjWIUp4jfBzy5ADDWKciQVkHii4
 AsmmAgMXdEbP+H4MHxrGcJ19Q9Q6+iDOy8GJm/WCfGkm8BbiZayNHjlxiSc5P+L8ngWZou
 Vmd3GeXzCMuHXTxPB23DGxecr3ziWocyC/q7y2/Icbjqrn4ZjN0s49rvjEw8ow==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712787331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yv1aoSAnbbHpJLpzRKC+j97D6+Bc6CY0CLsHS2K8ILg=;
 b=MVfPV07bOUJ3KqluWXxG3YvId4KrFUETz3y7W9lQh/AJfTIl0ORZdyzcntjr/e71k8Q7nD
 CAkHiH4iXKD2ipBA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=v4npgz+5; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=MVfPV07b
Subject: Re: [Intel-wired-lan] [PATCH v6 08/11] timekeeping: Add function to
 convert realtime to base clock
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
> PPS(Pulse Per Second) generates signals in realtime, but Timed IO

... generates signals based on CLOCK_REALTIME, but ...

> hardware understands time in base clock reference.

The hardware does not understand anything.

> Add an interface,
> ktime_real_to_base_clock() to convert realtime to base clock.
>
> Add the helper function timekeeping_clocksource_has_base(), to check
> whether the current clocksource has the same base clock. This will be
> used by Timed IO device to check if the base clock is X86_ART(Always
> Running Timer).

Again this fails to explain the rationale and as this is a core change
which is hardware agnostic the whole Timed IO and ART reference is not
really helpful. Something like this:

  "PPS (Pulse Per Second) generates a hardware pulse every second based
   on CLOCK_REALTIME. This works fine when the pulse is generated in
   software from a hrtimer callback function.

   For hardware which generates the pulse by programming a timer it's
   required to convert CLOCK_REALTIME to the underlying hardware clock.

   The X86 Timed IO device is based on the Always Running Timer (ART),
   which is the base clock of the TSC, which is usually the system
   clocksource on X86.

   The core code already has functionality to convert base clock
   timestamps to system clocksource timestamps, but there is no support
   for converting the other way around.

   Provide the required functionality to support such devices in a
   generic way to avoid code duplication in drivers:

      1) ktime_real_to_base_clock() to convert a CLOCK_REALTIME
         timestamp to a base clock timestamp

      2) timekeeping_clocksource_has_base() to allow drivers to validate
         that the system clocksource is based on a particular
         clocksource ID.
  
> +static bool convert_cs_to_base(u64 *cycles, enum clocksource_ids base_id)
> +{
> +	struct clocksource *cs = tk_core.timekeeper.tkr_mono.clock;
> +	struct clocksource_base *base = cs->base;
> +
> +	/* Check whether base_id matches the base clock */
> +	if (!base || base->id != base_id)
> +		return false;
> +
> +	*cycles -= base->offset;
> +	if (!convert_clock(cycles, base->denominator, base->numerator))
> +		return false;
> +	return true;
> +}
> +
> +static u64 convert_ns_to_cs(u64 delta)
> +{
> +	struct tk_read_base *tkr = &tk_core.timekeeper.tkr_mono;
> +
> +	return div_u64((delta << tkr->shift) - tkr->xtime_nsec, tkr->mult);
> +}

> +bool ktime_real_to_base_clock(ktime_t treal, enum clocksource_ids base_id, u64 *cycles)

As this is a kernel API function it really wants kernel-doc comment to
explain the functionality, the arguments and the return value.

> +{
> +	struct timekeeper *tk = &tk_core.timekeeper;
> +	unsigned int seq;
> +	u64 delta;
> +
> +	do {
> +		seq = read_seqcount_begin(&tk_core.seq);
> +		if ((u64)treal < tk->tkr_mono.base_real)
> +			return false;
> +		delta = (u64)treal - tk->tkr_mono.base_real;

In the previous version you had a sanity check on delta:

>>> +		if (delta > tk->tkr_mono.clock->max_idle_ns)
>>> +			return false;

And I told you:

>> I don't think this cutoff is valid. There is no guarantee that this is
>> linear unless:
>>
>>       Treal[last timekeeper update] <= treal < Treal[next timekeeper update]
>>
>> Look at the dance in get_device_system_crosststamp() and
>> adjust_historical_crosststamp() to see why.

So now there is not even a check anymore whether the delta conversion
can overflow.

There is zero explanation why this conversion is considered to be
correct.

> +		*cycles = tk->tkr_mono.cycle_last + convert_ns_to_cs(delta);
> +		if (!convert_cs_to_base(cycles, base_id))
> +			return false;
> +	} while (read_seqcount_retry(&tk_core.seq, seq));
> +
> +	return true;
> +}

> +/**
> + * timekeeping_clocksource_has_base - Check whether the current clocksource
> + *     has a base clock

s/has a base clock/is based on a given base clock

> + * @id:		The clocksource ID to check for

base clocksource ID

> + *
> + * Note:	The return value is a snapshot which can become invalid right
> + *		after the function returns.
> + *
> + * Return:	true if the timekeeper clocksource has a base clock with @id,
> + *		false otherwise
> + */

Thanks,

        tglx
