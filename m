Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2433268FFE0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Feb 2023 06:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AFDE61033;
	Thu,  9 Feb 2023 05:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AFDE61033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675920629;
	bh=yQhBWr5x3wbKOcBhOsVFalmXiVliqvKspMX1NiIOyZY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I1yXuqwf8Qb7MEqsSjAwji27u8H0o9Az9hoSLZcXyw0FEoMgKLxPdJdirsUHkl1vq
	 WnQofqpBcmS6qVAAzPTaVQjkGkAhdG/iKyJ34QncVntgYwkqUOGa8wa8RMf98dGV2t
	 NEepZLwt+eV8AAHC7+kCUoLajsXB2zqayfAi+YnAMnFhDyFd46S3tMH/lzsF75NXS9
	 f5nCHwRw+LF45b1/YIt031MiAjnSG7Mv0i5uqIiBnIMzMCz+p2OW1vQetLQRkirNDb
	 DBjZL+QU+7luCojwsqI6x0Od0Kg8lPRmCZryJkbjJbJV2mTWkargzqOEIEoRb3spsB
	 1FghwlHhOOl4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7Pc5wYRYwgD; Thu,  9 Feb 2023 05:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4691F60BBF;
	Thu,  9 Feb 2023 05:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4691F60BBF
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFE021BF3CA
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 881BE408FC
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 881BE408FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NnP_bmXVZ90w for <intel-wired-lan@osuosl.org>;
 Thu,  9 Feb 2023 05:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9087240342
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9087240342
 for <intel-wired-lan@osuosl.org>; Thu,  9 Feb 2023 05:30:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 60A9961910;
 Thu,  9 Feb 2023 05:30:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26224C433D2;
 Thu,  9 Feb 2023 05:30:20 +0000 (UTC)
Date: Wed, 8 Feb 2023 21:30:19 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Message-ID: <20230208213019.460d7163@kernel.org>
In-Reply-To: <20230208003327.29538-1-muhammad.husaini.zulkifli@intel.com>
References: <20230208003327.29538-1-muhammad.husaini.zulkifli@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675920620;
 bh=uWW9dWpkbiGcWrVSQm1mz+11j5Dg0e8H4KXyOQIpb8E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=snKZxoxFzmqJLrxK+Df3USmMOEjNd1Otm5Mnwg7ZQ/uuHalrZVMDA7DZIRnepDNhg
 /h4zPkgxOZMfk69OSUZUE3FbcfoxYVZouTqssqgAGcOtV38ow+x0AgcJheVdBMfcl+
 4XURkbBC2zYl8S9lV+KV35hv9erbwVqqLJm0mxRHS/aXQ1o0UDWWy6tQr1yMHPEk/h
 97P9v7czahrQTDrzj6QRCJAJ91p4j8PuXuzD7DkHinaNkVk22LWSGrv4nz/upPoO90
 TqiNSMlXDeKwpISgy/5QmuwCPQvYNXsXtx6UGevFIB9HRsBASRnrleGfc+F2tYg1ar
 yy3sEq0nonMng==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=snKZxoxF
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] igc: offload queue max
 SDU from tc-taprio
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
Cc: leon@kernel.org, intel-wired-lan@osuosl.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, tee.min.tan@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  8 Feb 2023 08:33:27 +0800 Muhammad Husaini Zulkifli wrote:
> From: Tan Tee Min <tee.min.tan@linux.intel.com>
> 
> Add support for configuring the max SDU for each Tx queue.
> If not specified, keep the default.

> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 0cc327294dfb5..38ad437957ada 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1508,6 +1508,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  	__le32 launch_time = 0;
>  	u32 tx_flags = 0;
>  	unsigned short f;
> +	u32 max_sdu = 0;

This variable can be moved to the scope of the if() ?

>  	ktime_t txtime;
>  	u8 hdr_len = 0;
>  	int tso = 0;
> @@ -1527,6 +1528,14 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  		return NETDEV_TX_BUSY;
>  	}
>  
> +	if (tx_ring->max_sdu > 0) {
> +		max_sdu = tx_ring->max_sdu +
> +			  (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
> +
> +		if (skb->len > max_sdu)

You should increment some counter here. Otherwise it's a silent discard.

> +			goto skb_drop;
> +	}
> +
>  	if (!tx_ring->launchtime_enable)
>  		goto done;
>  
> @@ -1606,6 +1615,11 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
>  	dev_kfree_skb_any(first->skb);

first->skb is skb, as far as I can tell, you can reshuffle this code to
avoid adding the new return flow.

>  	first->skb = NULL;
>  
> +	return NETDEV_TX_OK;
> +
> +skb_drop:
> +	dev_kfree_skb_any(skb);
> +
>  	return NETDEV_TX_OK;
>  }

> @@ -6122,6 +6137,16 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>  		}
>  	}
>  
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *ring = adapter->tx_ring[i];
> +		struct net_device *dev = adapter->netdev;
> +
> +		if (qopt->max_sdu[i])
> +			ring->max_sdu = qopt->max_sdu[i] + dev->hard_header_len;

why hard_header_len? Isn't it always ETH_HLEN?

> +		else
> +			ring->max_sdu = 0;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
