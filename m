Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAFB4DB3CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Mar 2022 15:58:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC420611DF;
	Wed, 16 Mar 2022 14:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p5Spx8Zi8mwe; Wed, 16 Mar 2022 14:58:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DED1F611DD;
	Wed, 16 Mar 2022 14:58:34 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80AA01BF8B4
 for <intel-wired-lan@osuosl.org>; Wed, 16 Mar 2022 14:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6AC4140A2E
 for <intel-wired-lan@osuosl.org>; Wed, 16 Mar 2022 14:58:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kA6W73Llezqs for <intel-wired-lan@osuosl.org>;
 Wed, 16 Mar 2022 14:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D154540222
 for <intel-wired-lan@osuosl.org>; Wed, 16 Mar 2022 14:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647442709; x=1678978709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kClot8b9cdjJYdrL2eJgSVX+C4qMauVvsJsxaAeApI0=;
 b=kygZZCfnhhXa1TpMXZ9c+Gnsd82W7n20BXuxaHV7Kt6jMiF+WjdYgjrM
 B4qh/Kp6C7Jly4OMPfA9eTFH0iVy4BAxMuIdh3b+VbRLSZ83C+2JGkO5l
 QgxI80bgPYJt76box4Djqpcuieg5MDRBEO5T1U/RgSFhzTXqA88wDV96M
 1NX6N68F5zHni1XESXtY1OMFKdJSjxVazkHy2MGOIToRQRDfSg01WAq6U
 IzRpVRrYkZubvHVMMfIZ8+4m0ZEo+c67yxjjHWpp7GGwjyZpMxF39nBk0
 j8XcnWI23U3M3Qgl/CSIo9t01+YJgTlpIa44Ko4DS9rBY7NTzEEBnzSDy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="244073591"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="244073591"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 07:52:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="690606958"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2022 07:52:49 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22GEqmY3015428; Wed, 16 Mar 2022 14:52:48 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 16 Mar 2022 15:51:23 +0100
Message-Id: <20220316145123.1324206-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <40f168ef-f610-4082-d032-d3625505a323@intel.com>
References: <20220127154009.623304-1-alexandr.lobakin@intel.com>
 <40f168ef-f610-4082-d032-d3625505a323@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 0/4] ice: switch: debloat
 packet templates code
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 14 Mar 2022 09:30:03 -0700

> Hi Alex,
> 
> On 1/27/2022 7:40 AM, Alexander Lobakin wrote:
> > Note: this will conflict with [1] going through net-next,
> > a followup will be sent once accepted.
> 
> The series you referenced was accepted and now I'm conflicting as you 
> alluded. I'm dropping this version and will await your updated one.

I rebased on top of the latest next-queue, however, I managed to
improve it even more, so I sent it to e1000 currently, so Switchdev
team could test it with their usecases as well and adjust all their
new code accordingly.
I'll send it to IWL as soon as they give me a greenlight.

> 
> Thanks,
> 
> Tony
> 
> >  From v1 ([0]):
> >   - rebase on top of the latest next-queue (to fix #3 not applying);
> >   - adjust the kdoc accordingly to the function proto changes in #3;
> >   - no functional changes.
> >
> > [0] https://lore.kernel.org/netdev/20220124173116.739083-1-alexandr.lobakin@intel.com
> > [1] https://lore.kernel.org/netdev/20220127125525.125805-1-marcin.szycik@linux.intel.com
> >
> > Alexander Lobakin (4):
> >    ice: switch: add and use u16[] aliases to ice_adv_lkup_elem::{h,m}_u
> >    ice: switch: unobscurify bitops loop in ice_fill_adv_dummy_packet()
> >    ice: switch: use a struct to pass packet template params
> >    ice: switch: use convenience macros to declare dummy pkt templates
> >
> >   drivers/net/ethernet/intel/ice/ice_switch.c | 273 ++++++++------------
> >   drivers/net/ethernet/intel/ice/ice_switch.h |  12 +-
> >   2 files changed, 123 insertions(+), 162 deletions(-)

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
