Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHyFJKc7cmlMfAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 16:00:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE85768400
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 16:00:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BAE343DB7;
	Thu, 22 Jan 2026 15:00:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9kIbE2WE3tQY; Thu, 22 Jan 2026 15:00:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CEBC44438
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769094050;
	bh=C4ih43BAca0SA9TZlScagesC30I6QlqwkFpgROthTHg=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=srx01pChOnYsCz+5vZYgWcRFS67wBd5/LRhoM776dGUhFlfc64LAokt226JBQ9RlP
	 YKt4KZvJTR1MDRI/oINuuEO63N0jb7p2qbDbTyS+BrrV0SDQVccMW/Chbdfe+E2AMG
	 9evrSoEQBL5hKYNdJz1DZVCUUTwGxzzWHg6v9FE5wggSAbWP94iSxRO7BxdTnnzk+1
	 XZV7vnIF6gkov0jL2GiCEh6WGAAnCS/gFbMmBZgjfR+uZLsWzHY/iTEZybccffQAWa
	 akjtJVhNdAWuCmgG+HH5JSmlBYjX9cPfo73zPVMd9Xl8aWkpjaW8HYmLNldMlwbDnx
	 Zrgsep4U62spQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8CEBC44438;
	Thu, 22 Jan 2026 15:00:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 360D8122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 15:00:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31D376F5D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 15:00:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CgxbVz2yLoH4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 15:00:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6472C6F5BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6472C6F5BF
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6472C6F5BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 15:00:45 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 8B5144C44303AE;
 Thu, 22 Jan 2026 16:00:02 +0100 (CET)
Message-ID: <ab7b6df0-53d6-4304-8e65-5f1e243d9615@molgen.mpg.de>
Date: Thu, 22 Jan 2026 16:00:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20260122134809.7765-1-kohei@enjuk.jp>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260122134809.7765-1-kohei@enjuk.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] igb: set skb hash type
 from RSS_TYPE
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mpg.de:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,molgen.mpg.de:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: DE85768400
X-Rspamd-Action: no action

Dear Kohei,


Thank you for your patch.

Am 22.01.26 um 14:47 schrieb Kohei Enju:
> igb always marks the RX hash as L3 regardless of RSS_TYPE in the
> advanced descriptor, which may indicate L4 (TCP/UDP) hash. This can
> trigger unnecessary SW hash recalculation and breaks toeplitz selftests.
> 
> Use RSS_TYPE from pkt_info to set the correct PKT_HASH_TYPE_*
> 
> Tested by toeplitz.py with the igb RSS key get/set patches applied as
> they are required for toeplitz.py (see Link below).
>   # ethtool -N $DEV rx-flow-hash udp4 sdfn
>   # ethtool -N $DEV rx-flow-hash udp6 sdfn
>   # python toeplitz.py | grep -E "^# Totals"
> 
> Without patch:
>   # Totals: pass:0 fail:12 xfail:0 xpass:0 skip:0 error:0
> 
> With patch:
>   # Totals: pass:12 fail:0 xfail:0 xpass:0 skip:0 error:0
> 
> Link: https://lore.kernel.org/intel-wired-lan/20260119084511.95287-5-takkozu@amazon.com/
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Changelog:
>    v2:
>      - Fix max-line-length by removing unnecessary comment
>    v1: https://lore.kernel.org/intel-wired-lan/20260119175922.199950-1-kohei@enjuk.jp/
> ---
>   drivers/net/ethernet/intel/igb/e1000_82575.h | 21 ++++++++++++++++++++
>   drivers/net/ethernet/intel/igb/igb_main.c    | 18 +++++++++++++----
>   2 files changed, 35 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.h b/drivers/net/ethernet/intel/igb/e1000_82575.h
> index 63ec253ac788..9e696d55e512 100644
> --- a/drivers/net/ethernet/intel/igb/e1000_82575.h
> +++ b/drivers/net/ethernet/intel/igb/e1000_82575.h
> @@ -87,6 +87,27 @@ union e1000_adv_rx_desc {
>   	} wb;  /* writeback */
>   };
>   
> +#define E1000_RSS_TYPE_NO_HASH		 0
> +#define E1000_RSS_TYPE_HASH_TCP_IPV4	 1
> +#define E1000_RSS_TYPE_HASH_IPV4	 2
> +#define E1000_RSS_TYPE_HASH_TCP_IPV6	 3
> +#define E1000_RSS_TYPE_HASH_IPV6_EX	 4
> +#define E1000_RSS_TYPE_HASH_IPV6	 5
> +#define E1000_RSS_TYPE_HASH_TCP_IPV6_EX	 6
> +#define E1000_RSS_TYPE_HASH_UDP_IPV4	 7
> +#define E1000_RSS_TYPE_HASH_UDP_IPV6	 8
> +#define E1000_RSS_TYPE_HASH_UDP_IPV6_EX	 9
> +
> +#define E1000_RSS_TYPE_MASK		GENMASK(3, 0)
> +
> +#define E1000_RSS_L4_TYPES_MASK	\
> +	(BIT(E1000_RSS_TYPE_HASH_TCP_IPV4)	| \
> +	 BIT(E1000_RSS_TYPE_HASH_TCP_IPV6)	| \
> +	 BIT(E1000_RSS_TYPE_HASH_TCP_IPV6_EX)	| \
> +	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV4)	| \
> +	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV6)	| \
> +	 BIT(E1000_RSS_TYPE_HASH_UDP_IPV6_EX))
> +
>   #define E1000_RXDADV_HDRBUFLEN_MASK      0x7FE0
>   #define E1000_RXDADV_HDRBUFLEN_SHIFT     5
>   #define E1000_RXDADV_STAT_TS             0x10000 /* Pkt was time stamped */
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 8dab133296ca..ef0cbf532716 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -8824,10 +8824,20 @@ static inline void igb_rx_hash(struct igb_ring *ring,
>   			       union e1000_adv_rx_desc *rx_desc,
>   			       struct sk_buff *skb)
>   {
> -	if (ring->netdev->features & NETIF_F_RXHASH)
> -		skb_set_hash(skb,
> -			     le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> -			     PKT_HASH_TYPE_L3);
> +	u16 rss_type;
> +
> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
> +		return;
> +
> +	rss_type = le16_to_cpu(rx_desc->wb.lower.lo_dword.pkt_info) &
> +		   E1000_RSS_TYPE_MASK;
> +
> +	if (!rss_type)
> +		return;
> +
> +	skb_set_hash(skb, le32_to_cpu(rx_desc->wb.lower.hi_dword.rss),
> +		     (E1000_RSS_L4_TYPES_MASK & BIT(rss_type)) ?
> +		     PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3);
>   }
>   
>   /**

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
