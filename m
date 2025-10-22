Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B4844BFA7A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 09:11:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E75840B41;
	Wed, 22 Oct 2025 07:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yftl42AMWhns; Wed, 22 Oct 2025 07:11:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E49B40B4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761117113;
	bh=3xPsm8MjYo2LDMJP5LCS6eixNI5ZQpyMZVS++pDIlBU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O3lJbWQ9Gnm2WdK6cT8vkiXYvMz7DapLPMo6oM6/2WrX21jX0LpweTd1fbJtBzDQr
	 iC/nmxfRshyikCnXnfjWKXSZwUKsyVyK8kZL//PTEIwEGhrI1anbzDhjfvsgywzHPG
	 cLeXNgOYzTkMHTnMABOtQvn2cYpGMCUMKDj+zW6EBZEi8VudY5TI6Dwusa6SAvWux/
	 uCW/K1JSeeEkOO5vbvfB8Hg4AxpNiIkmkAFNrZhNPaEs9od9OzcixQ/0UMDD9ldLs/
	 j9HVtvz3k7Js6MJderzyAfmz3s0/9kzfTz2lPrzOz2pLA+mIOvZQK+GRtkTl7wCm/R
	 g4XFYMCK8aZLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E49B40B4A;
	Wed, 22 Oct 2025 07:11:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12E68DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E570C60FCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v-Xaw7NlEkvO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 07:11:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1331660F33
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1331660F33
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1331660F33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 07:11:50 +0000 (UTC)
X-CSE-ConnectionGUID: xvTp2pZKStOeB0+HMVz/Aw==
X-CSE-MsgGUID: kuAzu/XLSjWca55+9YVgXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80693244"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="80693244"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 00:11:50 -0700
X-CSE-ConnectionGUID: tHqeaaMNQ5y4jCd4+9wtmQ==
X-CSE-MsgGUID: fMEck10fSfGswxyfgQEXIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183381090"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 00:11:49 -0700
Date: Wed, 22 Oct 2025 09:09:42 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <aPiDNooOaHEtmQPI@mev-dev.igk.intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
 <5d739d1f-faa7-4734-b5e7-8e35b5556ce7@intel.com>
 <34268765-6cc5-4816-9ba7-4f00e8f353a0@intel.com>
 <aPHwpE+YuxfWZjft@mev-dev.igk.intel.com>
 <b1faad7b-531b-429f-97a4-aa93a160569c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b1faad7b-531b-429f-97a4-aa93a160569c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761117111; x=1792653111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KS5mjdbhibr4HOupBrT/VG3rdVqHnXLAHbIdQ5ZRfFQ=;
 b=DZSl421EDToCD5vxs+JcddNAfHD0ZgJqFZnWSyl34/nrNJPCqeZe2Rpr
 5UH5ByT9kT6sGvWa4xcW0BADoET0m2KrIpvifhh1Y2x/B9RkLbZ6x/K2n
 Bn9+uejoNsvAV5c+3pikk0qJPAOe9dpsttP+BmFgbHA2VBt2Vy4pLuaxq
 +vzkb4ogmEp8j20F5ZzgpX4ARks3aOTXLq5CsM+/sHeFHyxDmQt2fgNs1
 6jxYG0hteCzT/rbB3jW+N9jRzoARSNlQPammJlDoArwdcBX5G9ht1R/t9
 c2pEEINcFHMc7EMBIHrhVOH1NtIqoYFfdChqjsZXmd7KU9dNK1TDx7myQ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DZSl421E
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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

On Fri, Oct 17, 2025 at 04:35:18PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Fri, 17 Oct 2025 09:30:44 +0200
> 
> > On Fri, Oct 17, 2025 at 07:03:31AM +0200, Przemek Kitszel wrote:
> >> On 10/16/25 17:36, Alexander Lobakin wrote:
> >>> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >>> Date: Thu, 16 Oct 2025 08:22:50 +0200
> >>>
> >>>> On some high-core systems loading ice driver with default values can
> >>>> lead to queue/irq exhaustion. It will result in no additional resources
> >>>> for SR-IOV.
> >>>>
> >>>> In most cases there is no performance reason for more than 64 queues.
> >>>> Limit the default value to 64. Still, using ethtool the number of
> >>>> queues can be changed up to num_online_cpus().
> >>>>
> >>>> This change affects only the default queue amount on systems with more
> >>>> than 64 cores.
> >>>>
> >>>> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> >>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >>>> ---
> >>>>   drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
> >>>>   drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
> >>>>   drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
> >>>>   3 files changed, 28 insertions(+), 6 deletions(-)
> >>>>
> >>>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> >>>> index 3d4d8b88631b..354ec2950ff3 100644
> >>>> --- a/drivers/net/ethernet/intel/ice/ice.h
> >>>> +++ b/drivers/net/ethernet/intel/ice/ice.h
> >>>> @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
> >>>>   	else
> >>>>   		return &pf->adapter->ctrl_pf->hw;
> >>>>   }
> >>>> +
> >>>> +/**
> >>>> + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
> >>>> + *
> >>>> + * This function returns the number of online CPUs, but caps it at suitable
> >>>> + * default to prevent excessive resource allocation on systems with very high
> >>>> + * CPU counts.
> >>>> + *
> >>>> + * Note: suitable default is currently at 64, which is reflected in default_cpus
> >>>> + * constant. In most cases there is no much benefit for more than 64 and it is a
> >>>> + * power of 2 number.
> >>>> + *
> >>>> + * Return: number of online CPUs, capped at suitable default.
> >>>> + */
> >>>> +static inline u16 ice_capped_num_cpus(void)
> >>>> +{
> >>>> +	const int default_cpus = 64;
> >>>
> >>> Maybe we should just use netif_get_num_default_rss_queues() like I did
> >>> in idpf?
> >>>
> >>> Or it still can be too high e.g. on clusters with > 256 CPUs?
> >>
> >> good point,
> >> perhaps we should both use it and change the (kernel) func to cap at 64
> >>
> > 
> > Sounds good, thanks for pointing the function.
> > 
> > Do you think it is ok to cap the generic function? Maybe other vendors
> > want more default queues.
> 
> Nah I don't think it's a good idea to hardcode any numbers in the
> generic function.
> 
> > 
> > What about capping netif_get_num_default_rss_queues() at 64 just for
> > ice?
> 
> netif_get_num_default_rss_queues() returns *half* of the number of
> *physical* cores. I.e. it will return something bigger than 64 only in
> case of > 256 threads in the system (considering SMT).
> 
> Do we need to still cap this to 64 in ice at all?

That can be good enough. I will send next version with just call to this
function.

> 
> Thanks,
> Olek
