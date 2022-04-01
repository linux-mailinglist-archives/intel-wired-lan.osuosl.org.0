Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A045F4EF227
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 17:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16F8360ED7;
	Fri,  1 Apr 2022 15:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9qL-qlgGXpR4; Fri,  1 Apr 2022 15:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF0260ECA;
	Fri,  1 Apr 2022 15:01:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 974951BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 15:00:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73F4560ED4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 15:00:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ZkNkPeWQ-ZY for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 15:00:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46E2B60E95
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 15:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648825255; x=1680361255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZRXaOn2jWbKpXeNbzuRQna4zQhf11QVXubsI9+3NyPE=;
 b=iwI9BqEGz16MB2MLi8twvazdBMrAyO4fOZSBsTLhd58l2+IroCTD8VPb
 9i9UrsHpukBaek4AVO6AFwg7ZdK1rVMXeLCqztJn6MYzUQ7bgj6UJLHNn
 ujJB3dexfLi/ccQKYgzM6m8Ed8NulK348Oskn2lBeY1t4PVVKZDsoeODd
 CR6QD5FoR767jJcxjEPLWyBTJw2/40ScVUXkvJRwEdtd87GzJ+nCWB93l
 z+j1RNzKhhJf2WqE6hPchWQi8Shb2OFErvqigDA1UBK/z/IybybpGP70G
 zn+//bR50S0FKfN6p7bTsUhacsQnGOCxPiqN6UJ1FO6fiRBPuU7Vxv2yr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="323324424"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="323324424"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:00:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="547825824"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:00:52 -0700
Date: Fri, 1 Apr 2022 08:02:29 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Ykbp1W3uBgcCtIYv@localhost.localdomain>
References: <20220401125438.292649-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401125438.292649-1-maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: allow creating VFs for
 !CONFIG_NET_SWITCHDEV
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
Cc: Michal Swiatkowski <michal.swiatkowski@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 01, 2022 at 02:54:38PM +0200, Maciej Fijalkowski wrote:
> Currently for !CONFIG_NET_SWITCHDEV kernel builds it is not possible to
> create VFs properly as call to ice_eswitch_configure() returns
> -EOPNOTSUPP for us. This is because CONFIG_ICE_SWITCHDEV depends on
> CONFIG_NET_SWITCHDEV.
> 
> Change the ice_eswitch_configure() implementation for
> !CONFIG_ICE_SWITCHDEV to return 0 instead -EOPNOTSUPP and let
> ice_ena_vfs() finish its work properly.
> 
> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
> index bd58d9d2e565..6a413331572b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
> +++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
> @@ -52,7 +52,7 @@ static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
>  
>  static inline int ice_eswitch_configure(struct ice_pf *pf)
>  {
> -	return -EOPNOTSUPP;
> +	return 0;
>  }
>  
>  static inline int ice_eswitch_rebuild(struct ice_pf *pf)
> -- 
> 2.27.0
> 
Thanks for this fix!

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
