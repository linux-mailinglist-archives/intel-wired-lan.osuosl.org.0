Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6475448E1BB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 01:48:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96A5B4025D;
	Fri, 14 Jan 2022 00:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XK1BwQpUAEF8; Fri, 14 Jan 2022 00:48:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EA92400AF;
	Fri, 14 Jan 2022 00:48:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DDC31C1148
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4B2A384B46
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 24p6ISskOg4i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 00:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A92E83F08
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 00:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642121278; x=1673657278;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0G0pjOfh2ajbLDei1Nt+DwEC5w/+5M+IyM6GCRy4kDc=;
 b=QtOqXvvcNJiQtTzlVNAXOXb33Mg+bCDcglup73/UsBXrwSXy4OwwZTlv
 W86vTjaKpkeq0Zbn9fWVOP/t1CDfbbvKyxtlgQl92bXU82SJrypXUoSTP
 UiiDI3U/Xq4gjMPG9fOeCZPisdtB/a1Ddw32sDzOdVDkEUzBFBW8Fb1wo
 S+tEXaPnWyivSSGDgy7/yi6TrdRwaLoJhkqh1jMc5uoT3cOuHY6qJI4Af
 c+RdxJIzwJ7QWP1nKzWt46PICy7gFdiXQFy0LUf7g7KAuhX36Se9p2OeY
 ZDVu5Mp9Sux0ZtUpJ3G+f3rQaX9XeFfM27766mX2pwR/cc/gSTqR5OQFI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="330499868"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="330499868"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:47:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="593565725"
Received: from lyang24-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.236.107])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 16:47:57 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
In-Reply-To: <20220113120346.9349-1-alexandr.lobakin@intel.com>
References: <YdxZr0wMxvsDCpbV@wantstofly.org>
 <20220113004015.449460-1-vinicius.gomes@intel.com>
 <20220113120346.9349-1-alexandr.lobakin@intel.com>
Date: Thu, 13 Jan 2022 16:47:56 -0800
Message-ID: <87k0f36t37.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Fix trying to
 register an already registered xdp_rxq
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

Alexander Lobakin <alexandr.lobakin@intel.com> writes:

> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Date: Wed, 12 Jan 2022 16:40:15 -0800
>
>> When changing the number of RX descriptors, for example, by doing
>> 
>>  $ ethtool -G enp3s0 rx 1024
>> 
>> the XDP RX queue information (xdp_rxq) may be already registered, if
>> it's registered there's no need to do any thing in relation to
>> xdp_rxq, none of it's parameters will change if we change the number
>> of descriptors, for example.
>> 
>> Fixes: 4609ffb9f615 ("igc: Refactor XDP rxq info registration")
>> Reported-by: Lennert Buytenhek <buytenh@wantstofly.org>
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>> Lennert, I added your name and email to the Reported-by tag, please
>> see if you are ok with it.
>> 
>>  drivers/net/ethernet/intel/igc/igc_main.c | 15 +++++++++------
>>  1 file changed, 9 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index e29aadbc6744..d163139161fc 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -1,6 +1,7 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  /* Copyright (c)  2018 Intel Corporation */
>>  
>> +#include "net/xdp.h"
>>  #include <linux/module.h>
>>  #include <linux/types.h>
>>  #include <linux/if_vlan.h>
>> @@ -499,12 +500,14 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>>  	u8 index = rx_ring->queue_index;
>>  	int size, desc_len, res;
>>  
>> -	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
>> -			       rx_ring->q_vector->napi.napi_id);
>> -	if (res < 0) {
>> -		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
>> -			   index);
>> -		return res;
>> +	if (!xdp_rxq_info_is_reg(&rx_ring->xdp_rxq)) {
>> +		res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
>> +				       rx_ring->q_vector->napi.napi_id);
>> +		if (res < 0) {
>> +			netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
>> +				   index);
>> +			return res;
>> +		}
>>  	}
>
> While the fix itself is correct, I don't really like the setup flow
> in igc_ethtool_set_ringparam() (here: [0]).
>
> Instead of unregistering/freeing Rx rings at first and then
> allocating/registering the new ones, driver registers the new ones
> at first and then unregister the olds.
> It may cause other issues apart from this one. E.g. driver performs
> Rxq info unregistering at the end, so netdevice may end up with no
> Rxq info registered after changing the number of descriptors (Rxq
> info is enumerated by queue index).
>
> To me, the righteous approach would be changing this flow to more
> common, i.e. do unregistering/freeing at first and then register
> and allocate.

Agreed. I was not that familiar with this part of the code, it seems to
be more complicated than it needs. i.e. doing something similar to what
ice does would be better. But I was a bit sleep deprived yesterday to do
that :-)


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
