Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C967741B07
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 23:34:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98CB5402A7;
	Wed, 28 Jun 2023 21:34:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98CB5402A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687988069;
	bh=6y9NdkWhl6aFw5+QWDDvZSZa4/HBFwPUABv7RHxTifo=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lZexffsDV9FrTkhoNJezPVTZzeDwqj5J2cfVDOrQMP10MkErcPZ/MuuQjwSeWo3vY
	 BBBvkEa8rZWeJFTLbg4qkHqG8LrpsafOyEMg6PkK6Cvmn7Umze4h7eoJI/OpT0VQxV
	 ndOxBMCuEgy/8dD0eJG6kY71W34rYDNWEtCNUrsaGDrGJ4lhgemz1sTro+cfku2pmB
	 9GQi+lM8lWNo/wKgdLPRSIITVYv56Pv2WBeN+n0ZThFNsO+W7YMzpTc4D3avZciTku
	 OKwjNx/imO7uUxUNH2rB/pEG9Coh++KflqP/htEg0MQpZ+OfKf2+3XnrmGkgXAEh+m
	 WSCbhYbCsFz4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4IaZ6aASKaU5; Wed, 28 Jun 2023 21:34:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CC1440121;
	Wed, 28 Jun 2023 21:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CC1440121
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1347B1BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:34:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE56B401ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:34:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE56B401ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMmDblRPy7_2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 21:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C9C840121
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8C9C840121
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="351758358"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="351758358"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 14:34:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="787172958"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="787172958"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.17])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 14:34:07 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Florian Kauer <florian.kauer@linutronix.de>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Vedang Patel <vedang.patel@intel.com>, Maciej
 Fijalkowski <maciej.fijalkowski@intel.com>, Jithu Joseph
 <jithu.joseph@intel.com>, Andre Guedes <andre.guedes@intel.com>, Simon
 Horman <simon.horman@corigine.com>
In-Reply-To: <20230628091148.62256-1-florian.kauer@linutronix.de>
References: <20230628091148.62256-1-florian.kauer@linutronix.de>
Date: Wed, 28 Jun 2023 14:34:07 -0700
Message-ID: <87a5wjqnjk.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687988062; x=1719524062;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2zFRPcPqSdw/rQupEM6m4agW4/QKfyjYyUa1kit0f1s=;
 b=nBpV1Q2Rk8IdOarCJCYuvy6ahD1kmWqUJ6Xw7/h82nxCrytvQ4aLvOUs
 rvtoIN6OCN+RQatl/Pb7Oswk2W3ULW7vm+WlFsAsGQEENKRqWbBq0tgT/
 nu6oZeLN3slx0HdVBLnfPIBplcYyDfKmxPY5Q6csNjPJM1g+e/5oPxe7Y
 iV0KJr2T38rsVghckdxlpSx3k+M6GJ5YutDlWZQ4mQdT7bS17R2KzXx01
 ajtAfjH36yzw2X6y1IDhT3rWxcjQZZmWVPqXwih14xouzCOF189oZtHah
 BeuyZvik11zuOpgwmUFpVJqMr6fQuIIhQv8m4jJ12+CCdAeDCLMJ6K0wM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nBpV1Q2R
Subject: Re: [Intel-wired-lan] [PATCH net v2] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: netdev@vger.kernel.org, kurt@linutronix.de,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Florian Kauer <florian.kauer@linutronix.de> writes:

> In normal operation, each populated queue item has
> next_to_watch pointing to the last TX desc of the packet,
> while each cleaned item has it set to 0. In particular,
> next_to_use that points to the next (necessarily clean)
> item to use has next_to_watch set to 0.
>
> When the TX queue is used both by an application using
> AF_XDP with ZEROCOPY as well as a second non-XDP application
> generating high traffic, the queue pointers can get in
> an invalid state where next_to_use points to an item
> where next_to_watch is NOT set to 0.
>
> However, the implementation assumes at several places
> that this is never the case, so if it does hold,
> bad things happen. In particular, within the loop inside
> of igc_clean_tx_irq(), next_to_clean can overtake next_to_use.
> Finally, this prevents any further transmission via
> this queue and it never gets unblocked or signaled.
> Secondly, if the queue is in this garbled state,
> the inner loop of igc_clean_tx_ring() will never terminate,
> completely hogging a CPU core.
>
> The reason is that igc_xdp_xmit_zc() reads next_to_use
> before acquiring the lock, and writing it back
> (potentially unmodified) later. If it got modified
> before locking, the outdated next_to_use is written
> pointing to an item that was already used elsewhere
> (and thus next_to_watch got written).
>
> Fixes: 9acf59a752d4 ("igc: Enable TX via AF_XDP zero-copy")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Tested-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---

This patch doesn't directly apply because there's a small conflict with
commit 95b681485563 ("igc: Avoid transmit queue timeout for XDP"),
but really easy to solve.

Anyway, good catch:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
