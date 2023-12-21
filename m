Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2764B81BBCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:20:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6B1542231;
	Thu, 21 Dec 2023 16:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6B1542231
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703175622;
	bh=AGzrml1rnyx7MgJssE4AVDjrx927IYpZc+BfHUV6hUs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zFi5jdAbSgmW8YHJ3VI4v/vmtcsqCGoMPOO6O6w44nEehRnQ1KtGAgF/ZspOk4C7G
	 7YWIhZ0Y61fbQK96o3vZ/KIJwkuHdH7qnQtk6QYJ+7iVxm4jhcTybULhTN0gACKZVS
	 00JhEOyYddFeLKOgQqwd3QDFJkzEatjIdtg/K1+eUYEmUxc5uicL+7nF4u87shZPjy
	 tPuHpCR0vXTq+kuixqB+vXO3ePER7EA8LtSS1bH79pPlKkPBSs3JyhuITw1/K2WLFH
	 Evdtt838c2KlPiLG3GzB6vgy4fHSVwzLkRCSAAUtgI1fPEOZIeE838r9ESR+ncSGF1
	 RM2IeB7QEOPmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VLL59Og80YHk; Thu, 21 Dec 2023 16:20:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FF8D42226;
	Thu, 21 Dec 2023 16:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FF8D42226
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E26C51BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8F5F4222B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:20:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8F5F4222B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6UzwdOx5_WyV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 16:20:16 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 044904221B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 044904221B
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="2829574"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="2829574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:20:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="805653521"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="805653521"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:19:56 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rGLm4-00000007tP3-3oVk; Thu, 21 Dec 2023 18:19:52 +0200
Date: Thu, 21 Dec 2023 18:19:52 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZYRlqAzwTapf7ZGd@smile.fi.intel.com>
References: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
 <20231221093254.9599-5-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221093254.9599-5-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703175617; x=1734711617;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K6yqbQOo9UVnGtwfPiwWh5xvsQj2AGp4vZ2i4oaQBQI=;
 b=IkJjwc7bSKBZXLHlcllp/DvCLy4v7CfUf9sQWsNHt0Eyy47wG+RjoOmW
 N997qBvrqu35ctf6CRphxDCdpkuhM2WeU4sAgxnFscLkT/AcFLhedJ7Pt
 1yQsJA2dEM+Vw1ecw/D02H70hEQi+RWfunSnxfYhFhm/CJnjJqLiAHr36
 CRM4MV64/j0TLxdri5dqiDEWMdTy5VuKQDjjbLOsHg21JmqvRyJ7YNylT
 6h+cB6NyYW3374d+sLaMPQXglI8xIRWvnCjuD/N1mflB7AYmo30I3MeWO
 nUl8ZNpX2OIIwG3KRzdlVXAo8krCdHAof93xubc6HYcPkfx03Rsaq9EYR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IkJjwc7b
Subject: Re: [Intel-wired-lan] [RFC PATCH v2 04/10] igc: remove
 convert_art_to_tsc()
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
 alexandre.torgue@foss.st.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, corbet@lwn.net,
 x86@kernel.org, jesse.brandeburg@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, linux-sound@vger.kernel.org,
 tglx@linutronix.de, giometti@enneenne.com, netdev@vger.kernel.org,
 pandith.n@intel.com, eddie.dong@intel.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, jstultz@google.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 21, 2023 at 03:02:48PM +0530, lakshmi.sowjanya.d@intel.com wrote:
> From: Thomas Gleixner <tglx@linutronix.de>
> 
> Remove convert_art_to_tsc() function call, Pass system clock cycles and
> clocksource ID as input to get_device_system_crosststamp().

...

> +	return (struct system_counterval_t) {
> +		.cs_id    = CSID_X86_ART,
> +		.cycles    = tstamp,
> +		.nsecs    = true,

Either you should remove the extra spaces before '=' or replace them by TAB(s).

> +	};

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
