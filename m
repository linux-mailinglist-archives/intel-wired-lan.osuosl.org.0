Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BC68A0357
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 00:28:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF252605CA;
	Wed, 10 Apr 2024 22:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3U5ATOW5y8tv; Wed, 10 Apr 2024 22:28:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6FE86060E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712788130;
	bh=+09dt8Lue6gAfa+yZ3gUFUEMm5OBKypuTUNVnYjhGiQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n4/dzymA3YiYwFqCxBKUbvhzxym+rIMLY9ftLohLb9XIRZ1xqkwotBm5p33hjcjUv
	 R48UAv9waTIO8yaFipvIboy7+4HgUBBrlJvUu2l8ctBNX6+oMqR7Ij//mO4XRPfiFV
	 pR5tDhCcFgsm2PRz7t8009c5TgFvo1iOcts1uRjBGCZLet9mMqUjhPnSdrn6TuaXEw
	 UdzQ7hEO2fSkHDnVbXeL1V0w0rL/y3UEo41DkOwqN6x3yigicHUg9dgtSYYpTiRXpc
	 jWkz5xYdSMOBp0h3lMxUctBsItO9QYADtA8GaYdYtcNGYyKs27Ob3BYBfc0/dWrUP3
	 FFfGGDEJufYOw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6FE86060E;
	Wed, 10 Apr 2024 22:28:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CDF31BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48F6540491
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cB0VvPA22e9r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 22:28:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84818401CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84818401CE
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84818401CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 22:28:48 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240410114828.25581-10-lakshmi.sowjanya.d@intel.com>
References: <20240410114828.25581-1-lakshmi.sowjanya.d@intel.com>
 <20240410114828.25581-10-lakshmi.sowjanya.d@intel.com>
Date: Thu, 11 Apr 2024 00:28:43 +0200
Message-ID: <874jc83l9g.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1712788124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+09dt8Lue6gAfa+yZ3gUFUEMm5OBKypuTUNVnYjhGiQ=;
 b=muTnCJ68xg/jmo1x+2PYwo/j8IVl0QMhstkOGPeUNym23NDJrX5zlIVmz9uYKGC9+/ri/7
 r6snD/AYMuoBMQhStc6A+vE/yMOG9XexG/wrx+iGOKmU/XgUzwZOF0oGkdhko9NdJCRQas
 2v6q7OryngQcxkh7piM54dBz7MZap2S61QX8VWH7lazZ9iBkX+GXQ+V3+HBDu8wbiW/DvR
 Ml0UXNavBUtb/JzSyMy8zpYb7jndefj/ExMb5KkJFNnvb3MKpzzo+wv8qdhLwXMsFg7D7Y
 jThZMktSZwHCqfIwQFGrAR3DpGQQ814EnkbCEZUx9IL1INtVwOQHwfQKCY0QGw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1712788124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+09dt8Lue6gAfa+yZ3gUFUEMm5OBKypuTUNVnYjhGiQ=;
 b=FPSE9QIIrOJKgP7TOP2bJcNmzEPJfsb9D62zE2XFb1kLmJQ/08SWzbqjbkcHgTADwuS7DU
 98onkVILTp2D12Aw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=muTnCJ68; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=FPSE9QII
Subject: Re: [Intel-wired-lan] [PATCH v6 09/11] pps: generators: Add PPS
 Generator TIO Driver
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
> +static bool pps_generate_next_pulse(struct pps_tio *tio, ktime_t expires)
> +{
> +	u64 art;
> +
> +	if (!ktime_real_to_base_clock(expires, CSID_X86_ART, &art)) {
> +		pps_tio_disable(tio);
> +		return false;
> +	}
> +
> +	pps_compv_write(tio, art - ART_HW_DELAY_CYCLES);
> +	return true;
> +}
> +
> +static enum hrtimer_restart hrtimer_callback(struct hrtimer *timer)
> +{
> +	struct pps_tio *tio = container_of(timer, struct pps_tio, timer);
> +	ktime_t expires, now;
> +	u32 event_count;
> +
> +	guard(spinlock)(&tio->lock);
> +
> +	/* Check if any event is missed. If an event is missed, TIO will be disabled*/
> +	event_count = pps_tio_read(tio, TIOEC);
> +	if (!tio->prev_count && tio->prev_count == event_count)
> +		goto err;
> +	tio->prev_count = event_count;
> +	expires = hrtimer_get_expires(timer);
> +	now = ktime_get_real();
> +
> +	if (now - expires < SAFE_TIME_NS) {
> +		if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> +			goto err;
> +	}

If the hrtimer callback is invoked late so that now - expires is >=
SAFE_TIME_NS then this just forwards the timer and tries again.

This lacks any form of explanation why this is correct as obviously
there will be a missing pulse, no?

> +	hrtimer_forward(timer, now, NSEC_PER_SEC / 2);
> +	return HRTIMER_RESTART;
> +err:
> +	dev_err(tio->dev, "Event missed, Disabling Timed I/O");
> +	pps_tio_disable(tio);

Why does this disable it again? The failure path in
pps_generate_next_pulse() does so already, no?

> +	return HRTIMER_NORESTART;
> +}
> +

Thanks,

        tglx
