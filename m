Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC5775CB80
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jul 2023 17:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60FA0613CB;
	Fri, 21 Jul 2023 15:21:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60FA0613CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689952893;
	bh=6g56RjDxb46TDwBY3F3BvR9xK8Uq5dRihTvF2OvS0ZM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EfNGcK6cKD775xHr5QETsVJtFzLl0W/cQbAulBJHpwAwk8jnUiJ5adDjKm8HNj/jf
	 d1XwBtaIUe0Z3l4VtnmrSKs5Zi7CxKDZ0O10O9lbgDCqHkzcRH05N3nXpf76qIFbNo
	 9wFKsVlT825lKAUU1TJyY/oC3b9JiVDdCatxRTrKwzzCEPrQ9UrDzeXRrk5H7C4uUL
	 oWjaNaaPE0lCsqPelSxLlg2VWJ4cTYgT0a0RWsmjSNRH2MPNR+VBuzWTFsk4Lsxkdk
	 BnA0q+xFLorbWMLoD42NwR4AwrMsYaK1E+cSg890E7YMz5cpcjZ/ALVDjamrrmiK13
	 qkGB0KxgccIqQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uCTrvVTfmStm; Fri, 21 Jul 2023 15:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CE366134B;
	Fri, 21 Jul 2023 15:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CE366134B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1C601BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA14A613B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA14A613B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYvQxo0lWa_N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jul 2023 15:03:09 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44E50613CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jul 2023 15:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44E50613CF
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="370648088"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="370648088"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 08:02:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="702082394"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="702082394"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga006.jf.intel.com with ESMTP; 21 Jul 2023 08:02:33 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andy@kernel.org>) id 1qMreJ-009UVe-1h;
 Fri, 21 Jul 2023 18:02:31 +0300
Date: Fri, 21 Jul 2023 18:02:31 +0300
From: Andy Shevchenko <andy@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZLqeB/0aoe6GQUVi@smile.fi.intel.com>
References: <20230721071532.613888-1-marcin.szycik@linux.intel.com>
 <20230721071532.613888-5-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230721071532.613888-5-marcin.szycik@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Mailman-Approved-At: Fri, 21 Jul 2023 15:21:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 4/6] pfcp: always set pfcp
 metadata
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

On Fri, Jul 21, 2023 at 09:15:30AM +0200, Marcin Szycik wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> In PFCP receive path set metadata needed by flower code to do correct
> classification based on this metadata.

...

+ bits.h
+ types.h

> +#include <net/udp_tunnel.h>
> +#include <net/dst_metadata.h>
> +
>  #define PFCP_PORT 8805
>  
> +/* PFCP protocol header */
> +struct pfcphdr {
> +	u8	flags;
> +	u8	message_type;
> +	__be16	message_length;
> +};
> +
> +/* PFCP header flags */
> +#define PFCP_SEID_FLAG		BIT(0)
> +#define PFCP_MP_FLAG		BIT(1)
> +
> +#define PFCP_VERSION_SHIFT	5
> +#define PFCP_VERSION_MASK	((1 << PFCP_VERSION_SHIFT) - 1)

GENMASK() since you already use BIT()

> +#define PFCP_HLEN (sizeof(struct udphdr) + sizeof(struct pfcphdr))
> +
> +/* PFCP node related messages */
> +struct pfcphdr_node {
> +	u8	seq_number[3];
> +	u8	reserved;
> +};
> +
> +/* PFCP session related messages */
> +struct pfcphdr_session {
> +	__be64	seid;
> +	u8	seq_number[3];
> +#ifdef __LITTLE_ENDIAN_BITFIELD
> +	u8	message_priority:4,
> +		reserved:4;
> +#elif defined(__BIG_ENDIAN_BITFIELD)
> +	u8	reserved:4,
> +		message_priprity:4;
> +#else
> +#error "Please fix <asm/byteorder>"
> +#endif
> +};
> +
> +struct pfcp_metadata {
> +	u8 type;
> +	__be64 seid;
> +} __packed;
> +
> +enum {
> +	PFCP_TYPE_NODE		= 0,
> +	PFCP_TYPE_SESSION	= 1,
> +};

...

> +/* IP header + UDP + PFCP + Ethernet header */
> +#define PFCP_HEADROOM (20 + 8 + 4 + 14)

Instead of comment like above, just use defined sizes.

> +/* IPv6 header + UDP + PFCP + Ethernet header */
> +#define PFCP6_HEADROOM (40 + 8 + 4 + 14)

sizeof(ipv6hdr)
sizeof(updhdr)
...

Don't forget to include respective headers.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
