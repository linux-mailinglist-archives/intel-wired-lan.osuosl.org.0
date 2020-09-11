Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BE3265629
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 02:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B57542094B;
	Fri, 11 Sep 2020 00:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JgSDROBwZroi; Fri, 11 Sep 2020 00:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 060A12E1D5;
	Fri, 11 Sep 2020 00:49:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB821BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 00:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8337087776
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 00:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3Vg3sp-b2gC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 00:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FFFA87773
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 00:49:29 +0000 (UTC)
IronPort-SDR: o58m5PeXeiCQiGBeVEiyVvmQqbfBaCA4cqcuzdRj6HbRXBDeG66qMP4JUJs9dfhBjkvJPXYlzK
 Tk4EvWTh/mCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="157947765"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="157947765"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 17:49:28 -0700
IronPort-SDR: xWqMXWZuXTZtbYgAP7S4J7Fz1oIf3SOG+wKboK9U3OB0suep9m4UNgyXAe1uRwaFazczbvMqVF
 H4VL4rKTE+3w==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="329563965"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.96.73])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 17:49:27 -0700
Date: Thu, 10 Sep 2020 17:49:26 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Wang Hai <wanghai38@huawei.com>
Message-ID: <20200910174926.00004f0e@intel.com>
In-Reply-To: <20200910150934.34605-1-wanghai38@huawei.com>
References: <20200910150934.34605-1-wanghai38@huawei.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/3] Fix some kernel-doc
 warnings for i40e
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wang Hai wrote:

> Wang Hai (3):
>   i40e: Fix some kernel-doc warnings in i40e_client.c
>   i40e: Fix some kernel-doc warnings in i40e_common.c
>   i40e: Fix a kernel-doc warning in i40e_ptp.c
> 
>  drivers/net/ethernet/intel/i40e/i40e_client.c | 2 --
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 2 --
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    | 1 -
>  3 files changed, 5 deletions(-)
> 


Please see my patchset [1]: I've already fixed all of these and many
others.

In fact, before you continue, I have a whole set done making the entire
drivers/net/ethernet directory compile cleanly with W=1, that I'm about
to send, but they depend on [1]

[1]
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=&submitter=189&state=&q=&archive=&delegate=

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
