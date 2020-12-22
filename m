Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCCE2E03AD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 02:13:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3D2086855;
	Tue, 22 Dec 2020 01:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hOwUjvor3Vuk; Tue, 22 Dec 2020 01:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD6AC8685F;
	Tue, 22 Dec 2020 01:13:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3AB1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0511E230FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dE8jDm6FXUuy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 01:13:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 1FC34230F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:06 +0000 (UTC)
IronPort-SDR: 2HNpoYqHScY7VkDbIKEN4Ar3nwazJH5IH0Da4FghIpc/nBqnKptCzOcfVjWimmhJRdSw4Kjqkg
 CIwubVe+rp1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="172294915"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="172294915"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:05 -0800
IronPort-SDR: eXBQNhLAqMQVfuA7lOVBeJvDl6s9Q1mQQZowr+fN3unM5ZrtbLuJ1mCbSd4MzmGXpONs6kaDqw
 QnnzXit7QM4A==
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="457034602"
Received: from bgdudka-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.1.108])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:04 -0800
MIME-Version: 1.0
In-Reply-To: <20201221224512.GA2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-3-andre.guedes@intel.com>
 <20201221224512.GA2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 21 Dec 2020 17:12:57 -0800
Message-ID: <160859957744.45139.11273115849915966927@bgdudka-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 02/10] igc: Refactor igc_xdp_run_prog()
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

Quoting Maciej Fijalkowski (2020-12-21 14:45:12)
> On Thu, Dec 17, 2020 at 12:24:07PM -0800, Andre Guedes wrote:
> > This patch refactors igc_xdp_run_prog() helper, preparing the code for
> 
> s/This patch refactors/Refactor
> 
> to follow the guideline of using the imperative mood in commit msgs.
> 
> > AF_XDP zero-copy support which is added by upcoming patches.
> > 
> > With AF_XDP zero-copy support, igc_poll() will have a dedicated path
> > when the rx ring has zero-copy is enabled. To avoid code duplication as
> 
> The end of this sentence is a bit bogus.
> 
> What about:
> 
> With AF_XDP zero-copy support, igc_poll() will have a dedicated path
> when rx ring's memory model is MEM_TYPE_XSK_BUFF_POOL.
> 
> ?
> 
> > much as possible, this patch encapsulates the code specific to handling
> 
> s/this patch encapsulates/encapsulate
> 
> git grep "This patch" Documentation/process/submitting-patches.rst
> 
> as a refresher :)
> 

Thanks for the suggestions above. I'll fix all commit messages in the v2.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
