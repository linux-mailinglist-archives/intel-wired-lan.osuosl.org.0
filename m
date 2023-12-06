Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D55806989
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 09:22:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006BC82B53;
	Wed,  6 Dec 2023 08:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 006BC82B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701850954;
	bh=arnf9V8A46zpxOfOcx0+e+NDNciEwBjHQEpy+kjFBZg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jPHlXmxRjgp+B26WmE1VXKsfnU72Z12f04oEeQyDL2joDqVfWzKAA/Zmylp5U9tpU
	 1xk/uWCy90OnkqGeoq7a/dsBfkV4A9HlVh+ZfFt3hz8yJ2TMN5YVwxE1tFdgwlLt3Q
	 Bi0p5nmhYLBrpvbcifHUSQq/S1t7lCzX/bfoxXI3TQBp/3Hbc+78YrZLXY2yF25PLZ
	 M9LBV2cLgRmKb+FXVaiSDrNJ+XBonSWRU1wNAv0YcPJR3Kc1tAc+U/+Y5vMFcSxwe3
	 HnT/nqSwAxNId16/LnxV4eJKNSLm/8JDUcZMYqcPrDYwwX8DkYHbVbaGz/YPrdf9FO
	 ihYwSoJESVmwg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bh5AmFf74XVi; Wed,  6 Dec 2023 08:22:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C09F82741;
	Wed,  6 Dec 2023 08:22:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C09F82741
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24DB81BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04CAA81F30
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:22:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04CAA81F30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5LscXbZFkuf for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 08:22:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 209A88206D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 08:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 209A88206D
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="7376355"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; 
   d="scan'208";a="7376355"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 00:22:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="747522206"
X-IronPort-AV: E=Sophos;i="6.04,254,1695711600"; d="scan'208";a="747522206"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.12.48.131])
 ([10.12.48.131])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 00:22:23 -0800
Message-ID: <41a1392c-0e82-4906-8744-fd527d18f6aa@linux.intel.com>
Date: Wed, 6 Dec 2023 10:22:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-11-jesse.brandeburg@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20231121211921.19834-11-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701850946; x=1733386946;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1jRA3HwtbtIDHZrW+rnVUKgEuSqeWhnsqzgAyyeUTjE=;
 b=UjQK7Ml86sndWpvmsU/bmVF2CuedtH2gwOLlMZrEH4zHx57IgVYzuiqH
 y9XJoM+YHc2duGVIbIfRR/rL4AIAz1IaH+MPDg15nDw/Jx1PtgiFhdxHG
 cJ/OtvrCdJMQLKPsXsXbk/wprMTUuF0vnCwVESw0Hb6zgFE+zmXBVEk9y
 u9VfXwpbsNWYIaB70YHPbpcxm7eAWsvT0+8i9ep2gVwKgs/dY0PoSDoGu
 4vRaJY4XybTO2qFYJt0Akt1VFury46Evp66u1JMgLsxCyXs+K3LkGBuLB
 N/MDQ2ePRvMQIU1Gn6w0841PKpmfeIQj8TA9Z3vvgxwXnroDOT+esDQZo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UjQK7Ml8
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 10/13] igc: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/21/2023 23:19, Jesse Brandeburg wrote:
> Refactor the igc driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
> 
> This code was generated by the following coccinelle/spatch script and
> then manually repaired in a later patch.
> 
> @get@
> constant shift,mask;
> expression a;
> @@
> -((a & mask) >> shift)
> +FIELD_GET(mask, a)
> 
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>   drivers/net/ethernet/intel/
> 
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_base.c | 6 ++----
>   drivers/net/ethernet/intel/igc/igc_i225.c | 5 ++---
>   drivers/net/ethernet/intel/igc/igc_main.c | 6 ++----
>   drivers/net/ethernet/intel/igc/igc_phy.c  | 4 ++--
>   4 files changed, 8 insertions(+), 13 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
