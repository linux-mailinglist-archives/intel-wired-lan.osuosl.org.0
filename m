Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6213D81EFD4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Dec 2023 16:43:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7792560FD0;
	Wed, 27 Dec 2023 15:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7792560FD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703691824;
	bh=TBCXKxvUXWJQToqFmz1xAaXGNoJI0qbk9JjCq2X05Fg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WETcQPFRcTSQovQi4Zfg9vQta3YewIb1vH19yZBE/qifQVdVN5bz0FDyPJFeNNUEj
	 26eIPqV0pd9ldu5LoTL3oMZ7G3c7S/o/AqYXdM0+ND0piDwgpA8H12Q6P8/lxc+HmV
	 ajKpFtUJAOjp5dAxBrUqymofE2lDVYCQJf/fnjOZFOlMLGgJU0HzkxPNAtqiYYjnfi
	 C1V4erGh+qcGFhCLQw949C//fBP0Q3bxPPlefY516GJVAtCXjXOJloJPIdZUrQywYz
	 hiJefOMlqcsIUAtGeYihBQoFku9V0UFz/xVLvcVMkioFEE3XfVGx3HYCpeXvd29EJD
	 pH4MDpHjRN1JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MFjk0fnBKmr4; Wed, 27 Dec 2023 15:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B86760FCE;
	Wed, 27 Dec 2023 15:43:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B86760FCE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 305A81BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08FD74011B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08FD74011B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V4rNY90HuypY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Dec 2023 15:43:36 +0000 (UTC)
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com
 [IPv6:2607:f8b0:4864:20::729])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72A91400B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 15:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72A91400B9
Received: by mail-qk1-x729.google.com with SMTP id
 af79cd13be357-781048954d9so454090885a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Dec 2023 07:43:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703691815; x=1704296615;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=TBCXKxvUXWJQToqFmz1xAaXGNoJI0qbk9JjCq2X05Fg=;
 b=p9bwvUkfy+odpYfcaI0gajkPHDFNDqjp8BoUzqsO/D5RXwzhbfRrLhL9Qd9iW0bdz1
 rcHQTAL7xiZ65JEeRxQCb1L9Bn2/Vx8qDu2t5K8IDVfvIR7ks2pccQdiUW1I00jyyaix
 WXWvfC7rUqG7noD1KRpDDAkOFI6egW/qov1N0t1c7XeecUVR8MIaoWhY77w+l11ypP2f
 7COYbgZ0CcSWTuVPY5BgfHjAFvmnLb3q9Q8hJMvTkKfDgyLOfECarj/sUSkQfwD1RBr6
 OyuHInzuJzxb+VJXTDaFZJI9jXO8xmF04bkRG5lkN07A9WuRGiW+mZ5ajyLQU8Xolgd8
 NJuw==
X-Gm-Message-State: AOJu0YyRzisIOf2Mk5wC8qDL5JS2f1R8/bdCQzTN1Qv3hNHFRKg6sgPT
 OtnzBpMWpMKa/V0dRXKdfeg=
X-Google-Smtp-Source: AGHT+IG9tJpj8kWpbPMBMwXnggcWk7l+AJHgsEEDNt2oG3A0S9U97AQlK74BQGim4xwZyRHz6paKoA==
X-Received: by 2002:a05:620a:f14:b0:781:65d9:ec8b with SMTP id
 v20-20020a05620a0f1400b0078165d9ec8bmr759485qkl.100.1703691815106; 
 Wed, 27 Dec 2023 07:43:35 -0800 (PST)
Received: from localhost (48.230.85.34.bc.googleusercontent.com.
 [34.85.230.48]) by smtp.gmail.com with ESMTPSA id
 h15-20020a05620a21cf00b007816608002asm227720qka.19.2023.12.27.07.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Dec 2023 07:43:34 -0800 (PST)
Date: Wed, 27 Dec 2023 10:43:34 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Message-ID: <658c46269aa52_a33e629442@willemb.c.googlers.com.notmuch>
In-Reply-To: <20231223025554.2316836-2-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
 <20231223025554.2316836-2-aleksander.lobakin@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1703691815; x=1704296615; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TBCXKxvUXWJQToqFmz1xAaXGNoJI0qbk9JjCq2X05Fg=;
 b=ackVL9o3bSWZdX644gQDHONrxKlKqo0YAaDSolZiJfT6Y8FLpC2vP7vwOP0OfvH/GT
 eOu4EcrefQ2PwG9o0BSWNyFd5r/PQCF2wKYXdkSzxNVBuHQmKWLSnF5jYsDLtQB2eBN+
 o31fLP2Qobj8pCjUGReOUCv2IMBl9lsXfDLr7F/i09rC1oKipCLUDz58uKTUEvENMx6e
 E/1c498VoENIT3lm1yaVIfBEAozvPh/RJeQ+TiTikGxhsKkn+gOKhhuvl6+H6TK7ULr6
 c7FlCxRd/tNRvd02XtUvC0/bEIDmh7rlGeXHQA2vANBUsZ11/FSkzb1TqQTOXjTmDmAt
 TpGA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ackVL9o3
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 01/34] idpf: reuse
 libie's definitions of parsed ptype structures
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:
> idpf's in-kernel parsed ptype structure is almost identical to the one
> used in the previous Intel drivers, which means it can be converted to
> use libie's definitions and even helpers. The only difference is that
> it doesn't use a constant table, rather than one obtained from the
> device.
> Remove the driver counterpart and use libie's helpers for hashes and
> checksums. This slightly optimizes skb fields processing due to faster
> checks.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/Kconfig            |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        |   2 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |   1 +
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  87 +++++++--------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 101 ++++++------------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  88 +--------------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  54 ++++++----
>  7 files changed, 110 insertions(+), 224 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index c7da7d05d93e..0db1aa36866e 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -378,6 +378,7 @@ config IDPF
>  	tristate "Intel(R) Infrastructure Data Path Function Support"
>  	depends on PCI_MSI
>  	select DIMLIB
> +	select LIBIE
>  	select PAGE_POOL
>  	select PAGE_POOL_STATS
>  	help
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 0acc125decb3..8342df0f4f3d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -385,7 +385,7 @@ struct idpf_vport {
>  	u16 num_rxq_grp;
>  	struct idpf_rxq_group *rxq_grps;
>  	u32 rxq_model;
> -	struct idpf_rx_ptype_decoded rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
> +	struct libie_rx_ptype_parsed rx_ptype_lkup[IDPF_RX_MAX_PTYPE];
>  
>  	struct idpf_adapter *adapter;
>  	struct net_device *netdev;
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index e1febc74cefd..6471158e6f6b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -7,6 +7,7 @@
>  #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>  
>  MODULE_DESCRIPTION(DRV_SUMMARY);
> +MODULE_IMPORT_NS(LIBIE);
>  MODULE_LICENSE("GPL");
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 8122a0cc97de..e58e08c9997d 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -636,75 +636,64 @@ static bool idpf_rx_singleq_is_non_eop(struct idpf_queue *rxq,
>   * @rxq: Rx ring being processed
>   * @skb: skb currently being received and modified
>   * @csum_bits: checksum bits from descriptor
> - * @ptype: the packet type decoded by hardware
> + * @parsed: the packet type parsed by hardware
>   *
>   * skb->protocol must be set before this function is called
>   */
>  static void idpf_rx_singleq_csum(struct idpf_queue *rxq, struct sk_buff *skb,
> -				 struct idpf_rx_csum_decoded *csum_bits,
> -				 u16 ptype)
> +				 struct idpf_rx_csum_decoded csum_bits,
> +				 struct libie_rx_ptype_parsed parsed)
>  {
> -	struct idpf_rx_ptype_decoded decoded;
>  	bool ipv4, ipv6;
>  
>  	/* check if Rx checksum is enabled */
> -	if (unlikely(!(rxq->vport->netdev->features & NETIF_F_RXCSUM)))
> +	if (!libie_has_rx_checksum(rxq->vport->netdev, parsed))
>  		return;
>  
>  	/* check if HW has decoded the packet and checksum */
> -	if (unlikely(!(csum_bits->l3l4p)))
> +	if (unlikely(!csum_bits.l3l4p))
>  		return;
>  
> -	decoded = rxq->vport->rx_ptype_lkup[ptype];
> -	if (unlikely(!(decoded.known && decoded.outer_ip)))
> +	if (unlikely(parsed.outer_ip == LIBIE_RX_PTYPE_OUTER_L2))
>  		return;
>  
> -	ipv4 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV4);
> -	ipv6 = IDPF_RX_PTYPE_TO_IPV(&decoded, IDPF_RX_PTYPE_OUTER_IPV6);
> +	ipv4 = parsed.outer_ip == LIBIE_RX_PTYPE_OUTER_IPV4;
> +	ipv6 = parsed.outer_ip == LIBIE_RX_PTYPE_OUTER_IPV6;
>  
>  	/* Check if there were any checksum errors */
> -	if (unlikely(ipv4 && (csum_bits->ipe || csum_bits->eipe)))
> +	if (unlikely(ipv4 && (csum_bits.ipe || csum_bits.eipe)))
>  		goto checksum_fail;
>  
>  	/* Device could not do any checksum offload for certain extension
>  	 * headers as indicated by setting IPV6EXADD bit
>  	 */
> -	if (unlikely(ipv6 && csum_bits->ipv6exadd))
> +	if (unlikely(ipv6 && csum_bits.ipv6exadd))
>  		return;
>  
>  	/* check for L4 errors and handle packets that were not able to be
>  	 * checksummed due to arrival speed
>  	 */
> -	if (unlikely(csum_bits->l4e))
> +	if (unlikely(csum_bits.l4e))
>  		goto checksum_fail;
>  
> -	if (unlikely(csum_bits->nat && csum_bits->eudpe))
> +	if (unlikely(csum_bits.nat && csum_bits.eudpe))
>  		goto checksum_fail;
>  
>  	/* Handle packets that were not able to be checksummed due to arrival
>  	 * speed, in this case the stack can compute the csum.
>  	 */
> -	if (unlikely(csum_bits->pprs))
> +	if (unlikely(csum_bits.pprs))
>  		return;
>  
>  	/* If there is an outer header present that might contain a checksum
>  	 * we need to bump the checksum level by 1 to reflect the fact that
>  	 * we are indicating we validated the inner checksum.
>  	 */
> -	if (decoded.tunnel_type >= IDPF_RX_PTYPE_TUNNEL_IP_GRENAT)
> +	if (parsed.tunnel_type >= LIBIE_RX_PTYPE_TUNNEL_IP_GRENAT)
>  		skb->csum_level = 1;
>  
> -	/* Only report checksum unnecessary for ICMP, TCP, UDP, or SCTP */
> -	switch (decoded.inner_prot) {
> -	case IDPF_RX_PTYPE_INNER_PROT_ICMP:
> -	case IDPF_RX_PTYPE_INNER_PROT_TCP:
> -	case IDPF_RX_PTYPE_INNER_PROT_UDP:
> -	case IDPF_RX_PTYPE_INNER_PROT_SCTP:
> -		skb->ip_summed = CHECKSUM_UNNECESSARY;
> -		return;
> -	default:
> -		return;
> -	}
> +	skb->ip_summed = CHECKSUM_UNNECESSARY;
> +	return;

Is it intentional to change from CHECKSUM_NONE to CHECKSUM_UNNECESSARY
in the default case?

I suppose so, as idpf_rx_csum (the splitq equivalent) does the same
(bar CHECKSUM_COMPLETE depending on descriptor bit).
