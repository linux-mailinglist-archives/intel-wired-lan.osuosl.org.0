Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D62AC6EC077
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Apr 2023 16:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75D6681FF7;
	Sun, 23 Apr 2023 14:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75D6681FF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682261185;
	bh=WN21Q8IdLkilHFrzH6lKvpAmx7f+bQNt7lkXhD/oT9Q=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qmj8LJJR1TCzO9nv+c203sUb8+Lbd5E56DpX5lALXidm7rYCO6pds+MJKDYF40ILo
	 7YyrirJirt/NEn6JoXlKm3ISLYOXgvhR0pyWSh2C9iMcfPPd1KcN4t0VQGmJJQC/XH
	 FKUTrHS83vkKaAGKwQEFXGca5dgQm3W1xSL2QsdgVf+oesZosXLEXipUffEht7sf4q
	 iFH+L7k2HpUkcOPni1XJscxaAwG0emJ7yRZNYSXZJIj4Na7kEkJpgydExliWsjmlKe
	 8zsToD6e/pAyHPSUWxjKSa0Zu8Wv3l6x4A3oXlH3x++IvGZGiGWHerzlTKuH8z/tGA
	 7TsRrJJNytxWQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F_ZxfrZ9JG-m; Sun, 23 Apr 2023 14:46:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1C9781FC8;
	Sun, 23 Apr 2023 14:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A1C9781FC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B55EE1BF346
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Apr 2023 14:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C8D940459
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Apr 2023 14:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C8D940459
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEl3KdAi7lZw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 23 Apr 2023 14:46:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6224E40103
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6224E40103
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Apr 2023 14:46:13 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-63b35789313so2678328b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Apr 2023 07:46:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682261173; x=1684853173;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=O7SnPoFD3za4rwhlM2qxf5xphltNXOfgSLCqny9xzIU=;
 b=Shj+tIzYHCq55iI+ze6WBl9xqnGivbMoByG44X+Z25Ikj9T9dNMrwbDaK930T8COgg
 raQlO14vSjekEVbAbe83FohNg2JsAkX69TPTulW7oZvYvZv1v0ppkAyh877165gZgk3/
 FktSC9fiLSuL1PJKBaYLHSnyYa07hqZ7+NnWevTZSW9J1kLaGmHa9Y/lkZB38J9tOopL
 Bmh4fQIetj5SpVpBpmIoJGi1QPeMbP2LW3SM6S2KvuI5vj3IEBd5RQ/D0a+LOQpbEDw7
 ns6kpvcLfAQSQSZU0f2ji4nahhBIdl2768lEUOe+Bzc6tL2tgrqpDfm6VSRYniUXtcOU
 3bdQ==
X-Gm-Message-State: AAQBX9cFIYVVap6EYERVlGSrFzkLQCkl5txrzYLIfq0JGo3UY9VNAWwN
 c1b0ciyPt5RddksLOboxWJQ=
X-Google-Smtp-Source: AKy350aSBzzoQCWcefxtSb/yUnhgCy6a8kAqBJ8ex4WwueTJPZxIgqpDVbfkSHrcWnK3eBkIJRvbng==
X-Received: by 2002:a17:902:c94c:b0:1a9:75a4:66c1 with SMTP id
 i12-20020a170902c94c00b001a975a466c1mr1024337pla.46.1682261172701; 
 Sun, 23 Apr 2023 07:46:12 -0700 (PDT)
Received: from localhost ([2605:59c8:148:ba10:5905:623a:c41:59e1])
 by smtp.gmail.com with ESMTPSA id
 i6-20020a170902eb4600b001a69c759af3sm5189929pli.35.2023.04.23.07.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Apr 2023 07:46:12 -0700 (PDT)
Date: Sun, 23 Apr 2023 07:46:11 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org, 
 Stanislav Fomichev <sdf@google.com>, 
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Message-ID: <644544b3206f0_19af02085e@john.notmuch>
In-Reply-To: <168182464270.616355.11391652654430626584.stgit@firesoul>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682261173; x=1684853173;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=O7SnPoFD3za4rwhlM2qxf5xphltNXOfgSLCqny9xzIU=;
 b=sVtFY/9syhTlTCGR2dtCDFX8VAYpI+CVfAox7WSRIm9j6Ar8zj6hb0yt6hxewzy7CG
 QBuxte569S2NINLOo/yP8YQh81EICibR5PHYk14H/Bz4ONXYhcEYXU2QmAm92yRSY7sJ
 OsediVyXbqqSGtWVIRc0s64zdao2Hv3pEOEwngSx5jKDrTpEdtKiSysddD1Ho7ZPV1Er
 k14llHCqo5EyPyjGovc5cYJXNuazDI45QXcEjd/mGLE8J6Zz4vO+oO78LCQtGdvPGat/
 L8W8x4+/xf9LcrySzzwkq58hYLcZWm271TkdYIPJssNibPxSmXFQKRSZK2MwED6KiRki
 dz9Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=sVtFY/9s
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesper Dangaard Brouer wrote:
> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
> hardware wasn't configured to provide RSS hash, thus it made sense to not
> enable net_device NETIF_F_RXHASH feature bit.
> 
> The NIC hardware was configured to enable RSS hash info in v5.2 via commit
> 2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
> forgot to set the NETIF_F_RXHASH feature bit.
> 
> The original implementation of igc_rx_hash() didn't extract the associated
> pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
> this patch are about extracting the RSS Type from the hardware and mapping
> this to enum pkt_hash_types. This was based on Foxville i225 software user
> manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
> 
> For UDP it's worth noting that RSS (type) hashing have been disabled both for
> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
> because hardware RSS doesn't handle fragmented pkts well when enabled (can
> cause out-of-order). This results in PKT_HASH_TYPE_L3 for UDP packets, and
> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
> the effect that netstack will do a software based hash calc calling into
> flow_dissect, but only when code calls skb_get_hash(), which doesn't
> necessary happen for local delivery.
> 
> For QA verification testing I wrote a small bpftrace prog:
>  [0] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/monitor_skb_hash_on_dev.bt
> 
> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h      |   28 ++++++++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_main.c |   31 +++++++++++++++++++++++++----
>  2 files changed, 55 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 34aebf00a512..f7f9e217e7b4 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -13,6 +13,7 @@
>  #include <linux/ptp_clock_kernel.h>
>  #include <linux/timecounter.h>
>  #include <linux/net_tstamp.h>
> +#include <linux/bitfield.h>
>  
>  #include "igc_hw.h"
>  
> @@ -311,6 +312,33 @@ extern char igc_driver_name[];
>  #define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
>  #define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
>  
> +/* RX-desc Write-Back format RSS Type's */
> +enum igc_rss_type_num {
> +	IGC_RSS_TYPE_NO_HASH		= 0,
> +	IGC_RSS_TYPE_HASH_TCP_IPV4	= 1,
> +	IGC_RSS_TYPE_HASH_IPV4		= 2,
> +	IGC_RSS_TYPE_HASH_TCP_IPV6	= 3,
> +	IGC_RSS_TYPE_HASH_IPV6_EX	= 4,
> +	IGC_RSS_TYPE_HASH_IPV6		= 5,
> +	IGC_RSS_TYPE_HASH_TCP_IPV6_EX	= 6,
> +	IGC_RSS_TYPE_HASH_UDP_IPV4	= 7,
> +	IGC_RSS_TYPE_HASH_UDP_IPV6	= 8,
> +	IGC_RSS_TYPE_HASH_UDP_IPV6_EX	= 9,
> +	IGC_RSS_TYPE_MAX		= 10,
> +};
> +#define IGC_RSS_TYPE_MAX_TABLE		16
> +#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask 0x0F */
> +
> +/* igc_rss_type - Rx descriptor RSS type field */
> +static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
> +{
> +	/* RSS Type 4-bits (3:0) number: 0-9 (above 9 is reserved)
> +	 * Accessing the same bits via u16 (wb.lower.lo_dword.hs_rss.pkt_info)
> +	 * is slightly slower than via u32 (wb.lower.lo_dword.data)
> +	 */
> +	return le32_get_bits(rx_desc->wb.lower.lo_dword.data, IGC_RSS_TYPE_MASK);
> +}
> +
>  /* Interrupt defines */
>  #define IGC_START_ITR			648 /* ~6000 ints/sec */
>  #define IGC_4K_ITR			980
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 1c4676882082..bfa9768d447f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -1690,14 +1690,36 @@ static void igc_rx_checksum(struct igc_ring *ring,
>  		   le32_to_cpu(rx_desc->wb.upper.status_error));
>  }
>  
> +/* Mapping HW RSS Type to enum pkt_hash_types */
> +static const enum pkt_hash_types igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {
> +	[IGC_RSS_TYPE_NO_HASH]		= PKT_HASH_TYPE_L2,
> +	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= PKT_HASH_TYPE_L4,
> +	[IGC_RSS_TYPE_HASH_IPV4]	= PKT_HASH_TYPE_L3,
> +	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= PKT_HASH_TYPE_L4,
> +	[IGC_RSS_TYPE_HASH_IPV6_EX]	= PKT_HASH_TYPE_L3,
> +	[IGC_RSS_TYPE_HASH_IPV6]	= PKT_HASH_TYPE_L3,
> +	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = PKT_HASH_TYPE_L4,
> +	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= PKT_HASH_TYPE_L4,
> +	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= PKT_HASH_TYPE_L4,
> +	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = PKT_HASH_TYPE_L4,
> +	[10] = PKT_HASH_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW  */
> +	[11] = PKT_HASH_TYPE_NONE, /* keep array sized for SW bit-mask   */
> +	[12] = PKT_HASH_TYPE_NONE, /* to handle future HW revisons       */
> +	[13] = PKT_HASH_TYPE_NONE,
> +	[14] = PKT_HASH_TYPE_NONE,
> +	[15] = PKT_HASH_TYPE_NONE,
> +};
> +
>  static inline void igc_rx_hash(struct igc_ring *ring,
>  			       union igc_adv_rx_desc *rx_desc,
>  			       struct sk_buff *skb)
>  {
> -	if (ring->netdev->features & NETIF_F_RXHASH)
> -		skb_set_hash(skb,
> -			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> -			     PKT_HASH_TYPE_L3);
> +	if (ring->netdev->features & NETIF_F_RXHASH) {
> +		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
> +		u32 rss_type = igc_rss_type(rx_desc);
> +
> +		skb_set_hash(skb, rss_hash, igc_rss_type_table[rss_type]);

Just curious why not copy the logic from the other driver fms10k, ice, ect.

	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
		     (IXGBE_RSS_L4_TYPES_MASK & (1ul << rss_type)) ?
		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);

avoiding the table logic. Do the driver folks care?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
