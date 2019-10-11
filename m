Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0DBD46C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 19:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 512DF8898E;
	Fri, 11 Oct 2019 17:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bePO0OWQgME3; Fri, 11 Oct 2019 17:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C13AC88994;
	Fri, 11 Oct 2019 17:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 601561BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 17:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5BDFB8898E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 17:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQWndgQr-L3A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 17:39:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8052C8897F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 17:39:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 10:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="219465702"
Received: from unknown (HELO [10.241.228.123]) ([10.241.228.123])
 by fmsmga004.fm.intel.com with ESMTP; 11 Oct 2019 10:39:45 -0700
To: Josh Hunt <johunt@akamai.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
References: <1570812820-20052-1-git-send-email-johunt@akamai.com>
 <1570812820-20052-4-git-send-email-johunt@akamai.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <db84a310-950a-f7e9-0d92-f7c81e27eb61@intel.com>
Date: Fri, 11 Oct 2019 10:39:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570812820-20052-4-git-send-email-johunt@akamai.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3 3/3] i40e: Add UDP segmentation
 offload support
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>, willemb@google.com,
 alexander.h.duyck@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/11/2019 9:53 AM, Josh Hunt wrote:
> Based on a series from Alexander Duyck this change adds UDP segmentation
> offload support to the i40e driver.
> 
> CC: Alexander Duyck <alexander.h.duyck@intel.com>
> CC: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Josh Hunt <johunt@akamai.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c |  1 +
>   drivers/net/ethernet/intel/i40e/i40e_txrx.c | 12 +++++++++---
>   2 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6031223eafab..56f8c52cbba1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -12911,6 +12911,7 @@ static int i40e_config_netdev(struct i40e_vsi *vsi)
>   			  NETIF_F_GSO_IPXIP6		|
>   			  NETIF_F_GSO_UDP_TUNNEL	|
>   			  NETIF_F_GSO_UDP_TUNNEL_CSUM	|
> +			  NETIF_F_GSO_UDP_L4		|
>   			  NETIF_F_SCTP_CRC		|
>   			  NETIF_F_RXHASH		|
>   			  NETIF_F_RXCSUM		|
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index e3f29dc8b290..b8496037ef7f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -2960,10 +2960,16 @@ static int i40e_tso(struct i40e_tx_buffer *first, u8 *hdr_len,
>   
>   	/* remove payload length from inner checksum */
>   	paylen = skb->len - l4_offset;
> -	csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
>   
> -	/* compute length of segmentation header */
> -	*hdr_len = (l4.tcp->doff * 4) + l4_offset;
> +	if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
> +		csum_replace_by_diff(&l4.udp->check, (__force __wsum)htonl(paylen));
> +		/* compute length of segmentation header */
> +		*hdr_len = sizeof(*l4.udp) + l4_offset;
> +	} else {
> +		csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
> +		/* compute length of segmentation header */
> +		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
> +	}

Is it guaranteed that gso_type can be either UDP or TCP only if we reach 
here? Don't we need to handle the case where it is neither and return 
from this function?

>   
>   	/* pull values out of skb_shinfo */
>   	gso_size = skb_shinfo(skb)->gso_size;
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
