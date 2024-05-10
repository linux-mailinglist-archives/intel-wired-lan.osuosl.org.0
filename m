Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E68B8C26CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 16:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA6F66163A;
	Fri, 10 May 2024 14:28:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGi2AYV-JXzX; Fri, 10 May 2024 14:28:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D0A161638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715351289;
	bh=rYW0LxEqgOaRN3oUt0E43wedccYIYp53L33/c6IKwY0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ieAu6kpR5g7IRbo3wZOaOS2t1st5Gbed4sfEYxYnfnZhgvHCJ+lfmCFyUoVkPmSJK
	 J8zs2Q7O78JtepUD+gxPKtAMrQQKDs3pcrN4jUwdgxYlmxhNn75BFZhXwKEaCNBZVH
	 r5qz9KcCZw+M5DlFpqdr1So4a2XJlnvO+E1CwMG3VUGeGhaW7IvIx+i6dlcDaK6aqh
	 zsAdZfmZPZUltWejWHvTgwQRCJH+XQalzdmT2QOFKNuSScGJHPOx/O3DSAU/qK0hRH
	 K4eFC7RTQb7YLmyi/bIxMQIRdqbGWbjVRqGEDc/rSiLR+Z5iy1V6ADdjV4lMxMKyg2
	 5CrAG4A1BvnXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D0A161638;
	Fri, 10 May 2024 14:28:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D194C1BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:28:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B7BDD845DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:28:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id paiPJZO6SpS8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 14:28:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D515A845B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D515A845B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D515A845B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 14:28:05 +0000 (UTC)
X-CSE-ConnectionGUID: zGFsWElwR5uY0LXiGthXEA==
X-CSE-MsgGUID: 6sT73+UVRdeP7NbvImG+Rw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11460547"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11460547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 07:28:04 -0700
X-CSE-ConnectionGUID: RfUGcRtZRjGlOkFb8E3Fkg==
X-CSE-MsgGUID: haEr3iRVQ/+b1G/BD2RmpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29577789"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 07:27:59 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s5RE3-000000067xv-15tJ; Fri, 10 May 2024 17:27:55 +0300
Date: Fri, 10 May 2024 17:27:55 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
Message-ID: <Zj4u64qC4d2FXSQW@smile.fi.intel.com>
References: <20240430085225.18086-1-lakshmi.sowjanya.d@intel.com>
 <20240430085225.18086-11-lakshmi.sowjanya.d@intel.com>
 <ZjD3ztepVkb5RlVE@smile.fi.intel.com>
 <CY8PR11MB7364F43C08D75878205599A5C4E62@CY8PR11MB7364.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CY8PR11MB7364F43C08D75878205599A5C4E62@CY8PR11MB7364.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715351286; x=1746887286;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kz2991U92lAyIp31g+FlBWFiotk7FNz3VZrEBJoZ0qw=;
 b=Fe+HQIFzwgKydGSMxCJRZq5Co0mAmfXSVKMY/FpUcYRnO1EZsIMV/2px
 pwoZCyBXZE5YQAkKzyOwCPyqOav4IX28yk9vi89CA05EztdOfbbYgD75o
 kLM4tHQ4v3gLgLoJBQ2vXEGzCe072FSAuUWESQc3UzRl7u81vQ+eGzzRx
 +2VF7C5zaYwH43B62x2LZhst72l+3jGpBURW+TNePfDmIpnRD7PHL60c5
 HL1gEJJ6KnJd8jyIHAf7nWW3qGSJWW9H08F+5wHjzgsqSDpMYFax5V5z3
 GIFJ1Q9RqlrybOXDaJqHC9VhBedmR6FrZ68+qxE7vs9ILhXLYLqq1pgso
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fe+HQIFz
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 09, 2024 at 04:38:49AM +0000, D, Lakshmi Sowjanya wrote:

> Will update as suggested.

Just a side note: Since the series most likely missed v6.10, don't forget to
bump dates and versions in ABI documentation in the next version.

-- 
With Best Regards,
Andy Shevchenko


