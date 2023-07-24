Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC33E75FABC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 17:24:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A15A81FB7;
	Mon, 24 Jul 2023 15:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A15A81FB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690212288;
	bh=OHk8T47v1FcsWNixi/sY+97BpcDsxzf2Ol/OfIa7bUE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ATEV0Akl+C5X8RaOnM47U3s2h7tiY/QyLfRQ4IQP3yzuLGBI7HyjAnOvgPAmUCn6o
	 CsGH2c0Jx+qkQeTY+pm2vzNSGG6zoOrbq9VDu1rEKVxAv2xn4J6p+uH2RkzAlFBveF
	 i2zTMS5ZnNZKGAsNC9+Tjr+5ZsYvEoMomYVxZHM2Hz04aDFNK3whcSAVpw+jnJExLJ
	 w/dK1lsYr/9sAmS9rBxJ4pUrwRf2GavAvbVh9JCrG+S1taYLSMfhx+xgfb3t3k4HET
	 DPjoDR+HJVyQgMEwWclq3eT9uKD0xlE40PR6n/sS20m5nf8+uM3+CM1OYA54zLnU4i
	 DYuT8aU8JTEgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyaV7UcVq-iG; Mon, 24 Jul 2023 15:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 076E181FA2;
	Mon, 24 Jul 2023 15:24:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 076E181FA2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B7FC11BF44A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9378D6101E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:10:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9378D6101E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdoQSZO7PcBN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 14:10:35 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 467E060FE9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 14:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 467E060FE9
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="433693151"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="433693151"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 07:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="839463026"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="839463026"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2023 07:10:14 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andy@kernel.org>) id 1qNwGK-00GKAo-0P;
 Mon, 24 Jul 2023 17:10:12 +0300
Date: Mon, 24 Jul 2023 17:10:11 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZL6GQyy2x56+K9si@smile.fi.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-7-marcin.szycik@linux.intel.com>
 <ZLqfJZi/14dyEzhH@smile.fi.intel.com>
 <24784f80-df7b-a666-a56b-9b4c288978a1@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24784f80-df7b-a666-a56b-9b4c288978a1@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Approved-At: Mon, 24 Jul 2023 15:24:38 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 6/6] ice: Add support for
 PFCP hardware offload in switchdev
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 24, 2023 at 03:58:51PM +0200, Marcin Szycik wrote:
> On 21.07.2023 17:07, Andy Shevchenko wrote:
> > On Fri, Jul 21, 2023 at 09:15:32AM +0200, Marcin Szycik wrote:

...

> >> [1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com
> > 
> > We have Link: tag for such kind of stuff.
> 
> Are you sure this is a valid use of Link: tag?

Yes.

> Patch that is linked here is
> in another tree, and also I want to have [1] inline for context.

You can put it as
Link: $URI [1]

...

> >>  #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
> > 
> > ...and (at least) this can utilize GENMASK().
> 
> It can, but it's unrelated to this patch.

Right. Just a side note.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
