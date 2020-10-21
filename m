Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 754782954B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 00:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B8F386D28;
	Wed, 21 Oct 2020 22:16:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xkhDIeYzAtgF; Wed, 21 Oct 2020 22:16:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77E8586D2A;
	Wed, 21 Oct 2020 22:16:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C09F1BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87FB7876F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EILVD-bZNNu1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 22:16:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C4F13876B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:36 +0000 (UTC)
IronPort-SDR: xhWDQ31N7xL7fUJmNWoDFtn4SKdKKQmCrTJ2+SU64ZQCGbjGDDvAEW+bC5HpwxdP71dr3cv5D/
 h/KC1VPV5wJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="166662847"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="166662847"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:16:36 -0700
IronPort-SDR: +19FuBEELfnoQwihHHIccPj0mgLZ0sblKNK/ar/rbpxhZDXxB2N0LDepLLD6LsrQxTTexxJP4D
 trj7uEg8Zk2Q==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="348493524"
Received: from lsachorn-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.138.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:16:36 -0700
MIME-Version: 1.0
In-Reply-To: <20201021135005.GA58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-2-andre.guedes@intel.com>
 <20201021135005.GA58344@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 21 Oct 2020 15:16:35 -0700
Message-ID: <160331859515.64680.4070714452715978307@lsachorn-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 1/9] igc: Fix igc_ptp_rx_pktstamp()
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Maciej,

Quoting Maciej Fijalkowski (2020-10-21 06:50:05)
> On Thu, Oct 08, 2020 at 07:53:41PM -0700, Andre Guedes wrote:
> > The comment describing the timestamps layout in the packet buffer is
> > wrong and the code is actually retrieving the timestamp in Timer 1
> > reference instead of Timer 0. This hasn't been a big issue so far
> > because hardware is configured to report both timestamps using Timer 0
> > (see IGC_SRRCTL register configuration in igc_ptp_enable_rx_timestamp()
> > helper). This patch fixes the comment and the code so we retrieve the
> > timestamp in Timer 0 reference as expected.
> > 
> > This patch also takes the opportunity to get rid of the hw.mac.type check
> > since it is not required.
> 
> How is this related to adding XDP support?

It is not directly related, however patches in this series depends on this patch
to apply (see "igc: Refactor rx timestamp handling"). That's why I put it as the
first patch in the series.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
