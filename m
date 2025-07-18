Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CDDB0A560
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 15:42:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74A3A40B68;
	Fri, 18 Jul 2025 13:42:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id atnOXA97ryQq; Fri, 18 Jul 2025 13:42:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B72E340B69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752846157;
	bh=E2s5Gzg6f8ZUGtrqc7HtxgbolUP8aOhUCcG/sl3CZio=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LUDlSVkigqTY10h5VPPeL4idtWOBFd3VPEZdTpMbZS+B7YLLK3J4tG4buTeBsgdnK
	 VMgsx3m2VTu8TyqWg2j72SiU/g55rfM+o0Z7iNz7fIgDRs5iIllGMFkfk8ANRwlzqx
	 f1ksSdkj7HQ3HpugAgm3l33YZ0l7GcDBi8+E8KEv6Di4pJph0A16pEhV6C2AMJs7ar
	 KJgHO6fdA7KD3tpPJgk1cFVxKzWYBEGmKcV0cFB9+s10mWJr3T+mnP8A88+6eMwGgj
	 SggUdlqPMtKZ2NFneQRPfe3euyMONfaG/V3+Ai41SePv9/7Q5TH/YCbV4Rt9MUKAxQ
	 PXqNQ5dXWeDUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72E340B69;
	Fri, 18 Jul 2025 13:42:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6350D1A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49A1360DA4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:42:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sY9aW1vGbEDj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 13:42:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AE87C60E4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE87C60E4A
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE87C60E4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 13:42:34 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 623FC61E647AC;
 Fri, 18 Jul 2025 15:41:41 +0200 (CEST)
Message-ID: <7ae9f1ad-0882-4c33-9979-fafb03f7de18@molgen.mpg.de>
Date: Fri, 18 Jul 2025 15:41:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Simon Horman <horms@kernel.org>
References: <20250718-restricted-pointers-net-v4-0-4baa64e40658@linutronix.de>
 <20250718-restricted-pointers-net-v4-1-4baa64e40658@linutronix.de>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250718-restricted-pointers-net-v4-1-4baa64e40658@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] ice: Don't use %pK
 through printk or tracepoints
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Thomas,


Thank you for the patch.

Am 18.07.25 um 15:23 schrieb Thomas Weißschuh:
> In the past %pK was preferable to %p as it would not leak raw pointer
> values into the kernel log.
> Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
> the regular %p has been improved to avoid this issue.
> Furthermore, restricted pointers ("%pK") were never meant to be used
> through printk(). They can still unintentionally leak raw pointers or
> acquire sleeping locks in atomic contexts.
> 
> Switch to the regular pointer formatting which is safer and
> easier to reason about.
> There are still a few users of %pK left, but these use it through seq_file,
> for which its usage is safe.

The line length are a little uneven.

> Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/ice/ice_main.c  |  2 +-
>   drivers/net/ethernet/intel/ice/ice_trace.h | 10 +++++-----
>   2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index af68869693edf6004e70caa4e952794439d800ab..76d67b39a0c1af02293ef2df06a6735b46c6679f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -9153,7 +9153,7 @@ static int ice_create_q_channels(struct ice_vsi *vsi)
>   		list_add_tail(&ch->list, &vsi->ch_list);
>   		vsi->tc_map_vsi[i] = ch->ch_vsi;
>   		dev_dbg(ice_pf_to_dev(pf),
> -			"successfully created channel: VSI %pK\n", ch->ch_vsi);
> +			"successfully created channel: VSI %p\n", ch->ch_vsi);
>   	}
>   	return 0;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
> index 07aab6e130cd553fa1fcaa2feac9d14f0433239a..4f35ef8d6b299b4acd6c85992c2c93b164a88372 100644
> --- a/drivers/net/ethernet/intel/ice/ice_trace.h
> +++ b/drivers/net/ethernet/intel/ice/ice_trace.h
> @@ -130,7 +130,7 @@ DECLARE_EVENT_CLASS(ice_tx_template,
>   				   __entry->buf = buf;
>   				   __assign_str(devname);),
>   
> -		    TP_printk("netdev: %s ring: %pK desc: %pK buf %pK", __get_str(devname),
> +		    TP_printk("netdev: %s ring: %p desc: %p buf %p", __get_str(devname),
>   			      __entry->ring, __entry->desc, __entry->buf)
>   );
>   
> @@ -158,7 +158,7 @@ DECLARE_EVENT_CLASS(ice_rx_template,
>   				   __entry->desc = desc;
>   				   __assign_str(devname);),
>   
> -		    TP_printk("netdev: %s ring: %pK desc: %pK", __get_str(devname),
> +		    TP_printk("netdev: %s ring: %p desc: %p", __get_str(devname),
>   			      __entry->ring, __entry->desc)
>   );
>   DEFINE_EVENT(ice_rx_template, ice_clean_rx_irq,
> @@ -182,7 +182,7 @@ DECLARE_EVENT_CLASS(ice_rx_indicate_template,
>   				   __entry->skb = skb;
>   				   __assign_str(devname);),
>   
> -		    TP_printk("netdev: %s ring: %pK desc: %pK skb %pK", __get_str(devname),
> +		    TP_printk("netdev: %s ring: %p desc: %p skb %p", __get_str(devname),
>   			      __entry->ring, __entry->desc, __entry->skb)
>   );
>   
> @@ -205,7 +205,7 @@ DECLARE_EVENT_CLASS(ice_xmit_template,
>   				   __entry->skb = skb;
>   				   __assign_str(devname);),
>   
> -		    TP_printk("netdev: %s skb: %pK ring: %pK", __get_str(devname),
> +		    TP_printk("netdev: %s skb: %p ring: %p", __get_str(devname),
>   			      __entry->skb, __entry->ring)
>   );
>   
> @@ -228,7 +228,7 @@ DECLARE_EVENT_CLASS(ice_tx_tstamp_template,
>   		    TP_fast_assign(__entry->skb = skb;
>   				   __entry->idx = idx;),
>   
> -		    TP_printk("skb %pK idx %d",
> +		    TP_printk("skb %p idx %d",
>   			      __entry->skb, __entry->idx)
>   );
>   #define DEFINE_TX_TSTAMP_OP_EVENT(name) \

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
