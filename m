Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12E8479602
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 22:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BF4640C30;
	Fri, 17 Dec 2021 21:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s_ccXGmtqd1T; Fri, 17 Dec 2021 21:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CA2940C2B;
	Fri, 17 Dec 2021 21:10:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6E7C41BF358
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 21:10:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C65A6117C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 21:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6s_cGl0Zcsu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Dec 2021 21:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CABFA60EBD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Dec 2021 21:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639775424; x=1671311424;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O12f+TMQKWnolv99gwa8aZJFVkB1WHaQSFmZwVbVwVg=;
 b=nRdiUidHbl5PJYcH5o/Msz8Bfklg5SwBWz9xE9freaU07TJUP6VV/lvJ
 qUCfwVlG/BAxZfMewmzdYrRUVo+32JWPFNSbKjdZ9cN1Izfhd1BK93CSC
 d39Bu+cPbk9jCOQjR9WyyovtIJuQZTFv/OT+wr5pWO7dKQkdqs3UBTiDT
 YsPH+6mwC6GCqVfasMe16Up+pgfMi+Q1O9yCaceiKVdm8lrAQpnBSf1Um
 Q1XVtX7LL0G2NrVttqAIt8nFTAAuKhB4hWECPn5MvZsHqNxtyx+KnRPvN
 CAZfSjsGweh5gj/4WNj5B5Dijz5s/IUuyOnrf7TEef1gcdso4G3KHwmIP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="240057465"
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="240057465"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 13:10:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="612255459"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.10])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 13:10:24 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: James McLaughlin <james.mclaughlin@qsc.com>, davem@davemloft.net,
 kuba@kernel.org, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
In-Reply-To: <20211217205209.723782-1-james.mclaughlin@qsc.com>
References: <20211217205209.723782-1-james.mclaughlin@qsc.com>
Date: Fri, 17 Dec 2021 13:10:23 -0800
Message-ID: <87mtkzym2o.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: updated TX timestamp support for
 non-MSI-X platforms
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
Cc: netdev@vger.kernel.org, James McLaughlin <james.mclaughlin@qsc.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi James,

James McLaughlin <james.mclaughlin@qsc.com> writes:

> Time synchronization was not properly enabled on non-MSI-X platforms.
>
> Signed-off-by: James McLaughlin <james.mclaughlin@qsc.com>
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

A couple of things that I should have pointed out earlier.

The subject line would be better if it was: "PATCH net" (to indicate
that the patch should be considered for the "net" tree, not "net-next").

Also, it could be made clearer that it's a fix, so the full subject line
could be like this:

      "[PATCH net] igc: Fix TX timestamp support for non-MSI platforms"

Adding a "fixes" tag to the commit message would help, something like this:

       Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8e448288ee26..d28a80a00953 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5467,6 +5467,9 @@ static irqreturn_t igc_intr_msi(int irq, void *data)
>  			mod_timer(&adapter->watchdog_timer, jiffies + 1);
>  	}
>  
> +	if (icr & IGC_ICR_TS)
> +		igc_tsync_interrupt(adapter);
> +
>  	napi_schedule(&q_vector->napi);
>  
>  	return IRQ_HANDLED;
> @@ -5510,6 +5513,9 @@ static irqreturn_t igc_intr(int irq, void *data)
>  			mod_timer(&adapter->watchdog_timer, jiffies + 1);
>  	}
>  
> +	if (icr & IGC_ICR_TS)
> +		igc_tsync_interrupt(adapter);
> +
>  	napi_schedule(&q_vector->napi);
>  
>  	return IRQ_HANDLED;
> -- 
> 2.25.1
>

Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
