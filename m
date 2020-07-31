Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44154234076
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Jul 2020 09:49:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E7EF0203AF;
	Fri, 31 Jul 2020 07:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1xwQDvr2DQ5; Fri, 31 Jul 2020 07:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 27A332047C;
	Fri, 31 Jul 2020 07:49:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AA131BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 07:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 362EC88763
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 07:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdorMnVc+ek4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Jul 2020 07:49:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B298D8874A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Jul 2020 07:49:13 +0000 (UTC)
IronPort-SDR: hoxy++3FySr0qP5Kzqi53U9bbfFs3FK4IeBIxPFFkEJMZApPc67ycxM/W6NXQf/PZ1/NeXZlb8
 4fJBofDADtGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="150940816"
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="150940816"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 00:49:13 -0700
IronPort-SDR: 9z+o4333UTXOSFImoXh3bcELfU8ctNA9YDwO/2FP+1o4P9mcNTV2pVw2F2SKWy6B6oUTZBzcCU
 qIZIpZT2c1iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,417,1589266800"; d="scan'208";a="465544437"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2020 00:49:09 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1k1Pmu-005GWu-OG; Fri, 31 Jul 2020 10:49:08 +0300
Date: Fri, 31 Jul 2020 10:49:08 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20200731074908.GE3703480@smile.fi.intel.com>
References: <20200730160451.40810-1-andriy.shevchenko@linux.intel.com>
 <77247fbc-152a-517f-2500-ce761b7afa6a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77247fbc-152a-517f-2500-ce761b7afa6a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-wired-lan] [PATCH v1] ice: devlink: use %*phD to print
 small buffer
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
Cc: Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 30, 2020 at 02:20:46PM -0700, Jacob Keller wrote:
> On 7/30/2020 9:04 AM, Andy Shevchenko wrote:
> > Use %*phD format to print small buffer as hex string.
> > 
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> Ah nice. I swear I looked for a printk format to do this and didn't find
> one. But it's been there since 2012.. so I guess I just missed it.

commit 31550a16a5d2af859e8a11839e8c6c6c9c92dfa7
Author: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date:   Mon Jul 30 14:40:27 2012 -0700

    vsprintf: add support of '%*ph[CDN]'

Maybe it was just a coincidence :-)

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> I also tested this on my system to make sure it gives the same output
> for the serial value, so I guess also:
> 
> Tested-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks!

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
