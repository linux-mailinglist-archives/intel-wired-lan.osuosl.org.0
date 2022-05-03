Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE0E51889F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 May 2022 17:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0831460FEE;
	Tue,  3 May 2022 15:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZfAhZEV3A4h; Tue,  3 May 2022 15:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D144560BA1;
	Tue,  3 May 2022 15:32:42 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1551BF342
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24DC860BA1
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2LSnx8ZCH8Y for <intel-wired-lan@osuosl.org>;
 Tue,  3 May 2022 15:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 50FA960B69
 for <intel-wired-lan@osuosl.org>; Tue,  3 May 2022 15:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651591957; x=1683127957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tN8hi1PLOygpEeaVcISPoT2Zt8lx+K4AE60YRpbMLaw=;
 b=UOwHXec75hWfWAk5MfnX0857TPvOjDXNkraPNPc/MJjNXpBriEzVylcx
 cpvASbUhy7p2mTF67oHJbMUtVEGGI21+6wW79cPO4rdeXB7J6AETLhP7r
 UxZ0EKm5A22OOEcMtFNYP33cBpjqQiFiVIQ7cPVAJKw7QwrpTXx1wBVRG
 875zewMjPWFVuNDbdIp4VMvvSkL0EzYGSKKJ2RtQCieKexsWcvzxHe74R
 cj3jNL9rFSLZBh931jJz1huXID+m9EFEOtk21uHP6xmhgG4nRc2IfVn0I
 jmHwAm75euRt82G9434mMMP/8D48HJezDMp08NmBOo/To9enu4hYB4hPb A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292694876"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="292694876"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 08:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="708067760"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 03 May 2022 08:32:23 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 243FWMfX028462; Tue, 3 May 2022 16:32:22 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Date: Tue,  3 May 2022 17:29:08 +0200
Message-Id: <20220503152908.395702-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
References: <20220503132428.1859432-1-sudheer.mogilappagari@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: Expose RSS
 indirection tables for queue groups via ethtool
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
Cc: intel-wired-lan@osuosl.org, Paul Menzel <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Date: Tue,  3 May 2022 06:24:28 -0700

> From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> When ADQ queue groups(TCs) are created via tc mqprio command,
> RSS contexts and associated RSS indirection tables are configured
> automatically per TC based on the queue ranges specified for
> each traffic class.
> 
> For ex:
> tc qdisc add dev enp175s0f0 root mqprio num_tc 3 map 0 1 2 \
> 	queues 2@0 8@2 4@10 hw 1 mode channel
> 
> will create 3 queue groups(TC 0-2) with queue ranges 2, 8 and 4
> in 3 queue groups. Each queue group is associated with its
> own RSS context and RSS indirection table.
> 
> Add support to expose RSS indirection tables for all ADQ queue
> groups using ethtool RSS contexts interface.
> 	ethtool -x enp175s0f0 context <tc-num>
> 
> Signed-off-by: Sridhar Samudrala<sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

You didn't answer to any of my comments or questions during the
internal review, including the ones that Paul has just asked, and
now you're posting the same version to IWL to get it accepted
upstream.
That's not how it works, NAK.

> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 69 +++++++++++++++-----
>  1 file changed, 51 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 476bd1c83c87..1e71b70f0e52 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3111,36 +3111,47 @@ static u32 ice_get_rxfh_indir_size(struct net_device *netdev)
>  	return np->vsi->rss_table_size;
>  }
>  
> -/**
> - * ice_get_rxfh - get the Rx flow hash indirection table
> - * @netdev: network interface device structure
> - * @indir: indirection table
> - * @key: hash key
> - * @hfunc: hash function
> - *
> - * Reads the indirection table directly from the hardware.
> - */
>  static int
> -ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
> +ice_get_rxfh_context(struct net_device *netdev, u32 *indir,
> +		     u8 *key, u8 *hfunc, u32 rss_context)
>  {
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
> -	int err, i;
> +	u16 qcount, offset;
> +	int err, num_tc, i;
>  	u8 *lut;
>  
> +	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> +		netdev_warn(netdev, "RSS is not supported on this VSI!\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	if (rss_context && !ice_is_adq_active(pf)) {
> +		netdev_err(netdev, "RSS context cannot be non-zero when ADQ is not configured.\n");
> +		return -EINVAL;
> +	}
> +
> +	qcount = vsi->mqprio_qopt.qopt.count[rss_context];
> +	offset = vsi->mqprio_qopt.qopt.offset[rss_context];
> +
> +	if (rss_context && ice_is_adq_active(pf)) {
> +		num_tc = vsi->mqprio_qopt.qopt.num_tc;
> +		if (rss_context >= num_tc) {
> +			netdev_err(netdev, "RSS context:%d  > num_tc:%d\n",
> +				   rss_context, num_tc);
> +			return -EINVAL;
> +		}
> +		/* Use channel VSI of given TC */
> +		vsi = vsi->tc_map_vsi[rss_context];
> +	}
> +
>  	if (hfunc)
>  		*hfunc = ETH_RSS_HASH_TOP;
>  
>  	if (!indir)
>  		return 0;
>  
> -	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> -		/* RSS not supported return error here */
> -		netdev_warn(netdev, "RSS is not configured on this VSI!\n");
> -		return -EIO;
> -	}
> -
>  	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
>  	if (!lut)
>  		return -ENOMEM;
> @@ -3153,14 +3164,35 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
>  	if (err)
>  		goto out;
>  
> +	if (ice_is_adq_active(pf)) {
> +		for (i = 0; i < vsi->rss_table_size; i++)
> +			indir[i] = offset + lut[i] % qcount;
> +		goto out;
> +	}
> +
>  	for (i = 0; i < vsi->rss_table_size; i++)
> -		indir[i] = (u32)(lut[i]);
> +		indir[i] = lut[i];
>  
>  out:
>  	kfree(lut);
>  	return err;
>  }
>  
> +/**
> + * ice_get_rxfh - get the Rx flow hash indirection table
> + * @netdev: network interface device structure
> + * @indir: indirection table
> + * @key: hash key
> + * @hfunc: hash function
> + *
> + * Reads the indirection table directly from the hardware.
> + */
> +static int
> +ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
> +{
> +	return ice_get_rxfh_context(netdev, indir, key, hfunc, 0);
> +}
> +
>  /**
>   * ice_set_rxfh - set the Rx flow hash indirection table
>   * @netdev: network interface device structure
> @@ -4102,6 +4134,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
>  	.set_pauseparam		= ice_set_pauseparam,
>  	.get_rxfh_key_size	= ice_get_rxfh_key_size,
>  	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
> +	.get_rxfh_context	= ice_get_rxfh_context,
>  	.get_rxfh		= ice_get_rxfh,
>  	.set_rxfh		= ice_set_rxfh,
>  	.get_channels		= ice_get_channels,
> -- 
> 2.27.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
