Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 147AA62310B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 18:06:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BF3460BFD;
	Wed,  9 Nov 2022 17:06:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8BF3460BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668013597;
	bh=SIVjoFStvB3pK07C4GNU+4WkOMi9WwP1PL2Nmdy5IRo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rHyMaclqsK629v42b4bROfc+/06yFaVsVdJkuj5GzIvfHzPClEzqO92gtkMf4A5vy
	 A+tUCOJl087VXicae56avhWDnWr+/FCMNm5kv9THYTyHSoPEo4OkphzD6bkIqRj5Wq
	 A1ebI6ReMY1xy4FLIZzELN7wWvp+HN/XAndxUxmqMElVGccPdOMUaUwtou8xBikY0l
	 p68zUNQE7soIs0fX8gAHs3hKCqEbNgLMkEZB9j/+yG1Cl1s7y6Jf8j9p29qk7UYvTf
	 /b9J1MC4YLCN49of8G9cfftmojJjrgre6JxlrR46sIJeX4iBrWVlNtVQhocUccVusG
	 /nOuimXL6KbpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zZACMMRGuaod; Wed,  9 Nov 2022 17:06:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 954C060BA8;
	Wed,  9 Nov 2022 17:06:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 954C060BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FFE41BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:06:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6EBCB40977
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:06:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EBCB40977
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2nx9FwYlW8i for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 17:06:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5A81404F4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A5A81404F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 17:06:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312197161"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312197161"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 09:05:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="614757062"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="614757062"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 09 Nov 2022 09:05:56 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2A9H5tHv007416; Wed, 9 Nov 2022 17:05:55 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
Date: Wed,  9 Nov 2022 18:02:10 +0100
Message-Id: <20221109170210.1155273-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221109152016.66326-1-tirthendu.sarkar@intel.com>
References: <20221109152016.66326-1-tirthendu.sarkar@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668013589; x=1699549589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUB98y9lDg/2WtNPN7G6LrAoGSJw8m7DnhcvXdCGarE=;
 b=frRtVDqUDhHSVu5FpmgWZLBrMCE0a2gFvP59aRlpLDn5HGbTRdtu1bPJ
 eAcAXDYP2JAcPl2XE9xrVhCPngswoHhPhO6vQqwF3R6gpbIlK7vQRB4MY
 xHoak/AZaqCRSc+X31NmpYgwZ9sU8P08tR4peEPAfVGV1imVMVz9Jw6fo
 TZ498d+pFb6t6+t54QueDEpnIG4rlF6DElwqYNtvfLGwi7wWKmJOrpUAa
 euI4nzmulH7bln5LgqlZT8uYK+X2r3er3HXfMplXKARM0dFQJhwQkWDAs
 NbbzcF2YCauMOq1MdVFaKPpvLq3RS1x960gJpbqWgIVabo493mRyyPGUK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=frRtVDqU
Subject: Re: [Intel-wired-lan] [PATCH intel-next] i40e: allow toggling
 loopback mode via
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
Cc: tirtha@gmail.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
Date: Wed,  9 Nov 2022 20:50:16 +0530

> Add support for NETIF_F_LOOPBACK. This feature can be set via:
> $ ethtool -K eth0 loopback <on|off>
> 
> This sets the MAC Tx->Rx loopback.
> 
> This feature is used for the xsk selftests, and might have other uses
> too.
> 
> Signed-off-by: Tirthendu Sarkar <tirthendu.sarkar@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 22 +++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 28 +++++++++++++++++++
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |  3 ++
>  3 files changed, 53 insertions(+)

[...]

> @@ -13721,6 +13747,8 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>  	if (!(pf->flags & I40E_FLAG_MFP_ENABLED))
>  		hw_features |= NETIF_F_NTUPLE | NETIF_F_HW_TC;
>  
> +	hw_features |= NETIF_F_LOOPBACK;
> +
>  	netdev->hw_features |= hw_features;
>  
>  	netdev->features |= hw_features | NETIF_F_HW_VLAN_CTAG_FILTER;

So here it will be enabled by default, which shouldn't happen as it
breaks traffic flow.
Just add it directly to netdev->hw_features one line above.

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> index ebdcde6f1aeb..9a71121420c3 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -105,6 +105,9 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
>  				struct i40e_asq_cmd_details *cmd_details);
>  enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
>  				  bool atomic_reset);
> +i40e_status i40e_aq_set_mac_loopback(struct i40e_hw *hw,
> +				     bool ena_lpbk,
> +				     struct i40e_asq_cmd_details *cmd_details);
>  i40e_status i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>  				     struct i40e_asq_cmd_details *cmd_details);
>  i40e_status i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
> -- 
> 2.34.1

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
