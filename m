Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F8775F915
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 15:59:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B5C040352;
	Mon, 24 Jul 2023 13:59:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B5C040352
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690207144;
	bh=AhoeXZqaUK7vgthNDnMGBpseRJ/ZIQUbEMtEvVPx62U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oBK5MPdH9t7wXgS4J7wtj2QSt+2Rv6foTter+I0YVJ5W/5/wFeWX7gclYJUUJSPCQ
	 MlMJnimmFQCC2wg50NAPMflWIrq+909vaOy3B8GMV91InQ+h+OF9DtZwY9ZTNGRvY2
	 2Nq3MXBq1G8aSS6JheGZ+Ugss4KiGTwvxUTFjqCpBv8U/swsuRKjfoZn1541+S3fM3
	 waa314PaYEqu/gM1ZRwhh3MNjT1On3U2+cuYJSTWY75IqwrUiQ5B9m56e9FenDUXBj
	 ShTdHjEM6VrcAE+RfSs4g2c48LVKBjm3zovjm3prwkn9dxXJHShuMemJUaOxnOnhtH
	 Yc6XRsNHEjdNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4jgLXXwEUEZ; Mon, 24 Jul 2023 13:59:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EB5F40286;
	Mon, 24 Jul 2023 13:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EB5F40286
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A6441BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FC7340286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:58:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FC7340286
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuiZfGAS2Vy6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 13:58:57 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D97640199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 13:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D97640199
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="398353888"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="398353888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:58:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="760798777"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="760798777"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.237.140.125])
 ([10.237.140.125])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 06:58:53 -0700
Message-ID: <24784f80-df7b-a666-a56b-9b4c288978a1@linux.intel.com>
Date: Mon, 24 Jul 2023 15:58:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andy Shevchenko <andy@kernel.org>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-7-marcin.szycik@linux.intel.com>
 <ZLqfJZi/14dyEzhH@smile.fi.intel.com>
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <ZLqfJZi/14dyEzhH@smile.fi.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690207137; x=1721743137;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=NPiwupa9t8YKDwSwTQOsNFLig1lIbwPc5gnDmsk//9g=;
 b=XzkFWnF0JwXR07NbIeE+ML4xuXyxrPte0S/IQVtFhhSMQCzfYSfgWjLT
 8ocnUHeWQZFy5TBo3z6zKmzqWkwB1qdEgzJbySw5KD6G2JSnEuICCHX8D
 ZgTdeO8KqUR92lQuXuBxxlJglUGieI8yilpZK2pznG9YnMzdAfGqUYvvs
 kfEVhihe5l7aA1l2B2n4sSSEIyuVXWu52KgDPmfMzHba2albMqSmtIXKI
 4isNkoqkWvTsqJ/9zR3+g5e3YnXhUnWARg8c8srdf8dz3zC/tY50MxolD
 lCZn2azqtqd7/86/az752PDHHCR+9mAkrupGjzZutzr8xjHNxa1XWZaDv
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XzkFWnF0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 6/6] ice: Add support for
 PFCP hardware offload in switchdev
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 simon.horman@corigine.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21.07.2023 17:07, Andy Shevchenko wrote:
> On Fri, Jul 21, 2023 at 09:15:32AM +0200, Marcin Szycik wrote:
>> Add support for creating PFCP filters in switchdev mode. Add support
>> for parsing PFCP-specific tc options: S flag and SEID.
>>
>> To create a PFCP filter, a special netdev must be created and passed
>> to tc command:
>>
>> ip link add pfcp0 type pfcp
>> tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
>> 1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0
> 
> Can you indent this (by 2 spaces?) to differentiate with the commit message
> itself?

Sure.

> 
>> Changes in iproute2 [1] are required to be able to use pfcp_opts in tc.
>>
>> ICE COMMS package is required to create a filter as it contains PFCP
>> profiles.
> 
>> [1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com
> 
> We have Link: tag for such kind of stuff.

Are you sure this is a valid use of Link: tag? Patch that is linked here is
in another tree, and also I want to have [1] inline for context.

> 
> ...
> 
>> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
>> +	    fltr->tunnel_type == TNL_PFCP) {
>> +		struct flow_match_enc_opts match;
>> +
>> +		flow_rule_match_enc_opts(rule, &match);
>> +
>> +		memcpy(&fltr->pfcp_meta_keys, &match.key->data[0],
>> +		       sizeof(struct pfcp_metadata));
> 
> Why not simply
> 
> 		match.key->data
> 
> ?

Will change.

> 
>> +		memcpy(&fltr->pfcp_meta_masks, &match.mask->data[0],
>> +		       sizeof(struct pfcp_metadata));
> 
> Ditto.
> 
>> +		fltr->flags |= ICE_TC_FLWR_FIELD_PFCP_OPTS;
>> +	}
> 
> ...
> 
>>  #ifndef _ICE_TC_LIB_H_
>>  #define _ICE_TC_LIB_H_
> 
> Seems bits.h is missing...

Will add.

> 
>> +#include <net/pfcp.h>
>> +
>>  #define ICE_TC_FLWR_FIELD_DST_MAC		BIT(0)
>>  #define ICE_TC_FLWR_FIELD_SRC_MAC		BIT(1)
>>  #define ICE_TC_FLWR_FIELD_VLAN			BIT(2)
> 
> ...
> 
>>  #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
>>  #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
>>  #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
>> +#define ICE_TC_FLWR_FIELD_PFCP_OPTS		BIT(30)
>>  
>>  #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF
> 
> ...and (at least) this can utilize GENMASK().

It can, but it's unrelated to this patch.


Thank you for review!
Marcin
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
