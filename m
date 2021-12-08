Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF72A46CEBE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 09:15:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71D4D83E7D;
	Wed,  8 Dec 2021 08:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MxUwNfgRyY2X; Wed,  8 Dec 2021 08:15:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8473D83E9A;
	Wed,  8 Dec 2021 08:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD6CA1BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A87EC83F93
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZcEGsm8S-jRg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 08:15:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6047C83E7D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 08:15:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="324039284"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="324039284"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:15:42 -0800
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="515667160"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.81])
 ([10.13.8.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 00:15:40 -0800
Message-ID: <2eb0a775-2035-f806-b391-d3ce8d3e53a2@linux.intel.com>
Date: Wed, 8 Dec 2021 10:15:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20211123171840.157471-1-alexandr.lobakin@intel.com>
 <20211123171840.157471-8-alexandr.lobakin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211123171840.157471-8-alexandr.lobakin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/9] igc: switch to
 napi_build_skb()
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
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 11/23/2021 19:18, Alexander Lobakin wrote:
> napi_build_skb() reuses per-cpu NAPI skbuff_head cache in order
> to save some cycles on freeing/allocating skbuff_heads on every
> new Rx or completed Tx.
> igc driver runs Tx completion polling cycle right before the Rx
> one and uses napi_consume_skb() to feed the cache with skbuff_heads
> of completed entries, so it's never empty and always warm at that
> moment. Switch to the napi_build_skb() to relax mm pressure on
> heavy Rx.
> 
> Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
