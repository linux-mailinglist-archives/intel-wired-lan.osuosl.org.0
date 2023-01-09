Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C0662EC0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 19:22:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 049A94167D;
	Mon,  9 Jan 2023 18:22:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 049A94167D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673288552;
	bh=ZxIOqnI6bfJgD35w05EJ5rQ+nrzM5nndNcjfr7hE/b8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zi/MTGbDBR6ioty4e8pZUXYSoZmnp039J7Ri7FraiFkuIRLdyFGIyefxsxbyE3snT
	 aWqjImnIoOUh2eBahj98IR5kMCui9HixHqFdhcA2+9x38TNdJfzMzwZCxWLoHJCTlR
	 b60JlIyjKS/eAXHdL4JG137SZ9mCXpkTk4ROX6fyRGRNPR1llXfUXojdHxbQ/5LKLh
	 cbKxwZJLFri6TkaAA51QZLu6+YZAuG3I8vr9mcxdrKrSTPq82b/SL9KruTbQoIagF6
	 ZMtxAdKZgZSUwoKc61ktpziRtUkieSHIPGw3qBcaZy4ueFDdhkiUXzeEG+E3y6kf49
	 sBZxrlEqQPePw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lF9R-XRd1yYA; Mon,  9 Jan 2023 18:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95252410D7;
	Mon,  9 Jan 2023 18:22:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95252410D7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 389351BF2F3
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 18:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 14221819BC
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 18:22:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14221819BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6PCWdNgu3KOj for <intel-wired-lan@osuosl.org>;
 Mon,  9 Jan 2023 18:22:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DC918184F
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4DC918184F
 for <intel-wired-lan@osuosl.org>; Mon,  9 Jan 2023 18:22:24 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id k19so6789308pfg.11
 for <intel-wired-lan@osuosl.org>; Mon, 09 Jan 2023 10:22:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qxbeiZFgELN7gMzS/vrU3V/EU9TFLbTxrex7BL3X+Iw=;
 b=fJEif4+xOoasc8CTPbegJwE6l7ctytznd9GfbKh8hPE2GU7i89GkKRWhVhp3wxGrCz
 FkmMX1x8BxKGCJs57eURiH9w4ySDdotZ4u4FyyT9C7WLXi9sO1QZaGeeiSSufLP5CokG
 aTT6rtKC7OalpINWYciG41sy2UoXPCi5WjVS+1PPwmzKhBWyX9vxH7kq0STBsIqvldPj
 2xQg7qCZGbezj6AvP1UiQ5OqZ4SAPSPOF724XmoySEIhqxwbfWU6GAIex0qRGNoTRMgR
 WXSEu5TNbZYjtJPEkxGbF7Fr5O2O2cdBPEeBo6N1sYPgdMqDhYs6tyn442I7tquaS0UF
 SY0Q==
X-Gm-Message-State: AFqh2kpLZasckjx48cU7bqlPWhrfVj7bRH7jsjDdyxdnqR7FUi13iX7k
 Z//DGJSOWNM1HnVcWuTW5k0=
X-Google-Smtp-Source: AMrXdXuEO8Y3nF4mJkj5it9C1Kh43xBUeKz8ggzpCHopILax+hPckXie3+Ub1ody3NuJdm2tqNNqSg==
X-Received: by 2002:a62:ee0e:0:b0:578:f6f:efab with SMTP id
 e14-20020a62ee0e000000b005780f6fefabmr71116606pfi.11.1673288543572; 
 Mon, 09 Jan 2023 10:22:23 -0800 (PST)
Received: from [192.168.0.128] ([98.97.43.196])
 by smtp.googlemail.com with ESMTPSA id
 y12-20020a62640c000000b005819313269csm6340524pfb.124.2023.01.09.10.22.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jan 2023 10:22:23 -0800 (PST)
Message-ID: <9b68abc5e8613e02207e9c0c3619b1b07bc5bb8c.camel@gmail.com>
From: Alexander H Duyck <alexander.duyck@gmail.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>, netdev@vger.kernel.org
Date: Mon, 09 Jan 2023 10:22:22 -0800
In-Reply-To: <20230109161833.223510-1-pawel.chmielewski@intel.com>
References: <20230109161833.223510-1-pawel.chmielewski@intel.com>
User-Agent: Evolution 3.44.4 (3.44.4-2.fc36) 
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=qxbeiZFgELN7gMzS/vrU3V/EU9TFLbTxrex7BL3X+Iw=;
 b=NE7e4jk5FBzhgvraSsRC/XY6hS70w2wXFjn+1GlMA6gdRuiDnfx5cUymZGEh/tYOqA
 /IHui3I2F1i6OF2LfmXxCwj/LOXOziqvEZsHe8V0yABO5IfF4ZtYR8ssFMlq1LiflwBf
 qT0WB1W8bthSSIQKdcNXCyzkBaX8dOXALOdauYSDy9Aza+fSZCAQi+P22hYni10v/Sm1
 OnTHTLxhka0FHdAXxwlaihOlo08g4Cfnw1csGLHMmM5kTc6S7fo2l3NHbrA2PthsCB9z
 BRnp8qOmyplljQmIHIAp/kpLBRWDVfbwkdGCPi71asW0jtcI5k7d7P/Vuyy4lybVI/gR
 GIqQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=NE7e4jk5
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG TCP
 packets
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-01-09 at 17:18 +0100, Pawel Chmielewski wrote:
> This patch is a proof of concept for testing BIG TCP feature in ice driver.
> Please see letter below.
> 
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
> Hi All
> I'm writing on the list, as you may be able to provide me some feedback.
> I want to enable BIG TCP feature in intel ice drive, but I think I'm 
> missing something.
> In the code itself, I've set 128k as a maximum tso size for the netif,
> and added stripping the HBH option from the header.
> For testing purposes, gso_max_size & gro_max_size were set to 128k and 
> mtu to 9000.
> I've assumed that the ice tso offload will do the rest of the job.
> However- while running netperf TCP_RR and TCP_STREAM tests,
> I saw that only up to ~20% of the transmitted test packets have 
> the specified size. 
> Other packets to be transmitted, appear from the stack as splitted.
> 
> I've been running the following testcases:
> netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> I suspected a shrinking tcp window size, but sniffing with tcpdump showed rather big scaling factor (usually 128x).
> Apart from using netperf, I also tried a simple IPv6 user space application
> (with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) - similar results.
> 
> I'd be very grateful for any feedback/suggestions
> 
> Pawel
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 2b23b4714a26..4e657820e55d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
>  DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
>  EXPORT_SYMBOL(ice_xdp_locking_key);
>  
> +#define ICE_MAX_TSO_SIZE 131072
> +
>  /**
>   * ice_hw_to_dev - Get device pointer from the hardware structure
>   * @hw: pointer to the device HW structure
> @@ -3422,6 +3424,8 @@ static void ice_set_netdev_features(struct net_device *netdev)
>  	 * be changed at runtime
>  	 */
>  	netdev->hw_features |= NETIF_F_RXFCS;
> +
> +	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 086f0b3ab68d..7e0ac483cad9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -23,6 +23,9 @@
>  #define FDIR_DESC_RXDID 0x40
>  #define ICE_FDIR_CLEAN_DELAY 10
>  
> +#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr)
> +#define HBH_OFFSET ETH_HLEN + sizeof(struct ipv6hdr)
> +
>  /**
>   * ice_prgm_fdir_fltr - Program a Flow Director filter
>   * @vsi: VSI to send dummy packet
> @@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
>  
>  	ice_trace(xmit_frame_ring, tx_ring, skb);
>  
> +	if (ipv6_has_hopopt_jumbo(skb)) {
> +		memmove(skb->data + HBH_HDR_SIZE, skb->data, HBH_OFFSET);
> +		__skb_pull(skb, HBH_HDR_SIZE);
> +		skb_reset_mac_header(skb);
> +	}
> +
>  	count = ice_xmit_desc_count(skb);
>  	if (ice_chk_linearize(skb, count)) {
>  		if (__skb_linearize(skb))

Your removal code here is forgetting to handle the network header. As a
result your frames will be pointer mangled in terms of header location.

You might be better off using ipv6_hopopt_jumbo_remove() rather than
just coding your own bit to remove it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
