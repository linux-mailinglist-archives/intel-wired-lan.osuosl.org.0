Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B662CA717
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 16:31:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F116878A8;
	Tue,  1 Dec 2020 15:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qrnBlRqCXjIZ; Tue,  1 Dec 2020 15:31:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8363C87854;
	Tue,  1 Dec 2020 15:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6251BF38C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 935D5877D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4lObRf1IsSR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 15:31:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 31A5687765
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 15:31:21 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5af43d.dynamic.kabel-deutschland.de
 [95.90.244.61])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A9B7720225BD3;
 Tue,  1 Dec 2020 16:31:19 +0100 (CET)
From: Paul Menzel <pmenzel@molgen.mpg.de>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Henry Tieman <henry.w.tieman@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
 <20201121003835.48424-3-anthony.l.nguyen@intel.com>
Message-ID: <446e74e7-5e33-0e68-a187-4b114389abef@molgen.mpg.de>
Date: Tue, 1 Dec 2020 16:31:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201121003835.48424-3-anthony.l.nguyen@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [net 3/6] ice: update the number of available
 RSS queues
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Henry, dear Tony,


Am 21.11.20 um 01:38 schrieb Tony Nguyen:
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> It was possible to have Rx queues that were not available for use
> by RSS. This would happen when increasing the number of Rx queues
> while there was a user defined RSS LUT.
> 
> Always update the number of available RSS queues when changing the
> number of Rx queues.
> 
> Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 ++++++++++++++------
>   1 file changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 9e8e9531cd87..8515a3a7515f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3321,6 +3321,18 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
>   	ch->max_other = ch->other_count;
>   }
>   
> +/**
> + * ice_get_valid_rss_size - return valid number of RSS queues
> + * @hw: pointer to the HW structure
> + * @new_size: requested RSS queues
> + */
> +static int ice_get_valid_rss_size(struct ice_hw *hw, int new_size)
> +{
> +	struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
> +
> +	return min_t(int, new_size, BIT(caps->rss_table_entry_width));
> +}
> +
>   /**
>    * ice_vsi_set_dflt_rss_lut - set default RSS LUT with requested RSS size
>    * @vsi: VSI to reconfigure RSS LUT on
> @@ -3348,14 +3360,10 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
>   		return -ENOMEM;
>   
>   	/* set RSS LUT parameters */
> -	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> +	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags))
>   		vsi->rss_size = 1;
> -	} else {
> -		struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
> -
> -		vsi->rss_size = min_t(int, req_rss_size,
> -				      BIT(caps->rss_table_entry_width));
> -	}
> +	else
> +		vsi->rss_size = ice_get_valid_rss_size(hw, req_rss_size);
>   
>   	/* create/set RSS LUT */
>   	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
> @@ -3434,8 +3442,13 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
>   
>   	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
>   
> -	if (new_rx && !netif_is_rxfh_configured(dev))
> -		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
> +	if (new_rx) {
> +		if (!netif_is_rxfh_configured(dev))
> +			return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
> +
> +		/* Update rss_size due to change in Rx queues */
> +		vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
> +	}

Why not unconditionally call

     vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);

as the function handles the case `new_rx = 0`, right?

`ice_vsi_recfg_qs(vsi, new_rx, new_tx);` also does not check `new_tx` 
for example.

>   
>   	return 0;
>   }


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
