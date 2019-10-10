Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEA5D1D79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Oct 2019 02:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E86AE20475;
	Thu, 10 Oct 2019 00:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zp2JYJJqfQN8; Thu, 10 Oct 2019 00:39:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3A27204BE;
	Thu, 10 Oct 2019 00:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4851BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 295F9861A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ox8hOJtv34n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Oct 2019 00:39:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 68E4686193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Oct 2019 00:39:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 17:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,278,1566889200"; d="scan'208";a="345536271"
Received: from unknown (HELO [10.241.228.165]) ([10.241.228.165])
 by orsmga004.jf.intel.com with ESMTP; 09 Oct 2019 17:39:20 -0700
To: Josh Hunt <johunt@akamai.com>, netdev@vger.kernel.org,
 willemb@google.com, intel-wired-lan@lists.osuosl.org
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
 <1570658777-13459-4-git-send-email-johunt@akamai.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <5f4af1c5-c2d1-d643-3fb2-fe4bd0e7e8cf@intel.com>
Date: Wed, 9 Oct 2019 17:39:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570658777-13459-4-git-send-email-johunt@akamai.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 3/3] i40e: Add UDP segmentation
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
Cc: Alexander Duyck <alexander.h.duyck@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/9/2019 3:06 PM, Josh Hunt wrote:
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
> index e3f29dc8b290..0b32f04a6255 100644
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
> +	if (skb->csum_offset == offsetof(struct tcphdr, check)) {

Isn't it more relevant to check for gso_type rather than base this on 
the csum_offset?


> +		csum_replace_by_diff(&l4.tcp->check, (__force __wsum)htonl(paylen));
> +		/* compute length of segmentation header */
> +		*hdr_len = (l4.tcp->doff * 4) + l4_offset;
> +	} else {
> +		csum_replace_by_diff(&l4.udp->check, (__force __wsum)htonl(paylen));
> +		/* compute length of segmentation header */
> +		*hdr_len = sizeof(*l4.udp) + l4_offset;
> +	}
>   
>   	/* pull values out of skb_shinfo */
>   	gso_size = skb_shinfo(skb)->gso_size;
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
