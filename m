Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 691BD38D92B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 May 2021 07:47:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9FE9607DC;
	Sun, 23 May 2021 05:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 129IG6DgLXNs; Sun, 23 May 2021 05:47:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E4560730;
	Sun, 23 May 2021 05:47:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEA1C1BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 May 2021 05:47:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC6B283A49
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 May 2021 05:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ci1qgXGL9Qjs for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 May 2021 05:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D999583A50
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 May 2021 05:47:34 +0000 (UTC)
IronPort-SDR: nSgKkv3B3L2+vFDwbQXjJox2+juryRfud39wqo5FjQMWKCMrTO26nQM7texaPt0nKIU1TMagDB
 fWK/R/5ci7bQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="201460706"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="201460706"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2021 22:47:34 -0700
IronPort-SDR: GC0ZpBmkqFP7xLRiZ1xXyEnpSGojc1KmPElF1Gpipdi4uaeMHrYJwfP5aZAhzlhT8JpsZjWunz
 hOVmrcSu7lEw==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475298038"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.214.192.226])
 ([10.214.192.226])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2021 22:47:30 -0700
To: trix@redhat.com, jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
References: <20210521195019.2078661-1-trix@redhat.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <85d1b413-3ab3-6cee-4197-785b0c099340@intel.com>
Date: Sun, 23 May 2021 08:47:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210521195019.2078661-1-trix@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: change default return of
 igc_read_phy_reg()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/21/2021 22:50, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Static analysis reports this problem
> 
> igc_main.c:4944:20: warning: The left operand of '&'
>    is a garbage value
>      if (!(phy_data & SR_1000T_REMOTE_RX_STATUS) &&
>            ~~~~~~~~ ^
Tom, thanks for this patch. I believe the same static analysis problem 
should be with the 'igb_read_phy_reg' method:
https://elixir.bootlin.com/linux/v5.13-rc1/source/drivers/net/ethernet/intel/igb/igb.h#L769
> 
> pyy_data is set by the call to igc_read_phy_reg() only if
%s/pyy_data/phy_data/gc (typo)
> there is a read_reg() op, else it is unset and a 0 is
> returned.  Change the return to -EOPNOTSUPP.
> 
> Fixes: 208983f099d9 ("igc: Add watchdog")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index b6d3277c6f520..71100ee7afbee 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -577,7 +577,7 @@ static inline s32 igc_read_phy_reg(struct igc_hw *hw, u32 offset, u16 *data)
>   	if (hw->phy.ops.read_reg)
>   		return hw->phy.ops.read_reg(hw, offset, data);
>   
> -	return 0;
> +	return -EOPNOTSUPP;
>   }
>   
>   void igc_reinit_locked(struct igc_adapter *);
> 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
