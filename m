Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834D03307A2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Mar 2021 06:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4524430EC;
	Mon,  8 Mar 2021 05:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7Il6__moIK9; Mon,  8 Mar 2021 05:43:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3BEF430E9;
	Mon,  8 Mar 2021 05:43:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A1601BF407
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 05:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 47CF7438CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 05:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7bvsBC62NAoM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Mar 2021 05:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E61B442DA8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Mar 2021 05:43:37 +0000 (UTC)
IronPort-SDR: V15zYd42h5odOv3wnA4ieAy8jWHoUW8zt2guahZa6gZ9PwoPkPBJh+qNKTbjDZEvAXgr8ixKy7
 0+8BrzACjvFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="175585965"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="175585965"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 21:43:36 -0800
IronPort-SDR: NtrqViryP86Vw4W3pRl+OQyWQXdENR/3Jx1LkW4B3PmE9P/knbk5JWoec6miaBeoDoXpAjSsGX
 TVoNW287NJZA==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="402696119"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.185.168.83])
 ([10.185.168.83])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 21:43:34 -0800
To: Dinghao Liu <dinghao.liu@zju.edu.cn>, kjlu@umn.edu
References: <20210228094424.7884-1-dinghao.liu@zju.edu.cn>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <57bae851-e735-d015-114b-aeacd602f623@intel.com>
Date: Mon, 8 Mar 2021 07:43:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210228094424.7884-1-dinghao.liu@zju.edu.cn>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fix error handling in
 e1000_set_d0_lplu_state_82571
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
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/28/2021 11:44, Dinghao Liu wrote:
> There is one e1e_wphy() call in e1000_set_d0_lplu_state_82571
> that we have caught its return value but lack further handling.
> Check and terminate the execution flow just like other e1e_wphy()
> in this function.
> 
> Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
> ---
>   drivers/net/ethernet/intel/e1000e/82571.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/82571.c b/drivers/net/ethernet/intel/e1000e/82571.c
> index 88faf05e23ba..0b1e890dd583 100644
> --- a/drivers/net/ethernet/intel/e1000e/82571.c
> +++ b/drivers/net/ethernet/intel/e1000e/82571.c
> @@ -899,6 +899,8 @@ static s32 e1000_set_d0_lplu_state_82571(struct e1000_hw *hw, bool active)
>   	} else {
>   		data &= ~IGP02E1000_PM_D0_LPLU;
>   		ret_val = e1e_wphy(hw, IGP02E1000_PHY_POWER_MGMT, data);
> +		if (ret_val)
> +			return ret_val;
>   		/* LPLU and SmartSpeed are mutually exclusive.  LPLU is used
>   		 * during Dx states where the power conservation is most
>   		 * important.  During driver activity we should enable
> 
Good for me.
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
