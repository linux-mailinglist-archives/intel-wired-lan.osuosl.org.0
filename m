Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5618A0225
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 23:32:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B09B660EA2;
	Wed, 10 Apr 2024 21:32:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9byFwjLbIrfl; Wed, 10 Apr 2024 21:32:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A305260EA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712784773;
	bh=nh8OJkypTZN2dIacuWiBicR/c4idFBZIzTy0pVZ35ws=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xBIWrdBwzx0AlLaSoRm+WSF9+b7KvvU+qxBDHIQIMaXR7gvTw1agqjRB22bB8b0WE
	 98c4Lo18x6LvIp2pPgTFMYzeYmeB+1TWFrc/he0eyMN0pYsEku0eVZZg/ytx+qbaXE
	 +y4+Mt5v6j9RxzD5bn5MU3t9HxBm2AlvUoibZt6+vL3slRGlulSFawKRmqb2lhiSNI
	 VCw9mBQE5SE+BuQYspRP7qR1iXayHOX6MocOwd1z8HINyZ1fK6iy5XGrYJtB6ORqXN
	 tpHVEJ3E66Nak5xgZgBOL0qBQtXhiQnzbjahWfk5tq7+Y3snOwrNPA81lhpip9JqQB
	 /ZPj7NKNXuuxg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A305260EA3;
	Wed, 10 Apr 2024 21:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22B6D1BF4D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:32:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1855E8209C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:32:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMOJJNXWasss for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 21:32:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9730182033
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9730182033
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9730182033
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 21:32:49 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240410114828.25581-2-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-2-lakshmi.sowjanya.d@intel.com>
Date: Wed, 10 Apr 2024 23:32:46 +0200
Message-ID: <87cyqw3nup.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712784767;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nh8OJkypTZN2dIacuWiBicR/c4idFBZIzTy0pVZ35ws=;
 b=cjZIlLaL/PET73d27bxQlie5EjJ9KCuctB85P00To/7BKeKXkrRLZKwPkflv6XDInOeerx
 SYrs+aLDhP34tezZuQ77WhJ/aBHrY9wjSRib7PnKXWawOBOLOaifubvCZOMmkA/WsWNrkH
 tQPDQyPuOa+hNZjY8Bbl7N/vHusGJTFQYvRu6+DYQn1cNkZCNgSGbrJ+q6rNhhmb5lp3N+
 3poKBGia6ReXtFAEA4uM2gTKqOROS+34+hyarZ5Njq9FjIiOQS3Gn6sCpsKF54Cv9Bxyp7
 AyjUU/mnMozhgiNZV2MyTLzsjgOSXYlGwp+V4Y+1Zr/QadVb0yY+cso9P/ouwA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712784767;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nh8OJkypTZN2dIacuWiBicR/c4idFBZIzTy0pVZ35ws=;
 b=nV7PBw924lPvBzqrI/DpQb1r5WYRKGXbBipF/QylDBVVWVk2N5W4vkOtRlhcxuBm8quLJH
 XhR5wRV5qwpOLsDg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=cjZIlLaL; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=nV7PBw92
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
> @@ -48,6 +49,7 @@ struct module;
>   * @archdata:		Optional arch-specific data
>   * @max_cycles:		Maximum safe cycle value which won't overflow on
>   *			multiplication
> + * @freq_khz:		Clocksource frequency in khz.
>   * @name:		Pointer to clocksource name
>   * @list:		List head for registration (internal)
>   * @rating:		Rating value for selection (higher is better)
> @@ -70,6 +72,8 @@ struct module;
>   *			validate the clocksource from which the snapshot was
>   *			taken.
>   * @flags:		Flags describing special properties
> + * @base:		Hardware abstraction for clock on which a clocksource
> + *			is based
>   * @enable:		Optional function to enable the clocksource
>   * @disable:		Optional function to disable the clocksource
>   * @suspend:		Optional suspend function for the clocksource
> @@ -105,12 +109,14 @@ struct clocksource {
>  	struct arch_clocksource_data archdata;
>  #endif
>  	u64			max_cycles;
> +	u32			freq_khz;

Q: Why is this a bad place to add this member?

A: Because it creates a 4 byte hole in the data structure.

>  	const char		*name;
>  	struct list_head	list;

While adding it here fills a 4 byte hole.

Hint:

  pahole -c clocksource kernel/time/clocksource.o

would have told you that.

>  	int			rating;
>  	enum clocksource_ids	id;
>  	enum vdso_clock_mode	vdso_clock_mode;
>  	unsigned long		flags;
> +	struct clocksource_base *base;

> diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
> index b58dffc58a8f..2542cfefbdee 100644
> --- a/kernel/time/timekeeping.c
> +++ b/kernel/time/timekeeping.c
> @@ -1193,6 +1193,40 @@ static bool timestamp_in_interval(u64 start, u64 end, u64 ts)
>  	return false;
>  }
>  
> +static bool convert_clock(u64 *val, u32 numerator, u32 denominator)
> +{
> +	u64 rem, res;
> +
> +	if (!numerator || !denominator)
> +		return false;
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
> +	u32 num, den;
> +
> +	/* The timestamp was taken from the time keeper clock source */
> +	if (cs->id == scv->cs_id)
> +		return true;
> +
> +	/* Check whether cs_id matches the base clock */
> +	if (!base || base->id != scv->cs_id)
> +		return false;
> +
> +	num = scv->use_nsecs ? cs->freq_khz : base->numerator;
> +	den = scv->use_nsecs ? USEC_PER_SEC : base->denominator;
> +
> +	convert_clock(&scv->cycles, num, den);

Q: Why does this ignore the return value of convert_clock() ?

A: Because all drivers will correctly fill in everything.

Q: Then why does convert_clock() bother to check and have a return
   value?

A: Because drivers will fail to correctly fill in everything

Thanks,

        tglx
