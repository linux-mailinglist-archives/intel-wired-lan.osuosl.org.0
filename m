Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD226ED52E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 21:17:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 04E6281F40;
	Mon, 24 Apr 2023 19:17:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 04E6281F40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682363834;
	bh=jTx9U7m8wgJG4btkFXrSQvBuOH4txbYN0/ODErDaX0M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lxBm4vnInTM0ttyQTe16dh/VDw/B8yiHpRybD6ZD9CmaukL7ZTxGP0Qk6YY4Rxxf9
	 0u1Iqbp//D4NZ2b89FnarKNVxB7EI0VL+JD2CmLW0zNS+mxprqwUfrqRekpqmMzDzv
	 OscLEZlKgQDqjd/Aihu6IyV0SJyqMhYJg1sq2gP4OPWulUPdJKStTOWQN/9rgG6tgQ
	 XFhh0ciu4RKQb/nVg70wFpqXeCcVBYAfeYWUPMyfzNAhBB16Ghcdx/K2FBH2lWmBtV
	 rBFoBUmRVtPmOaTmF+Ijk4VXh4IWjU2k6ycnxqDpwwO5p0BBMJrcylymhM/TN0no7J
	 YCDTvx0hPPYkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fyu_jiyYCW6m; Mon, 24 Apr 2023 19:17:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C136E81F24;
	Mon, 24 Apr 2023 19:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C136E81F24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CF201BF487
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 70E7281EF3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:17:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70E7281EF3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZ-L3FCprjcT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 19:17:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A49081F29
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A49081F29
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 19:17:06 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id
 d2e1a72fcca58-63b78b344d5so3985200b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 12:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682363826; x=1684955826;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=aaDK9m9i5koKWM/RqPSj0LG6EaNHCoiabR5mgFcubT0=;
 b=dQnopfHclNdcOUveJaE4hQkIJak31CbEm4QdEK15D65jiGK2C85WlDFd2cThowvHUN
 5SqgW3uY3qTDluW2NDUREq4wiIjk9qVW8/VJPSOuB8sNVt9b8ftzZ9IuObe2Lup9z18d
 EqmzDLHeMkVPaImJmC2C4LY+LenTtIV+Q/kvOtf6rapk8lkgqLh/4yUjGZNOs2iK6z31
 HUp1iNYFiEXo6O9sRI3sa5cSUqwadJstHt1sLlbWGs7pmX2U8uy00ftl3iqJ/8YU9uFF
 AghAuhWmnoGpUOlFmX8KP/Auk34NGrRMIbBRtSGUhPuwrFfiSV/S6W+ObguY0m+8G8G6
 ZIEQ==
X-Gm-Message-State: AAQBX9dEVt3seV7LqfTn+ZsKI79xfpra270mMvoJtvGHLOPRnxVhnDeW
 XhzuEsjTrDFODPdIWu0SXX8=
X-Google-Smtp-Source: AKy350aldgal+v4GFRHSeA2DTl/g0qXrUM8SEAR+RZzb2b3jCek5UewF1ZzHFqzSRDUxJdnSvJHGug==
X-Received: by 2002:a05:6a20:a696:b0:f1:b3c1:82f2 with SMTP id
 ba22-20020a056a20a69600b000f1b3c182f2mr15915302pzb.38.1682363825586; 
 Mon, 24 Apr 2023 12:17:05 -0700 (PDT)
Received: from localhost ([2605:59c8:148:ba10:d8b6:344e:b81a:e8b5])
 by smtp.gmail.com with ESMTPSA id
 y72-20020a62644b000000b006372791d708sm7793140pfb.104.2023.04.24.12.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Apr 2023 12:17:04 -0700 (PDT)
Date: Mon, 24 Apr 2023 12:17:03 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Jesper Dangaard Brouer <jbrouer@redhat.com>, 
 John Fastabend <john.fastabend@gmail.com>, bpf@vger.kernel.org, 
 Stanislav Fomichev <sdf@google.com>, 
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <6446d5af80e06_338f220820@john.notmuch>
In-Reply-To: <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
 <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
Mime-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682363826; x=1684955826;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aaDK9m9i5koKWM/RqPSj0LG6EaNHCoiabR5mgFcubT0=;
 b=NS19bZCL5pzW5f+ImLYirecmBnWwqoN+kKp5OgMtoyXPntbH7rC8NiPlGShoUR9HlP
 JjHinxKVLyF6Lt2Qa43sn2JL184cSzmw2eosUhctULC0t9CkMx0W3P8W8KkGUs6XpmFM
 JPIJ/MTNM18HU5Bp/uOy2LyvDvFdISwHxrJN2PxLKjbq/xH3mIKPcQUP9Gh2Yso1mMKU
 EefgBxzXrGvKNYiMoUGBKV+S2bQfnSAHLzMXQGNAQdRa078WsUwnIRrTo3jbEhlR80d0
 CtQaKQSqfypZBRh5I0KRbcSCt1WXu++NqVkWnm/XWpy93IC5Vh0z/DG59Uncu3pVCSzC
 Nd8w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=NS19bZCL
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
 larysa.zaremba@intel.com, netdev@vger.kernel.org, ast@kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 yoong.siang.song@intel.com, brouer@redhat.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net,
 hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesper Dangaard Brouer wrote:
> 
> 
> On 23/04/2023 16.46, John Fastabend wrote:
> > Jesper Dangaard Brouer wrote:
> >> When function igc_rx_hash() was introduced in v4.20 via commit 0507ef8a0372
> >> ("igc: Add transmit and receive fastpath and interrupt handlers"), the
> >> hardware wasn't configured to provide RSS hash, thus it made sense to not
> >> enable net_device NETIF_F_RXHASH feature bit.
> >>
> >> The NIC hardware was configured to enable RSS hash info in v5.2 via commit
> >> 2121c2712f82 ("igc: Add multiple receive queues control supporting"), but
> >> forgot to set the NETIF_F_RXHASH feature bit.
> >>
> >> The original implementation of igc_rx_hash() didn't extract the associated
> >> pkt_hash_type, but statically set PKT_HASH_TYPE_L3. The largest portions of
> >> this patch are about extracting the RSS Type from the hardware and mapping
> >> this to enum pkt_hash_types. This was based on Foxville i225 software user
> >> manual rev-1.3.1 and tested on Intel Ethernet Controller I225-LM (rev 03).
> >>
> >> For UDP it's worth noting that RSS (type) hashing have been disabled both for
> >> IPv4 and IPv6 (see IGC_MRQC_RSS_FIELD_IPV4_UDP + IGC_MRQC_RSS_FIELD_IPV6_UDP)
> >> because hardware RSS doesn't handle fragmented pkts well when enabled (can
> >> cause out-of-order). This results in PKT_HASH_TYPE_L3 for UDP packets, and
> >> hash value doesn't include UDP port numbers. Not being PKT_HASH_TYPE_L4, have
> >> the effect that netstack will do a software based hash calc calling into
> >> flow_dissect, but only when code calls skb_get_hash(), which doesn't
> >> necessary happen for local delivery.
> >>
> >> For QA verification testing I wrote a small bpftrace prog:
> >>   [0] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/monitor_skb_hash_on_dev.bt
> >>
> >> Fixes: 2121c2712f82 ("igc: Add multiple receive queues control supporting")
> >> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
> >> ---
> >>   drivers/net/ethernet/intel/igc/igc.h      |   28 ++++++++++++++++++++++++++
> >>   drivers/net/ethernet/intel/igc/igc_main.c |   31 +++++++++++++++++++++++++----
> >>   2 files changed, 55 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> >> index 34aebf00a512..f7f9e217e7b4 100644
> >> --- a/drivers/net/ethernet/intel/igc/igc.h
> >> +++ b/drivers/net/ethernet/intel/igc/igc.h
> >> @@ -13,6 +13,7 @@
> >>   #include <linux/ptp_clock_kernel.h>
> >>   #include <linux/timecounter.h>
> >>   #include <linux/net_tstamp.h>
> >> +#include <linux/bitfield.h>
> >>   
> >>   #include "igc_hw.h"
> >>   
> >> @@ -311,6 +312,33 @@ extern char igc_driver_name[];
> >>   #define IGC_MRQC_RSS_FIELD_IPV4_UDP	0x00400000
> >>   #define IGC_MRQC_RSS_FIELD_IPV6_UDP	0x00800000
> >>   
> >> +/* RX-desc Write-Back format RSS Type's */
> >> +enum igc_rss_type_num {
> >> +	IGC_RSS_TYPE_NO_HASH		= 0,
> >> +	IGC_RSS_TYPE_HASH_TCP_IPV4	= 1,
> >> +	IGC_RSS_TYPE_HASH_IPV4		= 2,
> >> +	IGC_RSS_TYPE_HASH_TCP_IPV6	= 3,
> >> +	IGC_RSS_TYPE_HASH_IPV6_EX	= 4,
> >> +	IGC_RSS_TYPE_HASH_IPV6		= 5,
> >> +	IGC_RSS_TYPE_HASH_TCP_IPV6_EX	= 6,
> >> +	IGC_RSS_TYPE_HASH_UDP_IPV4	= 7,
> >> +	IGC_RSS_TYPE_HASH_UDP_IPV6	= 8,
> >> +	IGC_RSS_TYPE_HASH_UDP_IPV6_EX	= 9,
> >> +	IGC_RSS_TYPE_MAX		= 10,
> >> +};
> >> +#define IGC_RSS_TYPE_MAX_TABLE		16
> >> +#define IGC_RSS_TYPE_MASK		GENMASK(3,0) /* 4-bits (3:0) = mask 0x0F */
> >> +
> >> +/* igc_rss_type - Rx descriptor RSS type field */
> >> +static inline u32 igc_rss_type(const union igc_adv_rx_desc *rx_desc)
> >> +{
> >> +	/* RSS Type 4-bits (3:0) number: 0-9 (above 9 is reserved)
> >> +	 * Accessing the same bits via u16 (wb.lower.lo_dword.hs_rss.pkt_info)
> >> +	 * is slightly slower than via u32 (wb.lower.lo_dword.data)
> >> +	 */
> >> +	return le32_get_bits(rx_desc->wb.lower.lo_dword.data, IGC_RSS_TYPE_MASK);
> >> +}
> >> +
> >>   /* Interrupt defines */
> >>   #define IGC_START_ITR			648 /* ~6000 ints/sec */
> >>   #define IGC_4K_ITR			980
> >> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> >> index 1c4676882082..bfa9768d447f 100644
> >> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> >> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> >> @@ -1690,14 +1690,36 @@ static void igc_rx_checksum(struct igc_ring *ring,
> >>   		   le32_to_cpu(rx_desc->wb.upper.status_error));
> >>   }
> >>   
> >> +/* Mapping HW RSS Type to enum pkt_hash_types */
> >> +static const enum pkt_hash_types igc_rss_type_table[IGC_RSS_TYPE_MAX_TABLE] = {
> >> +	[IGC_RSS_TYPE_NO_HASH]		= PKT_HASH_TYPE_L2,
> >> +	[IGC_RSS_TYPE_HASH_TCP_IPV4]	= PKT_HASH_TYPE_L4,
> >> +	[IGC_RSS_TYPE_HASH_IPV4]	= PKT_HASH_TYPE_L3,
> >> +	[IGC_RSS_TYPE_HASH_TCP_IPV6]	= PKT_HASH_TYPE_L4,
> >> +	[IGC_RSS_TYPE_HASH_IPV6_EX]	= PKT_HASH_TYPE_L3,
> >> +	[IGC_RSS_TYPE_HASH_IPV6]	= PKT_HASH_TYPE_L3,
> >> +	[IGC_RSS_TYPE_HASH_TCP_IPV6_EX] = PKT_HASH_TYPE_L4,
> >> +	[IGC_RSS_TYPE_HASH_UDP_IPV4]	= PKT_HASH_TYPE_L4,
> >> +	[IGC_RSS_TYPE_HASH_UDP_IPV6]	= PKT_HASH_TYPE_L4,
> >> +	[IGC_RSS_TYPE_HASH_UDP_IPV6_EX] = PKT_HASH_TYPE_L4,
> >> +	[10] = PKT_HASH_TYPE_NONE, /* RSS Type above 9 "Reserved" by HW  */
> >> +	[11] = PKT_HASH_TYPE_NONE, /* keep array sized for SW bit-mask   */
> >> +	[12] = PKT_HASH_TYPE_NONE, /* to handle future HW revisons       */
> >> +	[13] = PKT_HASH_TYPE_NONE,
> >> +	[14] = PKT_HASH_TYPE_NONE,
> >> +	[15] = PKT_HASH_TYPE_NONE,
> >> +};
> >> +
> >>   static inline void igc_rx_hash(struct igc_ring *ring,
> >>   			       union igc_adv_rx_desc *rx_desc,
> >>   			       struct sk_buff *skb)
> >>   {
> >> -	if (ring->netdev->features & NETIF_F_RXHASH)
> >> -		skb_set_hash(skb,
> >> -			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> >> -			     PKT_HASH_TYPE_L3);
> >> +	if (ring->netdev->features & NETIF_F_RXHASH) {
> >> +		u32 rss_hash = le32_to_cpu(rx_desc->wb.lower.hi_dword.rss);
> >> +		u32 rss_type = igc_rss_type(rx_desc);
> >> +
> >> +		skb_set_hash(skb, rss_hash, igc_rss_type_table[rss_type]);
> > 
> > Just curious why not copy the logic from the other driver fms10k, ice, ect.
> > 
> > 	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> > 		     (IXGBE_RSS_L4_TYPES_MASK & (1ul << rss_type)) ?
> > 		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);
> 
> Detail: This code mis-categorize (e.g. ARP) PKT_HASH_TYPE_L2 as
> PKT_HASH_TYPE_L3, but as core reduces this further to one SKB bit, it
> doesn't really matter.
> 
> > avoiding the table logic. Do the driver folks care?
> 
> The define IXGBE_RSS_L4_TYPES_MASK becomes the "table" logic as a 1-bit
> true/false table.  It is a more compact table, let me know if this is
> preferred.
> 
> Yes, it is really upto driver maintainer people to decide, what code is
> preferred ?

Yeah doesn't matter much to me either way. I was just looking at code
compared to ice driver while reviewing.

> 
> --Jesper
> 


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
