Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C4B68F220
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 16:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 703C740C35;
	Wed,  8 Feb 2023 15:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 703C740C35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675870688;
	bh=G0UzAAJxP9m351UTx8NJT9Z2IGWI2BzKSi/63ZNhWmM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NJXicP9+SYQ+HfdR1DpA29+L2ebGSVzu3aomv8ionTn7jri4lIAVsrrI85PlxSlHp
	 DfKTsuOtkfVc12f05l58Vxd9XLJer+zEJR203PwDEAy+QAsmEPUN9jGpbnmWLhoukx
	 nWBdt5dXSG6hFlKAlyRV8zWyW+Jd5kpUmeF/Cubbng2vtzG8AsQEXYUzx4NHWKQgZ6
	 CPdRvGwf3ulvl72Odhz+7COSTWAJVc5RMUG+3oTS8+SdQQtQrqL9mPy+eHuOrDwbbi
	 CwCQZYk9EV1+XI1/BDeswJCxwuiB+Ef+BdlY1HgC3nsdRUBEb31TOMWmTQ8eE00G5K
	 AZsDs3YoLAxzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbYtQPZ8wz46; Wed,  8 Feb 2023 15:38:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09BCC40C24;
	Wed,  8 Feb 2023 15:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 09BCC40C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 987961BF36C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7021C40350
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:38:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7021C40350
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUtGpvVgpdjP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 15:38:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6335F4032C
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6335F4032C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 15:38:00 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id v23so19714561plo.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Feb 2023 07:38:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tyxdKLDP3Ib74eY/+3PsD15L+kFnw+sZW1uY0BYmLFo=;
 b=AyCrsZi6oK19AmdKucP18HGOygflxM4nVz7Hne6QrdnAWILpk+c6w0x9ZtHmnH7ruH
 nI9dedLEtSjud88lGL1Mbli3tGMTDvmePOtYr4k7E/8LdvbmyzbxE3sYGs2ihr17FRJx
 BFgRL9AtkHc4wsTppn3PgoeBWZd83vKnbEcAZxkNzCOf1EATnQqQ43mPFvCsLZ7qXR4o
 4hcnS/8IlQ4fZPWH+JFY6i5eu7suR7h8rloN3+vKwkNh/yZmZlmBmSd/ohaky32WCmJ+
 Rvkb/Cs9BLK6rXhedfSpa20SWUNh/Xj3hEYXJ4CLCb02WbYhLMRw1lpYPv2ubnQt3a1s
 2NPg==
X-Gm-Message-State: AO0yUKV5XWbZRx3biJXOlQRGeUGdUsJaBIlqSnIEfxcjNXqTgwxHzrWF
 TLzHEpMYgLv9Mof3TxlbgyY=
X-Google-Smtp-Source: AK7set/mWJITw8aZBIw2ou01vX1mq7jpo5YZRgEOXmx+HEFQT/fF1HqAaBw1KqjJ1Pq3anuRaFnT+Q==
X-Received: by 2002:a17:902:e751:b0:198:e8f3:6a48 with SMTP id
 p17-20020a170902e75100b00198e8f36a48mr9611072plf.9.1675870679597; 
 Wed, 08 Feb 2023 07:37:59 -0800 (PST)
Received: from [192.168.0.128] ([98.97.119.54])
 by smtp.googlemail.com with ESMTPSA id
 jl13-20020a170903134d00b00198fde9178csm8036684plb.197.2023.02.08.07.37.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Feb 2023 07:37:58 -0800 (PST)
Message-ID: <2bfcd7d92a6971416f58d9aac6e74840d5ae240a.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Jason Xing <kerneljasonxing@gmail.com>, jesse.brandeburg@intel.com, 
 anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, richardcochran@gmail.com,
 ast@kernel.org,  daniel@iogearbox.net, hawk@kernel.org,
 john.fastabend@gmail.com,  alexandr.lobakin@intel.com,
 maciej.fijalkowski@intel.com
Date: Wed, 08 Feb 2023 07:37:57 -0800
In-Reply-To: <20230208024333.10465-1-kerneljasonxing@gmail.com>
References: <20230208024333.10465-1-kerneljasonxing@gmail.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=tyxdKLDP3Ib74eY/+3PsD15L+kFnw+sZW1uY0BYmLFo=;
 b=UwPts0bydIcjI4PQvSnevkrShWRtqAh7GAbHA8MBtf4d5eEo848fnZ5h9drEghgKhb
 yTVtd0ikOxiwzYZJQ733RLz8U1NXTfq2RHZCtIM/f4qJwN0LiVRHoGkJ3q2/azGy/YF+
 zhpWxP+SKGFyUrxkb7W41xu7+Akqe76IlJIALJR4A9jbC7sqnbsSpOpUSwno5l9y3R/f
 CdSy44Yw5s2kmCpNPAB2GUF5dvdclu9hEArtx8fKSTgL4w1aEwXkJe5uxSfjQLN/EDLg
 GxE1gsRo67/xxjawfpm98E8t7f/815lFm0vsI6SFMQkioqSbLmgZ3xFFWCrrggx83/yk
 BeUw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=UwPts0by
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/3] ixgbe: allow to increase
 MTU to 3K with XDP enabled
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-02-08 at 10:43 +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Recently I encountered one case where I cannot increase the MTU size
> directly from 1500 to a much bigger value with XDP enabled if the
> server is equipped with IXGBE card, which happened on thousands of
> servers in production environment. After appling the current patch,
> we can set the maximum MTU size to 3K.
> 
> This patch follows the behavior of changing MTU as i40e/ice does.
> 
> Referrences:
> [1] commit 23b44513c3e6 ("ice: allow 3k MTU for XDP")
> [2] commit 0c8493d90b6b ("i40e: add XDP support for pass and drop actions")
> 
> Fixes: fabf1bce103a ("ixgbe: Prevent unsupported configurations with XDP")
> Signed-off-by: Jason Xing <kernelxing@tencent.com>

This is based on the broken premise that w/ XDP we are using a 4K page.
The ixgbe driver isn't using page pool and is therefore running on
different limitations. The ixgbe driver is only using 2K slices of the
4K page. In addition that is reduced to 1.5K to allow for headroom and
the shared info in the buffer.

Currently the only way a 3K buffer would work is if FCoE is enabled and
in that case the driver is using order 1 pages and still using the
split buffer approach.

Changing the MTU to more than 1.5K will allow multi-buffer frames which
would break things when you try to use XDP_REDIRECT or XDP_TX on frames
over 1.5K in size. For things like XDP_PASS, XDP_DROP, and XDP_ABORT it
should still work as long as you don't attempt to reach beyond the 1.5K
boundary.

Until this driver supports XDP multi-buffer I don't think you can
increase the MTU past 1.5K. If you are wanting a larger MTU you should
look at enabling XDP multi-buffer and then just drop the XDP
limitations entirely.

> ---
> v4:
> 1) use ':' instead of '-' for kdoc
> 
> v3:
> 1) modify the titile and body message.
> 
> v2:
> 1) change the commit message.
> 2) modify the logic when changing MTU size suggested by Maciej and Alexander.
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 25 ++++++++++++-------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..25ca329f7d3c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6777,6 +6777,18 @@ static void ixgbe_free_all_rx_resources(struct ixgbe_adapter *adapter)
>  			ixgbe_free_rx_resources(adapter->rx_ring[i]);
>  }
>  
> +/**
> + * ixgbe_max_xdp_frame_size - returns the maximum allowed frame size for XDP
> + * @adapter: device handle, pointer to adapter
> + */
> +static int ixgbe_max_xdp_frame_size(struct ixgbe_adapter *adapter)
> +{
> +	if (PAGE_SIZE >= 8192 || adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
> +		return IXGBE_RXBUFFER_2K;
> +	else
> +		return IXGBE_RXBUFFER_3K;
> +}
> +

There is no difference in the buffer allocation approach for LEGACY vs
non-legacy. The difference is if we are building the frame around the
buffer using build_skb or we are adding it as a frag and then copying
out the header.

>  /**
>   * ixgbe_change_mtu - Change the Maximum Transfer Unit
>   * @netdev: network interface device structure
> @@ -6788,18 +6800,13 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
>  {
>  	struct ixgbe_adapter *adapter = netdev_priv(netdev);
>  
> -	if (adapter->xdp_prog) {
> +	if (ixgbe_enabled_xdp_adapter(adapter)) {
>  		int new_frame_size = new_mtu + ETH_HLEN + ETH_FCS_LEN +
>  				     VLAN_HLEN;
> -		int i;
> -
> -		for (i = 0; i < adapter->num_rx_queues; i++) {
> -			struct ixgbe_ring *ring = adapter->rx_ring[i];
>  
> -			if (new_frame_size > ixgbe_rx_bufsz(ring)) {
> -				e_warn(probe, "Requested MTU size is not supported with XDP\n");
> -				return -EINVAL;
> -			}
> +		if (new_frame_size > ixgbe_max_xdp_frame_size(adapter)) {
> +			e_warn(probe, "Requested MTU size is not supported with XDP\n");
> +			return -EINVAL;
>  		}
>  	}
>  

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
