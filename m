Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7DCD11863
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 10:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDE248407C;
	Mon, 12 Jan 2026 09:36:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JDV31GgGlmCh; Mon, 12 Jan 2026 09:36:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35F85840B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768210583;
	bh=yJgvYOvhAu1NAaYe8saiJs7TfeOd0KlKQxqpyZxxyO8=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AwpnAeSZI7PVxP/qSfs+C6iQjKQpBrzbbyVHysyIa610q1tUnImnj+rd3hNy92+8s
	 fRTDexqICYMJU1Gk0Ilov9btXAB6fnpudneM7k6gtLTcd55WjFSJZKESfjyfR9KQh/
	 7usWUBicHqHTda+ZR8MYEYgGTYahhBTqYkRNRKErQCWV9Pze3Sg+ujjUmVaPY7XsPP
	 JmA3/JRMwXdsI+87YAwwBehGcqvgvwJViK6CHJCyi5L5p2IXKAlhXXlgBeNR+I9o/s
	 yuE1FCCtO4JlCVgLBwzuW/wQVyGp/ATy85+heV9a1WApw4yJx9v9dzHP9bGuQAlwYt
	 cn2/68nwRGTEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35F85840B4;
	Mon, 12 Jan 2026 09:36:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B0E6E1CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A277D403DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvpHDFGHXQds for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 09:36:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 937914009A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 937914009A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 937914009A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 09:36:19 +0000 (UTC)
X-CSE-ConnectionGUID: 5N1rOpncQT289IUxxPk5Xg==
X-CSE-MsgGUID: J0+KDCETQO23sAKYFpPHog==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="69216794"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="69216794"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:36:19 -0800
X-CSE-ConnectionGUID: /L0Bh2RqRtSXJ6k0tqXgeg==
X-CSE-MsgGUID: Lc9R4vtjRD6XCe43eVkMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="203259953"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.20.185])
 ([10.246.20.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 01:36:18 -0800
Message-ID: <1e162d79-20a2-4de3-8862-aa4fbe842132@linux.intel.com>
Date: Mon, 12 Jan 2026 10:36:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20260109085339.49839-1-marcin.szycik@linux.intel.com>
 <ddd25fe0-a6a8-4ba9-8cb1-3f91ca562928@linux.dev>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ddd25fe0-a6a8-4ba9-8cb1-3f91ca562928@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768210580; x=1799746580;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=TsiS/CSpnyt0RXJzA4DD1dTIpkRrzTXuDtHXTG3OcMc=;
 b=A8bQ/2KHSJz8NM2S3kFxTyiPtB0Lkos9bkODdP0TUok1V8gzc8OUrS71
 Sn5tl0rbGcL3B7mJez+3AFZ0vUJcKrECvXuwBt/sNfVNtfsWyO5CBFnuL
 561GzWJJyNc8c0V9mMjViidBSV+pgO8Bb2q5GMdW77kTus+0MNGNiMwiV
 ysm/1e/E6uePN6k0CzwpAHaartuMryFDkOVTODW3G0iAFpVmubjy0Lnd/
 FwKAYyLblUAUFP6Eg7VmMXqe2bqQLOGpScLpk4vyi2ei4PyP1MDYJ1WyY
 d5UQm2AxniASTfMvN0JwFf4kA7iG7amChfqZey0etJKtjMalFthIIgWcB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A8bQ/2KH
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix setting RSS VSI hash for
 E830
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



On 09.01.2026 17:44, Vadim Fedorenko wrote:
> On 09/01/2026 08:53, Marcin Szycik wrote:
>> ice_set_rss_hfunc() performs a VSI update, in which it sets hashing
>> function, leaving other VSI options unchanged. However, ::q_opt_flags is
>> mistakenly set to the value of another field, instead of its original
>> value, probably due to a typo. What happens next is hardware-dependent:
>>
>> On E810, only the first bit is meaningful (see
>> ICE_AQ_VSI_Q_OPT_PE_FLTR_EN) and can potentially end up in a different
>> state than before VSI update.
>>
>> On E830, some of the remaining bits are not reserved. Setting them
>> to some unrelated values can cause the firmware to reject the update
>> because of invalid settings, or worse - succeed.
>>
>> Reproducer:
>>    sudo ethtool -X $PF1 equal 8
>>
>> Output in dmesg:
>>    Failed to configure RSS hash for VSI 6, error -5
>>
>> Fixes: 352e9bf23813 ("ice: enable symmetric-xor RSS for Toeplitz hash function")
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>> index cf8ba5a85384..08268f1a03da 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>> @@ -8038,7 +8038,7 @@ int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc)
>>       ctx->info.q_opt_rss |=
>>           FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hfunc);
>>       ctx->info.q_opt_tc = vsi->info.q_opt_tc;
>> -    ctx->info.q_opt_flags = vsi->info.q_opt_rss;
>> +    ctx->info.q_opt_flags = vsi->info.q_opt_flags;
> 
> The very same typo pattern is in ice_vc_handle_rss_cfg() in
> ice/virt/rss.c
> 
> I believe both places have to be fixed.

Hmm... where exactly? ice_vc_rss_hash_update() (called from ice_vc_handle_rss_cfg()) looks correct.

Thanks for reviewing,
Marcin

> 
>>         err = ice_update_vsi(hw, vsi->idx, ctx, NULL);
>>       if (err) {
> 

