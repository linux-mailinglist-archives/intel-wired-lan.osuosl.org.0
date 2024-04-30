Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 731A28B779D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2024 15:53:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE43C81FB1;
	Tue, 30 Apr 2024 13:53:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tdLGmbGGE5Qu; Tue, 30 Apr 2024 13:53:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CA5C81FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714485212;
	bh=oBTwqvPk5qVewYrTml2qugFrtoqwIKhJMJRnvNiUaHk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A/n973WZ+fuWejDlQ2Xhh8DEAYDpcM3w1fiJsObAVkBN7ML7M2ryLuqwq/xBRke2e
	 pjzdMrFSE6x739YfXePZuzXNHFWmVzaCRwy7BkWtILT0MPNRIpgYxaeLvQ5flM9Chj
	 k29dx4yjZOYRoWamudWzNqJscsMoGvFgR0bo4ES+WazL3Zil3ikUZIcGN8xOIFz3Sh
	 IyalqTUR5KE4KyOY1CoglwUt7uLtJAMbyUahzyKqrMCrpo8eMaaY+fE/1NZPtR6w+A
	 bZlosM/WVYp2k9hFAf3pGVu6du8iADZNx0+CPtlavcJuvYD6s2FCIMH4CpC8m5SgT+
	 zpypN2JQtkTHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CA5C81FAD;
	Tue, 30 Apr 2024 13:53:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0211E1BF348
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 13:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E25B360664
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 13:53:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RA05bJJ2LcW5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Apr 2024 13:53:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 24F64605A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24F64605A6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 24F64605A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Apr 2024 13:53:28 +0000 (UTC)
X-CSE-ConnectionGUID: 6EyM0JduTEKgGl8lJJmz3Q==
X-CSE-MsgGUID: H0OJVIVQS9yN6lO38qaUMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27713350"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27713350"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 06:53:28 -0700
X-CSE-ConnectionGUID: 5eOKwBEpSferwc2RTJ/a9g==
X-CSE-MsgGUID: 9kf4TRh7TgypIABzvykqNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26967408"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 06:53:23 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s1nv5-00000002gCo-0Ukb; Tue, 30 Apr 2024 16:53:19 +0300
Date: Tue, 30 Apr 2024 16:53:18 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZjD3ztepVkb5RlVE@smile.fi.intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
 <20240430085225.18086-11-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240430085225.18086-11-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714485209; x=1746021209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=sqoodRfj0IATLtJDqqqpof/7WjIJbwK83pY5fT0FQTA=;
 b=WO6ovsvnXQQnMUi7k7ybacRzQ1SJoSamDypiZMm6Xk7nrkKTuQfcirws
 NN5Lu3wcvBeGtDYmuCwS2kLDl9TmC/pgJkNfOWmjds5T4qydWV62qAI86
 v+o7KYurfGeNLyEBkt69mYjssWo5PctUxvNCFeLnUvPCBUjd9YKW7V+VW
 LtAPl/+ym0jJLXWOq+142OSl7jaCA4XA2xL6NVWGhTlnqOulJ6FtGFx3K
 h2Bn7Zl47QRk5Ot757FQXxVGhObGMKc0CvgIWfHuZmH5mUazuqWgSaX3j
 Uz4W6MAvjhp82juiuop2QlGxweKW4FTvR4vR9wtXdwQmYAiJF4xK4ggRI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WO6ovsvn
Subject: Re: [Intel-wired-lan] [PATCH v7 10/12] pps: generators: Add PPS
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
Cc: linux-doc@vger.kernel.org, alexandre.torgue@foss.st.com, perex@perex.cz,
 anthony.l.nguyen@intel.com, thejesh.reddy.t.r@intel.com,
 christopher.s.hall@intel.com, corbet@lwn.net, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, tglx@linutronix.de, giometti@enneenne.com,
 netdev@vger.kernel.org, pandith.n@intel.com, eddie.dong@intel.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com, jstultz@google.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 30, 2024 at 02:22:23PM +0530, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> The Intel Timed IO PPS generator driver outputs a PPS signal using
> dedicated hardware that is more accurate than software actuated PPS.
> The Timed IO hardware generates output events using the ART timer.
> The ART timer period varies based on platform type, but is less than 100
> nanoseconds for all current platforms. Timed IO output accuracy is
> within 1 ART period.
> 
> PPS output is enabled by writing '1' the 'enable' sysfs attribute. The
> driver uses hrtimers to schedule a wake-up 10 ms before each event
> (edge) target time. At wakeup, the driver converts the target time in
> terms of CLOCK_REALTIME to ART trigger time and writes this to the Timed
> IO hardware. The Timed IO hardware generates an event precisely at the
> requested system time without software involvement.

...

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
> +	if (tio->prev_count && tio->prev_count == event_count)
> +		goto err;
> +	tio->prev_count = event_count;
> +	expires = hrtimer_get_expires(timer);
> +	now = ktime_get_real();

> +	if (now - expires < SAFE_TIME_NS) {
> +		if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
> +			return HRTIMER_NORESTART;
> +	} else {

Redundant.

> +		goto err;
> +	}

	if (now - expires >= SAFE_TIME_NS)
		goto err;

	if (!pps_generate_next_pulse(tio, expires + SAFE_TIME_NS))
		return HRTIMER_NORESTART;


> +	hrtimer_forward(timer, now, NSEC_PER_SEC / 2);
> +	return HRTIMER_RESTART;
> +err:
> +	dev_err(tio->dev, "Event missed, Disabling Timed I/O");
> +	pps_tio_disable(tio);
> +	return HRTIMER_NORESTART;
> +}

-- 
With Best Regards,
Andy Shevchenko


