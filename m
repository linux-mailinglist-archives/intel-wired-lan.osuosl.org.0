Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5D081BBE4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 17:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61D27437EF;
	Thu, 21 Dec 2023 16:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61D27437EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703176006;
	bh=+YEmlAvVFdbzta87AzC8XaNOkhBe4W/cgb/a9Y5k6Mc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1HeNln8Fsxfzkx1XYbfSD9DmnyNbIMWJy5KNALb2Q7xGiEvSo+j9EroAt3J3kNCeF
	 OPRul9vB5bHGGykZEezuDhw0dFCev3GmGd+Z9c739eE7KpZ7eWqJV8+5mAZMrAT5Ay
	 RMgolG6vMLsrrxqUFeRdNvdl0X4NB2/RkebLjfJHuwhATBfue35IpYF4u20jN0CkeR
	 EJ96Get8vm/UBCBWRuWigiMioQGDrbsRXPEC2bf+2Egq9Vk2URWrczc4NJzJ68P9v/
	 UkcPzCzRbnBlkRgEIYq4WQYPJYc/CROI8hlFD1BxL2Luzpjrr7wQFHThWa0A4BQV1x
	 5+qZ48Pyh2GoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSa14lt6hL6C; Thu, 21 Dec 2023 16:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19AF0401F1;
	Thu, 21 Dec 2023 16:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19AF0401F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C1231BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D83B4223B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D83B4223B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ilLwrmbUX1IU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 16:26:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6262A42238
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 16:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6262A42238
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="3232834"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; 
   d="scan'208";a="3232834"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="847157610"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="847157610"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 08:26:18 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1rGLsE-00000007tTx-3bFd; Thu, 21 Dec 2023 18:26:14 +0200
Date: Thu, 21 Dec 2023 18:26:14 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZYRnJlLJOYqlZSP0@smile.fi.intel.com>
References: <20231221093254.9599-1-lakshmi.sowjanya.d@intel.com>
 <20231221093254.9599-9-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221093254.9599-9-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703175998; x=1734711998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hwyVMnz8YfEfXRJSEPnKQv9pdm2VBlr6t+hTTgnb3c4=;
 b=EFd23QKGxwTeKywQx58sDVthcyp+ny2B168FJl9UmPLaUR2VKCFcEccR
 QGq3UhM8QboCMBEgJ99BcupTrDsGGv/x/yXxuWc1wn4Oc8dWUv3diYPw1
 XU77GiFFGJ/aRNVhMNUanrlmWq0+gLUd9EnufVJ1mzDK7tjZi9ZnkVnvt
 nCVdRYPU9jMqeGNgnsOtJlzz6VE0fgdd23SPkAdwUGS9uZxxiBkR1hWLd
 v2I8Peclz/bcdbD+kPuD0aPCwOUa3h0A8Fg4uGaPy0ftovatY7IgcHPJw
 o9MFJbHOFoTrKa8r3IuFfW/Rnfpmgs5IfqXmiUwpirF/J2w1e19Z+hi81
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EFd23QKG
Subject: Re: [Intel-wired-lan] [RFC PATCH v2 08/10] pps: generators: Add PPS
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

On Thu, Dec 21, 2023 at 03:02:52PM +0530, lakshmi.sowjanya.d@intel.com wrote:
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

> +#include <linux/bits.h>
> +#include <linux/bitfield.h>
> +#include <linux/cleanup.h>

+ container_of.h

> +#include <linux/cpu.h>

+ device.h
+ err.h
+ hrtimer.h

> +#include <linux/io-64-nonatomic-hi-lo.h>

+ kstrtox.h

> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>

+ spinlock.h
+ sysfs.h

> +#include <linux/timekeeping.h>
> +#include <linux/types.h>

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
