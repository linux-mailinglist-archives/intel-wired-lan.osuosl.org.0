Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EA084E3C4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 16:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D765F80D8C;
	Thu,  8 Feb 2024 15:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzoiEzm4Us4M; Thu,  8 Feb 2024 15:14:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0461C80847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707405263;
	bh=Y/mJ4V5ODp1OjO5K7WAULxON8je6JT7lSJcesdF0zwA=;
	h=From:To:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:Cc:From;
	b=eVk0+cnBqKNyybQ2FZNGmrBAMxPLV4o9cm3N6FqFqhczbPCCbJvD4edcR2qwoUu+z
	 fxrZPhy9Av5zPXRedVHyphbhFcrGos/KCBhhQL9/ppp3bw2pBfqUHAlrixhyWGXIjF
	 Ob1eE0+5TtfIQOyWolxzJibqwqu+NPv0r9uMVEOFP/JtUQtpGaRJQC2HBiZLnq/qzU
	 aRF6j1knwstntH7UXqLeBUuY1RcNKy7XYDEwZQtDaxsU23wwVUPyn2PuTwpQj0bz6g
	 UWuj3L/0HjaQ6zB81T4r5l/H3arMHI3nLOX84dufWou278lf7Mrj8nIxXUiKlqLMEL
	 7y4XcclmuPIMA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0461C80847;
	Thu,  8 Feb 2024 15:14:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B98571BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B27EC85179
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eBj00wiJUCHp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 15:14:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA0278516E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA0278516E
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA0278516E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:14:19 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240207060854.6524-3-lakshmi.sowjanya.d@intel.com>
Date: Thu, 08 Feb 2024 16:14:15 +0100
Message-ID: <8734u3m1iw.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1707405255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=Y/mJ4V5ODp1OjO5K7WAULxON8je6JT7lSJcesdF0zwA=;
 b=lR5Xv308pjT/LKI8IM8xB/XSaI0Dnb5HSiiNZEcP1GG/X0J2TGhY5RsRXxvUquFtK5Kaba
 2qgKUqQBYDes23bT/Oti60rd/dLpmC1C6XEqg+UvsrvCqKxYP8nb1k+B33QKNOcpSSXcSH
 IQPxQ3pK41vKwjXsCNbCA3PAbnYM1W7QICBM1MV5LoQ2zE3IzztFmaabhkdZfFzLdOHs+5
 7M6dJ1Ndv1+8RVk6GLIpY425f7WzV+O406O+gK3Z05xJ8j5gQbnT1hfCZo8YXAzE9tRiep
 Wnooz6ezxZ+T2sO6f5ps2Yzx44+QTLTYOd45CVawJ6cJNBJV9wuWjjGU6jQ4yg==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1707405255;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=Y/mJ4V5ODp1OjO5K7WAULxON8je6JT7lSJcesdF0zwA=;
 b=lX2vlCRvmWLLnz1TXzYs9CGXtjOII9OYpB8OU/Wn0AEnymAqvTvw87UIVMVFJVX3rNXkG2
 DyClVZlotGwKEmBw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=lR5Xv308; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=lX2vlCRv
Subject: Re: [Intel-wired-lan] [PATCH v4 02/11] timekeeping: Add function to
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
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 07 2024 at 11:38, lakshmi sowjanya d. wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>
> Introduce an interface, ktime_real_to_base_clock() to convert realtime
> to base clock.
>
> Convert the base clock to the system clock using convert_base_to_cs() in
> get_device_system_crosststamp().
>
> Add the helper function timekeeping_clocksource_has_base(), to check
> whether the current clocksource has the same base clock.

Neither ktime_real_to_base_clock() nor
timekeeping_clocksource_has_base() are used anywhere.

What's the point of having them in the first place?

Your changelog explains the WHAT but not the WHY....

> +static bool convert_clock(u64 *val, u32 numerator, u32 denominator)
> +{
> +	u64 rem, res;
> +
> +	if (numerator == 0 || denominator == 0)
> +		return false;

What's wrong with the usual (!numerator || !denominator) notation?

> +
> +	res = div64_u64_rem(*val, denominator, &rem) * numerator;
> +	*val = res + div_u64(rem * numerator, denominator);
> +	return true;
> +}
> +
> +static bool convert_base_to_cs(struct system_counterval_t *scv)
> +{
> +	struct clocksource *cs = tk_core.timekeeper.tkr_mono.clock;
> +	struct clocksource_base *base = cs->base;
> +
> +	/* The timestamp was taken from the time keeper clock source */
> +	if (cs->id == scv->cs_id)
> +		return true;
> +
> +	/* Check whether cs_id matches the base clock */
> +	if (!base || base->id != scv->cs_id)
> +		return false;
> +
> +	/* Avoid conversion to a less precise clock */
> +	if (scv->nsecs && cs->freq_khz != 0 && base->freq_khz < cs->freq_khz) {
> +		if (!convert_clock(&scv->cycles, cs->freq_khz, USEC_PER_SEC))
> +			return false;
> +	} else {
> +		if (scv->nsecs) {
> +			if (!convert_clock(&scv->cycles, base->freq_khz, USEC_PER_SEC))
> +				return false;
> +		}
> +		if (!convert_clock(&scv->cycles, base->numerator, base->denominator))
> +			return false;
> +	}

The above logic makes my brain hurt.

It's a reaonable requirement that cs->freq must be != 0 when sc->base !=
NULL and then converting from nanoseconds can always use cs->freq no
matter what the value of the base frequency is. Even for the case where
the base frequency is larger than cs->freq because the double conversion
does not give you more precision, right?

> +	scv->cycles += base->offset;

So the whole thing can be reduced to:

   nom = scv->nsecs ? cs->freq_khz : base->numerator;
   den = scv->nsecs ? USEC_PER_SEC : base->denominator;

   convert(&scv->cycles, nom, den);
   scv->cycles += base->offset;

Thanks,

        tglx
