Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D98A11960
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 06:58:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BCEE83FBE;
	Wed, 15 Jan 2025 05:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SNgTna5rdt9a; Wed, 15 Jan 2025 05:58:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1E8884026
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736920708;
	bh=DIcFbDLcKOV+fYJHoOdamHmIDv+LV75N1jzJA8W9AGI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=43Uclu0CkwOtqrA+2G+vgotrM33bGTBClvyZsb8NCxA4jccq40V7AmvDHYN73XasF
	 r9hKbRaE+VjTNY9F05KUBuiRUX0/5e2BkfSAd6WO3St59TH1dblka/BgLRs2OCXcHx
	 QG5imgQZiDOdqdq0J24XjxSAiZDiEab7A50NOARarAtdd2h4PrX4hh2rXcqp1hVN61
	 VDA8CkoTApTU83Rwj1CoVsrU7UPQffb7vpb5cJvK7jW5R/aJQK94p7kaWl6RvaVJ5T
	 YnFGWAnNfc10HP5J2A3Z62sBssJ2BW5CrkjKjVJmph9jynF7mObUSZ6XN12g40dqht
	 xvW02QoTcGmSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1E8884026;
	Wed, 15 Jan 2025 05:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 29BC6B8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 05:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18018405FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 05:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sj1DqJt0OkVT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 05:58:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E6E2A404C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6E2A404C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E6E2A404C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 05:58:24 +0000 (UTC)
X-CSE-ConnectionGUID: zAaQe0TtRHuUj36YzEiTtg==
X-CSE-MsgGUID: zJiPW7qYQpqjjfxoT7JRng==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="40053084"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="40053084"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 21:58:24 -0800
X-CSE-ConnectionGUID: Z/y2dthoQ62/tnmXEbvudg==
X-CSE-MsgGUID: 8WCvsK4hT1+UlRAsc8mHvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="105627746"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 21:58:21 -0800
Date: Wed, 15 Jan 2025 06:55:01 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <Z4dNkNLkQlSPA/SA@mev-dev.igk.intel.com>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736920705; x=1768456705;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ee7/cU8Rh7hsiv0IFSWaCv5xbg/nU6TL/m27ZjUv5WQ=;
 b=Nh7ydqTO0TRcbvOhgXwJTJBsBlAX3Lps1iU6NU37xt7v5i7lJyUXLajX
 llU3umM40hvhjyBFcklTOFLnm8qiPBl1F6FFlv+tmfQCfyOyK7ZVZTQU4
 +1YC25vF01aVtLIcLX32DVgLcORmUovAKt8xaxglE+CjsfNQSu7mzJ9fy
 ZysgfXD1LrYfoDvhNKcRA2rn0mAlKtADXzkv+TyGja39kKrgB8thWsp41
 ZHamnA68BDX14MV0piEV1+ey9quP3rxOfQ9wriZAf6Ko10N4vG4E8Zbjw
 GRpEMh3U8qJ/AN/NljeAjiWrd8exsSDV2N+EL4SJP6trB2YKnxRmOagYI
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nh7ydqTO
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 15, 2025 at 09:11:17AM +0530, Dheeraj Reddy Jonnalagadda wrote:
> The ixgbe driver was missing proper endian conversion for ACI descriptor
> register operations. Add the necessary conversions when reading and
> writing to the registers.
> 
> Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command Interface")
> Closes: https://scan7.scan.coverity.com/#/project-view/52337/11354?selectedIssue=1602757
> Signed-off-by: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
> ---
> Changelog
> 
> v2:
> 	- Updated the patch to include suggested fix
> 	- Updated the commit message to describe the issue
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> index 683c668672d6..3b9017e72d0e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -113,7 +113,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  
>  	/* Descriptor is written to specific registers */
>  	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), cpu_to_le32(raw_desc[i]));
>  
>  	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>  	 * PF_HICR_EV
> @@ -145,7 +145,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  	if ((hicr & IXGBE_PF_HICR_SV)) {
>  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
> -			raw_desc[i] = raw_desc[i];
> +			raw_desc[i] = le32_to_cpu(raw_desc[i]);
>  		}
>  	}
>  
> @@ -153,7 +153,7 @@ static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>  	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>  			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
> -			raw_desc[i] = raw_desc[i];
> +			raw_desc[i] = le32_to_cpu(raw_desc[i]);
>  		}
>  	}
>  
> -- 
> 2.34.1
> 
Thanks for fixing it
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
