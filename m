Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6008C3FA3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 13:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 184D581398;
	Mon, 13 May 2024 11:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z10teX6JDhJK; Mon, 13 May 2024 11:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31B43813F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715599144;
	bh=n6m0J2intiR+hnmb/9WHD04j+mbBKqGu7+uuGhKkM68=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2rO8NZdEaVW2gkqr1JlJzDtxqbyLg6NCtCIgp785DYVlbDtfPcjxY3mn4J9yzhy/4
	 I2Ptt5vYa+PpN7O4HolQFi+pih0jq30C3AmwqHHoRFW0gIdCJxvltD/N4qR2gOhaR0
	 0Z0l2KhqanxPu88uoawMX+OkGHlmDxWE+yG2NYaWiejOYTqZ1P2/XJXM6DbpCevZ58
	 fWeF3YLVz7WLEPScWCByielWn9d15x0efA8hFsAItnHU/M/8j4hetGyyZH8PBhALAy
	 W1pqyo8RQDkVf1zeapCAkdd1JSTI7x8MfAMDplOA4UBia+9z78PN9NOJSqxKvZq9H4
	 sfY5/0nD7UvRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 31B43813F3;
	Mon, 13 May 2024 11:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88FFC1BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:19:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7204F405CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id io7rRwv1gd9V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 11:19:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88CFA405C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88CFA405C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88CFA405C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:18:59 +0000 (UTC)
X-CSE-ConnectionGUID: U1nEPYbIR7qpCtshtfFvXg==
X-CSE-MsgGUID: uMs0lgbwRc2iHk+Ewuk28A==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11349931"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="11349931"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:18:58 -0700
X-CSE-ConnectionGUID: Em0EdL3kS+ebItk6iQqS3Q==
X-CSE-MsgGUID: 2h063URmRbasVo6zRP4CkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61123834"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:18:53 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s6Thh-000000076l1-1gxQ; Mon, 13 May 2024 14:18:49 +0300
Date: Mon, 13 May 2024 14:18:48 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715599139; x=1747135139;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Hq107+KzbP8LLfL/8/jiKEoxV4uQvEu20/9t6yULhgY=;
 b=VXIz1x4zN7CGf108Oit/tDx6Ijfe5sFzd+w61hHKxRIV4S6fP0+YD+Sk
 znr7WG2l1a9pZ2Ptr7AG+sOBXXvKvkVo29EKqxbU1QU5ktATAP0LTx5G+
 Us+1fFuIfi6n0UBfQL+trogIwFfeyGfm5D+osC78wO9b4sE8N7GExDWJK
 pQpAhfFnQQWF12EQiAPszWXoTBdgVtUyU65UP1RjAlZhdEySEwC9LE7nT
 E/T9pb0mpRx1fjQUJUgyRw5HWFD+PDjNDEi/WQCRDsPzI6pteDLmZEwKO
 q/05b6cKB28/mc3zbJqdmnZaFMjSs5PNpRVu9xKK8cKomEsnlf906pd/1
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VXIz1x4z
Subject: Re: [Intel-wired-lan] [PATCH v8 10/12] pps: generators: Add PPS
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

On Mon, May 13, 2024 at 04:08:11PM +0530, lakshmi.sowjanya.d@intel.com wrote:
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

> +static ssize_t enable_store(struct device *dev, struct device_attribute *attr, const char *buf,
> +			    size_t count)
> +{
> +	struct pps_tio *tio = dev_get_drvdata(dev);
> +	bool enable;
> +	int err;

(1)

> +	err = kstrtobool(buf, &enable);
> +	if (err)
> +		return err;
> +
> +	guard(spinlock_irqsave)(&tio->lock);
> +	if (enable && !tio->enabled) {

> +		if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
> +			dev_err(tio->dev, "PPS cannot be started as clock is not related to ART");

Why not simply dev_err(dev, ...)?

> +			return -EPERM;
> +		}

I'm wondering if we can move this check to (1) above.
Because currently it's a good question if we are able to stop PPS which was run
by somebody else without this check done.

I.o.w. this sounds too weird to me and reading the code doesn't give any hint
if it's even possible. And if it is, are we supposed to touch that since it was
definitely *not* us who ran it.

> +		pps_tio_direction_output(tio);
> +		hrtimer_start(&tio->timer, first_event(tio), HRTIMER_MODE_ABS);
> +		tio->enabled = true;
> +	} else if (!enable && tio->enabled) {
> +		hrtimer_cancel(&tio->timer);
> +		pps_tio_disable(tio);
> +		tio->enabled = false;
> +	}
> +	return count;
> +}

...

> +static int pps_tio_probe(struct platform_device *pdev)
> +{

	struct device *dev = &pdev->dev;

> +	struct pps_tio *tio;
> +
> +	if (!(cpu_feature_enabled(X86_FEATURE_TSC_KNOWN_FREQ) &&
> +	      cpu_feature_enabled(X86_FEATURE_ART))) {
> +		dev_warn(&pdev->dev, "TSC/ART is not enabled");

		dev_warn(dev, "TSC/ART is not enabled");

> +		return -ENODEV;
> +	}
> +
> +	tio = devm_kzalloc(&pdev->dev, sizeof(*tio), GFP_KERNEL);

	tio = devm_kzalloc(dev, sizeof(*tio), GFP_KERNEL);


> +	if (!tio)
> +		return -ENOMEM;
> +
> +	tio->dev = &pdev->dev;

	tio->dev = dev;

> +	tio->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(tio->base))
> +		return PTR_ERR(tio->base);

> +	pps_tio_disable(tio);

This...

> +	hrtimer_init(&tio->timer, CLOCK_REALTIME, HRTIMER_MODE_ABS);
> +	tio->timer.function = hrtimer_callback;
> +	spin_lock_init(&tio->lock);

> +	tio->enabled = false;

...and this should go together, which makes me look at the enabled flag over
the code and it seems there are a few places where you missed to sync it with
the reality.

I would think of something like this:

	pps_tio_direction_output() ==> true
	pps_tio_disable(tio) ==> false

where "==> X" means assignment of enabled flag.

And perhaps this:

	tio->enabled = pps_generate_next_pulse(tio, expires + SAFE_TIME_NS);
	if (!tio->enabled)
		...

But the above is just thinking out loudly, you may find the better approach(es).

> +	platform_set_drvdata(pdev, tio);
> +
> +	return 0;
> +}

-- 
With Best Regards,
Andy Shevchenko


