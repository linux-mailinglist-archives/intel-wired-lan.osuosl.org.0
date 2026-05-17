Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF+vGyJ7CWo4cAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 10:24:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 560A555FF13
	for <lists+intel-wired-lan@lfdr.de>; Sun, 17 May 2026 10:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD0FE40020;
	Sun, 17 May 2026 08:23:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KYjUGvHHLRH1; Sun, 17 May 2026 08:23:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F0A5427DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779006237;
	bh=lZMWlAD7UMdgNmi5yOT8j2c/gJwIvFxMSRUBkRB2Mqk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U7MlsTIINnMWQRRSADBW2HxXpscqcKMjgQQNARC+6GrtDcjEAR9wFEDy79EwpYgA0
	 /PVkBm0qGd3bViklby17p45KaIPjM3VOHAIKACG/8tMlCtXqh3QIno5pIC91/47HZK
	 8SWC8KsiSMdfnufRg56cx7ST2j8CMcgvVQiNYHLEQP6NdvaD4/FdfhVmko0A4yaXR1
	 jOGsIRfjK9mza8kj8SXO7F/XihQ0JAhw5ffNOREETHmGIMjZOPd1CANHBFjIfCQz98
	 lc4grk6nGZpVQfbTFCjgQlXBmnLxpnDAjpWV067Cauk6rrJdfpmAPQSpUlgYQLB7fP
	 97XyM6fa4jDGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F0A5427DD;
	Sun, 17 May 2026 08:23:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CB7C5265
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 08:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B136C427DA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 08:23:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6RMv9BMy7dC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 May 2026 08:23:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C9588427D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9588427D8
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9588427D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 May 2026 08:23:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3F0BC4412A;
 Sun, 17 May 2026 08:23:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2BC6C2BCB0;
 Sun, 17 May 2026 08:23:52 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: michal.swiatkowski@linux.intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, aleksandr.loktionov@intel.com
Date: Sun, 17 May 2026 09:23:25 +0100
Message-ID: <20260517082323.185010-3-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260512084729.1338557-2-michal.swiatkowski@linux.intel.com>
References: <20260512084729.1338557-2-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1779006234;
 bh=Hpyx0w5s96BcUvBNDfdPwJs5WQMQWftVXYhbXoUHUYk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OD5QpCS7k52/HERNxW8kx+zZFX5KQke05Ugvh+t9lHt0naSVm1L73FjGVMkaobb/Q
 7u2ReGQJ4UsWJEVLczPrGGkpxJjYfp6S2xG3n0J+b26VVA7+7x/vmlBMR6cHzmbnRm
 s7TMoJUr0uj6OH1z/6hjsVv7MC3KfIVzfjdNMVaNOZB+cUfQB17+Oh6nVIYMuW8KNC
 w+Io03+Op0k3zPikqNIQyKsQ6PJySetAi7U8zvliSDdOBVdmAW8c9SXCrFHvR2erCp
 goa3bW31mxdqjbqGm0AjePgt+CC4X+qvZMTH73+rxYowr/GyaGRAlll0nxzQr1gLQS
 3z8qzzhHHFN8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OD5QpCS7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/4] ice: pass the return
 value of skb_checksum_help()
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
X-Rspamd-Queue-Id: 560A555FF13
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,sashiko.dev:url,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://netdev-ai.bots.linux.dev/sashiko/

Simon says:
There is also an AI-generated review of this patch available on sashiko.dev
However I believe that can be treated in the context of possible follow-up.

---
ice: pass the return value of skb_checksum_help()

This patch propagates the return value of skb_checksum_help() back to
the caller and consolidates the software checksum fallback path under a
single checksum_sw_fb label in ice_tx_csum().

> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 4ca1a0602307..c04c5856dad6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1654,7 +1654,7 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  			ret = ipv6_skip_exthdr(skb, exthdr - skb->data,
>  					       &l4_proto, &frag_off);
>  			if (ret < 0)
> -				return -1;
> +				goto checksum_sw_fb;
>  		}
>  
>  		/* define outer transport */
> @@ -1673,11 +1673,7 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  			l4.hdr = skb_inner_network_header(skb);
>  			break;
>  		default:
> -			if (first->tx_flags & ICE_TX_FLAGS_TSO)
> -				return -1;
> -
> -			skb_checksum_help(skb);
> -			return 0;
> +			goto checksum_sw_fb;
>  		}
>  
>  		/* compute outer L3 header size */

[ ... ]

> @@ -1736,7 +1732,7 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  			ipv6_skip_exthdr(skb, exthdr - skb->data, &l4_proto,
>  					 &frag_off);
>  	} else {
> -		return -1;
> +		goto checksum_sw_fb;
>  	}

[Low]

In the encapsulated branch, when the inner IP version is neither 4 nor 6
the new behaviour is to jump to checksum_sw_fb instead of unconditionally
returning -1. Before this patch the non-TSO path also bailed via
return 0 after skb_checksum_help(), and the caller would not emit a
context descriptor for that packet. After this patch the encapsulation
block has already populated off->cd_tunnel_params and set
off->cd_qw1 |= ICE_TX_DESC_DTYPE_CTX:

	/* record tunnel offload values */
	off->cd_tunnel_params |= tunnel;

	off->cd_qw1 |= (u64)ICE_TX_DESC_DTYPE_CTX;

If skb_checksum_help() then returns 0, ice_tx_csum() returns 0 and
ice_xmit_frame_ring() will still build a Tx context descriptor with the
tunnel parameters even though no L3/L4 offload bits ever get programmed
into the data descriptor.

Is that descriptor pair intentional for these malformed encapsulated
packets, or should the encapsulated default case clear the tunnel state
(or just return -1) before falling through to the software fallback?

> @@ -1789,15 +1785,17 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
>  		break;
>  
>  	default:
> -		if (first->tx_flags & ICE_TX_FLAGS_TSO)
> -			return -1;
> -		skb_checksum_help(skb);
> -		return 0;
> +		goto checksum_sw_fb;
>  	}
>  
>  	off->td_cmd |= cmd;
>  	off->td_offset |= offset;
>  	return 1;
> +
> +checksum_sw_fb:
> +	if (first->tx_flags & ICE_TX_FLAGS_TSO)
> +		return -1;
> +	return skb_checksum_help(skb);
>  }
