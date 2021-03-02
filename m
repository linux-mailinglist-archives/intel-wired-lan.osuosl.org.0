Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FEC3296DF
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:22:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 39B9783A57;
	Tue,  2 Mar 2021 08:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvpvMLJobydb; Tue,  2 Mar 2021 08:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3685C838AF;
	Tue,  2 Mar 2021 08:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05FBD1BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E975D6F68B
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CU2CIOC7p-SG for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56BC76F686
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:56 +0000 (UTC)
IronPort-SDR: HpgVrj8JVTTxXjlTwUlSnQ7/vuQ5D6gzpuT6mKuaq+cFkbdR/ItfgTViNeGo4vw8nmtito8syG
 Vc1CBmrsKpfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174366014"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="174366014"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:55 -0800
IronPort-SDR: Ln/szHxJrLlMLVljm03ovlEZ3pT1LCKIYyhMm/WKq4i73e2FINiJzbjwINu0sWmJXruTiiI9Gl
 VjhwYElUm5JQ==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444651381"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:21:54 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-7-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <2bb4a233-e3b2-d297-a0f8-cce3b328c9ad@linux.intel.com>
Date: Tue, 2 Mar 2021 10:21:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-7-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 6/9] igc: Add set/clear
 large buffer helpers
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
Cc: Andre Guedes <andre.guedes@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/02/2021 23:58, Vedang Patel wrote:
> From: Andre Guedes <andre.guedes@intel.com>
> 
> While commit 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
> introduced code to handle larger packet buffers, it missed the
> set/clear helpers which enable/disable that feature. Introduce
> the missing helpers which will be use in the next patch.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc.h | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 72544b5e747e..bf2ebec2504a 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -504,6 +504,10 @@ enum igc_ring_flags_t {
>   
>   #define ring_uses_large_buffer(ring) \
>   	test_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
> +#define set_ring_uses_large_buffer(ring) \
> +	set_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
> +#define clear_ring_uses_large_buffer(ring) \
> +	clear_bit(IGC_RING_FLAG_RX_3K_BUFFER, &(ring)->flags)
>   
>   #define ring_uses_build_skb(ring) \
>   	test_bit(IGC_RING_FLAG_RX_BUILD_SKB_ENABLED, &(ring)->flags)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
