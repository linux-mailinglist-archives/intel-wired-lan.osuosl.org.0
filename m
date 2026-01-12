Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57941D12357
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 12:16:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0573880D27;
	Mon, 12 Jan 2026 11:16:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZ_u91NV_6DX; Mon, 12 Jan 2026 11:16:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A66380D33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768216568;
	bh=vxfb4Bn1vJD8qml0fHR5DFLihS+BAFpThU3mlxgfg/A=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UveC4FzNlciXawGlAtZ5CDepBwxteyND3/TzYaC0YxoToikV6RKuXCZLL9yB5qHjM
	 UPlZQjP08x7lC/ymxodV2sSCL0CHL1imlPokW2TdDGH4179BvDxxZu78W5eJ8UozOl
	 rnU1QwpllEmbf4dMeKdw+WJ6cXDftXcs9jPXAm3TMijp4QYIWvgXDqPO1R5iAzUX6r
	 cXjWQnrOmQmgXgxtEDvUsqRNvNqlCx45lxaYLdXWDXfl2GAdyIE5ZqAZ+qsCBsiSZt
	 XSXTZAFxRZ/Z0Kcdwlzeu2K83O2w3PBPx6qNad7OO/QDdLHFNNW5IKQ1XAzB7eWcBw
	 NMpN0O7DPjdhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A66380D33;
	Mon, 12 Jan 2026 11:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 14E301CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:16:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 072F080CCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:16:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Es3roGz2a9H7 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 11:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b9; helo=out-185.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F2B280CC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F2B280CC3
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F2B280CC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 11:16:01 +0000 (UTC)
Message-ID: <979e42ca-66fb-4ca6-b68f-c10b4e441369@linux.dev>
Date: Mon, 12 Jan 2026 11:15:44 +0000
MIME-Version: 1.0
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20260109085339.49839-1-marcin.szycik@linux.intel.com>
 <ddd25fe0-a6a8-4ba9-8cb1-3f91ca562928@linux.dev>
 <1e162d79-20a2-4de3-8862-aa4fbe842132@linux.intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <1e162d79-20a2-4de3-8862-aa4fbe842132@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1768216557;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vxfb4Bn1vJD8qml0fHR5DFLihS+BAFpThU3mlxgfg/A=;
 b=lI52NzFo2hu8Jv99Ed37qm8sEEcS1UKMPUTjQI2UstbP8Tt+096KhV+XmuHv0UzGNU0jLC
 ki2cctM7L81XTBi7cOZZ1W5qY/goa6ru0T2YrFkp64WIiLmy2dczbaENNRd0mOw7Zm5PAv
 caaCQXoGN9zCN2WHEYTxXpp7abdWz4w=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=lI52NzFo
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

On 12/01/2026 09:36, Marcin Szycik wrote:
> 
> 
> On 09.01.2026 17:44, Vadim Fedorenko wrote:
>> On 09/01/2026 08:53, Marcin Szycik wrote:
>>> ice_set_rss_hfunc() performs a VSI update, in which it sets hashing
>>> function, leaving other VSI options unchanged. However, ::q_opt_flags is
>>> mistakenly set to the value of another field, instead of its original
>>> value, probably due to a typo. What happens next is hardware-dependent:
>>>
>>> On E810, only the first bit is meaningful (see
>>> ICE_AQ_VSI_Q_OPT_PE_FLTR_EN) and can potentially end up in a different
>>> state than before VSI update.
>>>
>>> On E830, some of the remaining bits are not reserved. Setting them
>>> to some unrelated values can cause the firmware to reject the update
>>> because of invalid settings, or worse - succeed.
>>>
>>> Reproducer:
>>>     sudo ethtool -X $PF1 equal 8
>>>
>>> Output in dmesg:
>>>     Failed to configure RSS hash for VSI 6, error -5
>>>
>>> Fixes: 352e9bf23813 ("ice: enable symmetric-xor RSS for Toeplitz hash function")
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>> ---
>>>    drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>>> index cf8ba5a85384..08268f1a03da 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>> @@ -8038,7 +8038,7 @@ int ice_set_rss_hfunc(struct ice_vsi *vsi, u8 hfunc)
>>>        ctx->info.q_opt_rss |=
>>>            FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_HASH_M, hfunc);
>>>        ctx->info.q_opt_tc = vsi->info.q_opt_tc;
>>> -    ctx->info.q_opt_flags = vsi->info.q_opt_rss;
>>> +    ctx->info.q_opt_flags = vsi->info.q_opt_flags;
>>
>> The very same typo pattern is in ice_vc_handle_rss_cfg() in
>> ice/virt/rss.c
>>
>> I believe both places have to be fixed.
> 
> Hmm... where exactly? ice_vc_rss_hash_update() (called from ice_vc_handle_rss_cfg()) looks correct.

Sorry, it was fixed in 3a6d87e2eaac ("ice: implement GTP RSS context
tracking and configuration") when the logic was moved to
ice_vc_rss_hash_update(), but this code was never backported, the
problem exists in 6.18...

> 
> Thanks for reviewing,
> Marcin
> 
>>
>>>          err = ice_update_vsi(hw, vsi->idx, ctx, NULL);
>>>        if (err) {
>>
> 

