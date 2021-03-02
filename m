Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF673296DC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 09:21:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A690834C7;
	Tue,  2 Mar 2021 08:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zzy0hudX3Sln; Tue,  2 Mar 2021 08:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25C88833C6;
	Tue,  2 Mar 2021 08:21:11 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D41AB1BF281
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D0A366F686
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 90HeJf1uUgPO for <intel-wired-lan@osuosl.org>;
 Tue,  2 Mar 2021 08:21:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0B35E6F65C
 for <intel-wired-lan@osuosl.org>; Tue,  2 Mar 2021 08:21:02 +0000 (UTC)
IronPort-SDR: dPrumJ+z8NKYqEAFz/fFaTam2eO+1qLJf01USlO6rw0xG+nBh7kjlAdID8zUizKBjvFLP5xO2d
 A9u6RZymxo2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="165969026"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="165969026"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:20:41 -0800
IronPort-SDR: bx1kq5T79XnLrsGqMft+p4KC9Bt4I/Esb++noaI+1Fc1OCfNEd3Ba5UlrMZRZejfYpbVBaMzxc
 NNtEbHNyz4mw==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444650904"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 00:20:40 -0800
To: Vedang Patel <vedang.patel@intel.com>, intel-wired-lan@osuosl.org
References: <20210210215848.24514-1-vedang.patel@intel.com>
 <20210210215848.24514-3-vedang.patel@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <acac4bad-fae6-57e0-3bfd-86b06dc08540@linux.intel.com>
Date: Tue, 2 Mar 2021 10:20:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210215848.24514-3-vedang.patel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/9] igc: Remove unused
 argument from igc_tx_cmd_type()
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
> The 'skb' argument from igc_tx_cmd_type() is not used so remove it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 49748df61be7..261672797346 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1029,7 +1029,7 @@ static inline int igc_maybe_stop_tx(struct igc_ring *tx_ring, const u16 size)
>   	 ((u32)((_input) & (_flag)) * ((_result) / (_flag))) :	\
>   	 ((u32)((_input) & (_flag)) / ((_flag) / (_result))))
>   
> -static u32 igc_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
> +static u32 igc_tx_cmd_type(u32 tx_flags)
>   {
>   	/* set type for advanced descriptor with frame checksum insertion */
>   	u32 cmd_type = IGC_ADVTXD_DTYP_DATA |
> @@ -1078,7 +1078,7 @@ static int igc_tx_map(struct igc_ring *tx_ring,
>   	u16 i = tx_ring->next_to_use;
>   	unsigned int data_len, size;
>   	dma_addr_t dma;
> -	u32 cmd_type = igc_tx_cmd_type(skb, tx_flags);
> +	u32 cmd_type = igc_tx_cmd_type(tx_flags);
>   
>   	tx_desc = IGC_TX_DESC(tx_ring, i);
>   
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
