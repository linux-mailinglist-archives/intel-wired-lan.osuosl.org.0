Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BEA66702D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jan 2023 11:49:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20D2240522;
	Thu, 12 Jan 2023 10:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20D2240522
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673520568;
	bh=tqN7/Fqk4nNYtMke34snldi4kRpCBc5EZ/1fOnD38g8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T65GelIkNhyjqTe7pJj1J14OM1X+16NuD8eYBEhKgUr4zc4CMnLJp/TJe1dhmVsS5
	 aQdUf6Ek5JCJduENWCsia5dIl/9AWjlz2Da0tbOweQhfcJyyH6wCp1d0TsxL8ebuAE
	 DKVv3DNr0SRbdviq8vRZVjSYbY5SyNpwbmq8CreI9RKoqPPyhfTa17tfeOn9rJidww
	 bXMkZKEhOsMEbtYmDysx93WE+NAN0t7tUfDEL1/aZT9CljVyAxaH/Z+pqhjRxFDhqT
	 QUujyT/W1A3cfCUiqLJNf+J+0/4fHixX2Sa+PFV8nynhMjx83YrDpyX/JKXFbJv81z
	 jryYuRfJFuB3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IsLTGgKCZXaA; Thu, 12 Jan 2023 10:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FE734014D;
	Thu, 12 Jan 2023 10:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FE734014D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43DAE1BF476
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DFE54014D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DFE54014D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4nCpcAOGXi5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jan 2023 10:49:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1D66400D0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1D66400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jan 2023 10:49:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409911331"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="409911331"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:49:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="765557911"
X-IronPort-AV: E=Sophos;i="5.96,319,1665471600"; d="scan'208";a="765557911"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 02:49:11 -0800
Date: Thu, 12 Jan 2023 11:49:08 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <Y7/lpDzq6q+SWRxK@localhost.localdomain>
References: <20230111191906.131-1-paul.m.stillwell.jr@intel.com>
 <20230111191906.131-5-paul.m.stillwell.jr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111191906.131-5-paul.m.stillwell.jr@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673520560; x=1705056560;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HPb1jmCEaJ+C888CxgAHmzZ1FaYfc9Gz40sm8p1Nqn4=;
 b=HvGqavVruBDgC27li1buw91bvgDJ7kLVufRDklnDzkaHFrmCHHBbXvN3
 LmsRNfKT3BAILg6ySm0qzO9FkJxyQLLWPT40nHAvz7lZREw3Ltb/h4cO3
 uG4HEw5eP7uCb7viL6G1qH6Dp0SwA2N3yV/dIasu15XYsiT1ygOxuRdCF
 dyTEz9SNxHd5HGe3OxBsEP07ArkYj5YhCDDRDlYKV098gKBIapbTrC4iY
 xxezbIvcSrqwtAgY1/O8DqLUYIxD14Zj0yZIlrt/fEwk03rpwu0Bg/uFy
 9/cVcVffMhscFtSpc14SDN06IuQgAvsFivYfPzuFznEAva11JcYpWEYEa
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HvGqavVr
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 4/5] ice: disable FW
 logging on driver unload
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

On Wed, Jan 11, 2023 at 11:19:05AM -0800, Paul M Stillwell Jr wrote:
> The FW is running in it's own context irregardless of what the driver
> is doing. In this case, if the driver previously registered for FW
> log events and then the driver unloads without informing the FW to
> unregister for FW log events then the FW still has a timer running to
> output FW logs.
> 
> The next time the driver loads and tries to register for FW log events
> then the FW returns an error, but still enables the continued
> outputting of FW logs. This causes an IO error to devlink which isn't
> intuitive since the logs are still being output.
> 
> Fix this by disabling FW logging when the driver is being unloaded.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 29 +++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1b5debc3109d..593efc064f5b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4500,6 +4500,33 @@ static void ice_unregister_netdev(struct ice_vsi *vsi)
>  	clear_bit(ICE_VSI_NETDEV_REGISTERED, vsi->state);
>  }
>  
> +/**
> + * ice_pf_fwlog_deinit - clear FW logging metadata on device exit
> + * @pf: pointer to the PF struct
> + */
> +static void ice_pf_fwlog_deinit(struct ice_pf *pf)
> +{
> +	struct ice_hw *hw = &pf->hw;
> +
> +	/* make sure FW logging is disabled to not put the FW in a weird state
> +	 * for the next driver load
> +	 */
> +	if (hw->fwlog_ena) {
> +		int status;
> +
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +		status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to turn off FW logging, status: %d\n",
> +				 status);
> +
> +		status = ice_fwlog_unregister(hw);
> +		if (status)
> +			dev_warn(ice_pf_to_dev(pf), "Unable to unregister FW logging, status: %d\n",
> +				 status);
Shouldn't hw->fwlog_cfg be free on deinit? Or if not here, where does
this happen?

> +	}
> +}
> +
>  /**
>   * ice_cfg_netdev - Allocate, configure and register a netdev
>   * @vsi: the VSI associated with the new netdev
> @@ -5237,6 +5264,8 @@ static void ice_remove(struct pci_dev *pdev)
>  		msleep(100);
>  	}
>  
> +	ice_pf_fwlog_deinit(pf);
> +
>  	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>  		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>  		ice_free_vfs(pf);
> -- 
> 2.35.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
