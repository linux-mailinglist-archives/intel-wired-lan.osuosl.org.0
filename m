Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB6275CB81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F354613BA;
	Fri, 21 Jul 2023 15:21:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F354613BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952897;
	bh=l2vWgY0k44ba2oipbFuSGTL7L6iyRO3ukV/1yVpgiLY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I40hhXq9xIPBmc76uNVPrONU/prqpm7PCZwTWHKW2XswqtERBJzsyVu6VOZJYVXLS
	 m4reR5QWvjyfj45nFgfaGT1iB7y1AWchO/aX/dFIhtd50buwC5QX3twQq7yUCtyzyV
	 yqRt9Nhahq2P6DbcezKZR1RmuCt1n4Kgh5UzWd0/2mXSiQnWo4nwXeHatp3piXQdf+
	 XnECaGA79X1Apgkhu5kictxVuYsdg2YLhScHXv/87lLVXXJyA8qzVlpiUCCYuPShNw
	 mW2N5qf652A2lV1yafo3xPn80Kq7TcTRWKcVYfE5+hV8ziXwI3xMryfCYf+JiYeHGN
	 9zmizzw4NEgtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RV2QWh3KUcYo; Fri, 21 Jul 2023 15:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 564026135F;
	Fri, 21 Jul 2023 15:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 564026135F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 368F91BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C21261339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:07:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C21261339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQh9W4oKrnJF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:07:24 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D86860C13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:07:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D86860C13
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="357033820"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="357033820"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:07:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="724898633"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="724898633"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2023 08:07:20 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andy@kernel.org>) id 1qMriw-009eWR-0W;
 Fri, 21 Jul 2023 18:07:18 +0300
Date: Fri, 21 Jul 2023 18:07:17 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZLqfJZi/14dyEzhH@smile.fi.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-7-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230721071532.613888-7-marcin.szycik@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Approved-At: Fri, 21 Jul 2023 15:21:09 +0000
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

On Fri, Jul 21, 2023 at 09:15:32AM +0200, Marcin Szycik wrote:
> Add support for creating PFCP filters in switchdev mode. Add support
> for parsing PFCP-specific tc options: S flag and SEID.
> 
> To create a PFCP filter, a special netdev must be created and passed
> to tc command:
> 
> ip link add pfcp0 type pfcp
> tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
> 1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0

Can you indent this (by 2 spaces?) to differentiate with the commit message
itself?

> Changes in iproute2 [1] are required to be able to use pfcp_opts in tc.
> 
> ICE COMMS package is required to create a filter as it contains PFCP
> profiles.

> [1] https://lore.kernel.org/netdev/20230614091758.11180-1-marcin.szycik@linux.intel.com

We have Link: tag for such kind of stuff.

...

> +	if (flow_rule_match_key(rule, FLOW_DISSECTOR_KEY_ENC_OPTS) &&
> +	    fltr->tunnel_type == TNL_PFCP) {
> +		struct flow_match_enc_opts match;
> +
> +		flow_rule_match_enc_opts(rule, &match);
> +
> +		memcpy(&fltr->pfcp_meta_keys, &match.key->data[0],
> +		       sizeof(struct pfcp_metadata));

Why not simply

		match.key->data

?

> +		memcpy(&fltr->pfcp_meta_masks, &match.mask->data[0],
> +		       sizeof(struct pfcp_metadata));

Ditto.

> +		fltr->flags |= ICE_TC_FLWR_FIELD_PFCP_OPTS;
> +	}

...

>  #ifndef _ICE_TC_LIB_H_
>  #define _ICE_TC_LIB_H_

Seems bits.h is missing...

> +#include <net/pfcp.h>
> +
>  #define ICE_TC_FLWR_FIELD_DST_MAC		BIT(0)
>  #define ICE_TC_FLWR_FIELD_SRC_MAC		BIT(1)
>  #define ICE_TC_FLWR_FIELD_VLAN			BIT(2)

...

>  #define ICE_TC_FLWR_FIELD_VLAN_PRIO		BIT(27)
>  #define ICE_TC_FLWR_FIELD_CVLAN_PRIO		BIT(28)
>  #define ICE_TC_FLWR_FIELD_VLAN_TPID		BIT(29)
> +#define ICE_TC_FLWR_FIELD_PFCP_OPTS		BIT(30)
>  
>  #define ICE_TC_FLOWER_MASK_32   0xFFFFFFFF

...and (at least) this can utilize GENMASK().

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
