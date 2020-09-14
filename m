Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D16A269998
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 01:22:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE21D87019;
	Mon, 14 Sep 2020 23:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IhCgk3oWtrMl; Mon, 14 Sep 2020 23:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CE028702C;
	Mon, 14 Sep 2020 23:22:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39DDB1BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2D8E486214
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:22:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mj8ZXeWrqWrw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 23:22:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7DBEE861E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:22:47 +0000 (UTC)
IronPort-SDR: dLQ2fVfIAziWEp8NoAZn4III0zem2Rwz6tIMXw9aQ+9JGEUcgy/6MAreeRGsTa0n5YEQ+IhXtl
 owr9rKplyXxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="146914126"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="146914126"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:22:45 -0700
IronPort-SDR: PPektVXm3G9N68vCM055B+5z6xPuR54+n1NSt/YxNe+VH90gIVk2Wu8WgRhSE7v+OgsTVwe6AA
 ZMvza8mfDAVw==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482534587"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.55.36])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:22:45 -0700
Date: Mon, 14 Sep 2020 16:22:44 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Li RongQing <lirongqing@baidu.com>
Message-ID: <20200914162244.00001783@intel.com>
In-Reply-To: <1598000514-5951-1-git-send-email-lirongqing@baidu.com>
References: <1598000514-5951-1-git-send-email-lirongqing@baidu.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next] i40e: switch kvzalloc to
 allocate rx/tx_bi buffer
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Li RongQing wrote:

> when changes the rx/tx ring to 4096, rx/tx_bi needs an order
> 5 pages, and allocation maybe fail due to memory fragmentation
> so switch to kvzalloc

Hi Li,
Thanks for your patches, but I think you're solving a problem that isn't
a problem (besides that the warning is being printed.) After all, the
driver either gets the memory that it needed via the kernel waiting
(since we didn't set GFP_NOWAIT), or ENOMEM gets returned to the user.
If your kernel is so close to OOM that it's having this problem aren't
you going to have other issues? Anyway....

This driver goes to great lengths to not make any changes to the
existing queues if an allocation fails via ethtool (in fact this is
code I authored).

Maybe a better option is to just set __GFP_NOWARN on the kcalloc call?
Then if there is a memory allocation error we'll just reflect it to
user space and let the user retry, with no noisy kernel message.

For performance reasons, having actually contiguous regions from
kcalloc should help performance vs kvcalloc virtually contiguous
regions.

I'd prefer that you don't solve the problem this way. How about just
marking the allocations as GFP_RETRY_MAYFAIL and GFP_NOWARN?

The same goes for the iavf patch.

Jesse
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
