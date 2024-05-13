Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDB48C3FBE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 13:22:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD57C83760;
	Mon, 13 May 2024 11:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XoL9_SQ_bP9f; Mon, 13 May 2024 11:22:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 135D08378A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715599356;
	bh=sP7sqSyHDYl7zJjwjw/f5HK8Txoqpvx0pnjDzCIgFtg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zuMlh/caf3kpytD0+21rHep9bDXBuO40rQ47qanVW6Hm222wWYEVIfziBBEyK+IY2
	 ndxMca9abCLTfsQTOK5BjNYmh6mTZWzJsBEjYAMZB7LfX1yvyGEdTC4EpVuDQ/CRbB
	 xuvdIkYXpcNX9+SSMLrf2qAoiKwxw3kpq8kcq/vtVCmHznnD+VPQmx6lk5IBLDAlNO
	 9Q0ytFaYNVqqMm466IBOpg0krpZnuv3k7xc4uXPt4/eYXJ+odNfonl4IVVGzOhOQ8U
	 QiI2EfEeNFxbYHEX9JNvDUTj4GmJWkXcxQ5fXJjbiDRaMlOjmWpI9vHi2fUGMn4Jiw
	 2toZ/PqTeWGgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 135D08378A;
	Mon, 13 May 2024 11:22:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24DB51BF479
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F08940872
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:22:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDwgmy1ff38K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 11:22:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=andriy.shevchenko@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B0B74084B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B0B74084B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B0B74084B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 11:22:31 +0000 (UTC)
X-CSE-ConnectionGUID: mzRvtrSgSMu7YoguY9QJpg==
X-CSE-MsgGUID: 9LL7xy/JThKqdfglEDOe/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22676144"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22676144"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:22:31 -0700
X-CSE-ConnectionGUID: 8npUnQQuTcWgTKsh91B/bw==
X-CSE-MsgGUID: DXVFtzbcRkqhUIKafUb5sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30866900"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:22:26 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1s6Tl8-000000076qh-0yhd; Mon, 13 May 2024 14:22:22 +0300
Date: Mon, 13 May 2024 14:22:21 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: lakshmi.sowjanya.d@intel.com
Message-ID: <ZkH37Sc9LU4zmcGB@smile.fi.intel.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-13-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513103813.5666-13-lakshmi.sowjanya.d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715599352; x=1747135352;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/hr2bOpRFgqi9fvGXlP0M2gVxTzgKVlXnL3zKDV3ZG4=;
 b=FdqWtABdOrz4htu8eEOe9Lo1CfofH1QTdchMGWqgloNY5j+/Gb9lG9qd
 nY2xvFT1QlmAX1vBgdkjY+ThiTZTqTurZYZ6WnEX5nXHS3F8rOCh9A0hj
 TfM2cKqOKIM0vCA5xiEQjoHp8va+Qu9Mhh6VY83LrCyd+IXBn5FLDWxDN
 ngUqrv23YnpGAzBKUK1pCWYs46HKOzHwTVtSQaSiyMt3uEhzPXc09Vo2k
 Rz/Xs76kgd3UMGLaju4gaYolsJ8+adDYVi+60Bx7P/8kFsW3npjAjpxS2
 E4Pi5nf3krv2Z60PRDLGPuNlaulCOtGHfQxYT7NoURtT4dWSxLy1DceGa
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FdqWtABd
Subject: Re: [Intel-wired-lan] [PATCH v8 12/12] ABI: pps: Add ABI
 documentation for Intel TIO
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

On Mon, May 13, 2024 at 04:08:13PM +0530, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
> 
> Document sysfs interface for Intel Timed I/O PPS driver.

...

> +Date:		June 2024

Is this checked by phb?

"the v6.11 kernel predictions: merge window closes on Sunday, 2024-08-04 and
 release on Sunday, 2024-09-29"

> +KernelVersion:	6.11

-- 
With Best Regards,
Andy Shevchenko


