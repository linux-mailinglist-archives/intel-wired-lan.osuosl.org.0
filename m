Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE52970ACCA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 May 2023 09:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF04A40525;
	Sun, 21 May 2023 07:27:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF04A40525
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684654059;
	bh=d64m0H0DKlwzP4PRPU9TLDzNWeOTgp+Q457i2lQ1U+4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PjWQWfcMxOjGCYysO4jD+ZnZGkYutCgV8kXzc5dZHhacB4Cyn9p2QRtK+N7tunFLP
	 P6R6qLmzagRBc7JAUjpNYDRGFnOqszinsVu90dUAIsFl3XCcJjkr+vOmR1eCeHH7Nt
	 /REX7dez+wilqiJS+Fur0lOApo7gv90EGyN23/dbhQdh+1fXsgdLN3B9N5bFBIlLkQ
	 oPjZBFQqZdeDYzCf4wKGIus+fxfkgZGk/ScFh1g01LGBxl7F4SfjNKHp/TF2dM8YcI
	 53VXLd19N3fQukvmYc4F8bKIsGCA/PWN4tCdvHnawVZUmZIFHiSjL1HQycYizOcrnW
	 +WNJB23UodKOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oq_Cpr3lxydC; Sun, 21 May 2023 07:27:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1CF040166;
	Sun, 21 May 2023 07:27:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1CF040166
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 577E11BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 07:27:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2871982BED
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 07:27:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2871982BED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfNTAXTHJUFC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 May 2023 07:27:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A73D82B21
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A73D82B21
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 May 2023 07:27:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="439033731"
X-IronPort-AV: E=Sophos;i="6.00,181,1681196400"; d="scan'208";a="439033731"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2023 00:27:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10716"; a="827307804"
X-IronPort-AV: E=Sophos;i="6.00,181,1681196400"; d="scan'208";a="827307804"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.21])
 ([10.13.12.21])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2023 00:27:30 -0700
Message-ID: <c33338e7-2608-5211-7263-0f755d419bb1@linux.intel.com>
Date: Sun, 21 May 2023 10:27:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20230511230731.105152-1-vinicius.gomes@intel.com>
 <20230511230731.105152-4-vinicius.gomes@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20230511230731.105152-4-vinicius.gomes@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684654052; x=1716190052;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=b9e4Jileh3D9NvORQp8WJJb58vpCelIULR+4+/CLNrU=;
 b=AxYQJBSbjBVYuIRqVk96JptM6xXycPOjZPNWefgfqYeoJQK6sOIxGbDp
 KWQ8drmrQdjTbrvlXBxQlMLN1s0dlfaUXF1gM8P7IhJUXpuxxN5qkbimp
 5Ynm26Lpl+aWND8GOD39NuLD56Kp34jC29mgq85I1Z9+y1ICKSUdBSxCS
 5NpD3bdsI9VbaAkIH54ZilTRud9ZX73t2jYCoS6OeDyXZ8ZsMwG9yJ+Js
 T4hBQhJvsH4GqKTu+r/mZZcyFGEYuoaOu9HGyR/x80ydpLtAs9CNhpyuZ
 7Q8f9jfKTEHBWWkCUfszluCFIjpWXxyF+uQryasTKxosqHdFyRjl49kBV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AxYQJBSb
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 3/4] igc: Retrieve TX
 timestamp during interrupt handling
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/12/2023 02:07, Vinicius Costa Gomes wrote:
> When the interrupt is handled, the TXTT_0 bit in the TSYNCTXCTL
> register should already be set and the timestamp value already loaded
> in the appropriate register.
> 
> This simplifies the handling, and reduces the latency for retrieving
> the TX timestamp, which increase the amount of TX timestamps that can
> be handled in a given time period.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   drivers/net/ethernet/intel/igc/igc.h      | 2 +-
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   drivers/net/ethernet/intel/igc/igc_ptp.c  | 9 ++-------
>   3 files changed, 4 insertions(+), 9 deletions(-)

Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
