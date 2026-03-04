Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DBnK6GlqGkYwQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 22:35:29 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1658020805B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 22:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4B7F810F3;
	Wed,  4 Mar 2026 21:35:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8GFfgU5MScf2; Wed,  4 Mar 2026 21:35:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CDD781773
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772660127;
	bh=oHwh5kWRHiqXFYFXI/fqBKZ24JxWXaGYGlZJiOK+k2g=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oa7exoFka7HlakTVhxAZ3wynKxt+4gdhgCn0nCefqo3/u4lHsXHFc1Z3GtHsapdZ6
	 29oTg4OpM/pLq6+0uyGf7ZQB94swW8N5QOcJbcCuKPGW/J5/e2U/AhO/bq1p/hmTcA
	 RfjzfejcbuDO33lSBuXPKNZtgxiKtLNIWs57F80hlFsxTurIUcHz4KiwI/BsPm5uWl
	 WnLKGbxSP9iP7KGJ+44QJ5lYvEXLkLBedDP9ZLKhXNiJSTzJy9vof813TdcpKf6iTL
	 xeEbwAc5dAp8ZK4/eMI2ukFX+2BudFTugkq7egjRsQ4AVp3idlF8FZjldfOE/IwqhG
	 2Yhz9tamOJu6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CDD781773;
	Wed,  4 Mar 2026 21:35:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9AAD425B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 21:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8062E608AB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 21:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykJcl07_DFib for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 21:35:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 85376608A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85376608A9
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85376608A9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 21:35:24 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-48336a6e932so45412445e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Mar 2026 13:35:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772660122; x=1773264922;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=oHwh5kWRHiqXFYFXI/fqBKZ24JxWXaGYGlZJiOK+k2g=;
 b=VsEaokDhasg+hM5+YF6IKwtz6bdcucf3nMCMxCCePeGUx8KPSIA3myFpzzSPheskZT
 sXVIG3eMrK7QCrYw6iNweziJrzSf6Kq9OiX5QZR4c85ZweMShbGS8sWFGNWsXvr1McD/
 YurOcU21drgiI2Suaeb/0v5cUX2eeOxtvMf8Jyyk5SkU/pq9Xy4J+lxS+QFZ48e7z/Du
 QYHBYCZZpK3aOOtjhTR3l1oc5rcjtF5Zv5i0boffB2gLdwS+dh5Y6MnowXLxxVFLznET
 X+P3Sj2oVJgeN2sNn2FaW5UuHO4wXc1PaU0ZCnuKzBZF/T0xbuYxP5i4mxWuxfHSKkCo
 07cg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXewot/Wc8nBtKd2V236gAVXSQUyxOMcMBmVroPNzGqR61PRVPpEvMzn3YR3ZN5R+Kzn1nkD9vMqqcqD76jkGI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx3EHeeZUKzq0ZqIVlRYNeE0+8P7esFZ33TS8qwSCH85+Vkva17
 CqylxyJWUIFd1P1rhdEo/2R9UrBS681eT1+ZsKT378rMJCUR5OOMME1D
X-Gm-Gg: ATEYQzzIVtIetMgPWUB5gZ4HzF2Vj666iZCb/uIMKTDTUQodvsPMFizys8m895XFHT1
 UNYV2RXh7i/+MmzPwDtuptjicNIOesOqc0bVeF14sId8X9cRuEpIYJlaKdFgj2X4Wn+/KkBVvPr
 qEzqnXQs4iSl1XNbK22fMtaCloR1PCCVQ0zFetGjtK9auDkZloNuP0FX5c0qzHLParfNPC7wY8j
 J03/CRB3UMSvX7oYHUJUTf9at7uy59JjYFQKYH5exT15tJBxq5Vx1vnS1MfELEmpHhfs+0Cu1oH
 eQQhAkLMXV6z2ejPhAGD/8/rQ3uhAV8O58k3WxAnNGBcPjDW1EM+BNfleGP3gpQ11iXvjIyM9Er
 RIdTsqWnRSnqNuuQsghpyiwW3OICOqjbKIZwuT5DE3297vwG1x1bWw+v8xvU7WDSUztO6P+to2S
 3ITnU6ARwT+ihP884zICI3n9XUH4XbKR8fPZdpH4xu58bWX+59HSuxepIshx1BqMzHeVSJM9FmB
 jc=
X-Received: by 2002:a05:600c:828d:b0:483:ad56:8d16 with SMTP id
 5b1f17b1804b1-4851983a7fcmr55969805e9.6.1772660122112; 
 Wed, 04 Mar 2026 13:35:22 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4851883a007sm80403085e9.2.2026.03.04.13.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2026 13:35:21 -0800 (PST)
Date: Wed, 4 Mar 2026 21:35:20 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexander
 Lobakin <aleksander.lobakin@intel.com>, Simon Horman <horms@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Natalia Wochtman
 <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <20260304213520.17e16331@pumpkin>
In-Reply-To: <20260304160345.1340940-5-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
 <20260304160345.1340940-5-larysa.zaremba@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772660122; x=1773264922; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oHwh5kWRHiqXFYFXI/fqBKZ24JxWXaGYGlZJiOK+k2g=;
 b=CsTQ3ZJKe4B6Y9gjlSnj6mr8ZPNigAHkH7tQZ1UtYiy3749/Pok0NudpYzxLb2eogo
 7dfc/lVHR1NrBXNv0RO+anrYibm5aV+hlZiijKswuoMb8lSHm2n0LA8iaRasic5YtgGL
 tB2VU8j3e3CAeaaLxT5maOD6e7DM79AWZRh40ONM0FepqM1RuIV3VOIpxaDx2fVTqWw/
 CTZUDEu+bOz7tPpAAbgl6yUpmdXo6kf41q/c2n4xgoZgdi7jEWmSwVtb2C1ZUxBBoYnk
 lyzUlPmpJgF1SOQv7+dKU0i7NEiQZesqD4cmlVPkRRzwGkkEahnuRdaujkJNdws3mTyx
 Q0ag==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=CsTQ3ZJK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 04/10] ixgbevf: branch
 prediction and cleanup
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
X-Rspamd-Queue-Id: 1658020805B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,osuosl.org:dkim,intel.com:email];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed,  4 Mar 2026 17:03:36 +0100
Larysa Zaremba <larysa.zaremba@intel.com> wrote:

> Add likely/unlikely markers for better branch prediction. While touching
> some functions, cleanup the code a little bit.
> 
> This patch is not supposed to make any logic changes aside from making
> total_rx_bytes and total_rx_packets more correlated.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 29 +++++++++----------
>  1 file changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> index 5a270dd2c7aa..4619f2bea1ab 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> @@ -570,7 +570,7 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
>  	u16 ntu = rx_ring->next_to_use;
>  
>  	/* nothing to do or no valid netdev defined */
> -	if (!cleaned_count || !rx_ring->netdev)
> +	if (unlikely(!cleaned_count || !rx_ring->netdev))
>  		return;
>  
>  	rx_desc = IXGBEVF_RX_DESC(rx_ring, ntu);
> @@ -586,7 +586,7 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
>  
>  		rx_desc++;
>  		ntu++;
> -		if (unlikely(ntu == rx_ring->count)) {
> +		if (unlikely(ntu == fq.count)) {
>  			rx_desc = IXGBEVF_RX_DESC(rx_ring, 0);
>  			ntu = 0;
>  		}
> @@ -823,7 +823,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  
>  		rx_desc = IXGBEVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
>  		size = le16_to_cpu(rx_desc->wb.upper.length);
> -		if (!size)
> +		if (unlikely(!size))
>  			break;
>  
>  		/* This memory barrier is needed to keep us from reading
> @@ -855,7 +855,7 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  		}
>  
>  		/* exit if we failed to retrieve a buffer */
> -		if (!xdp_res && !skb) {
> +		if (unlikely(!xdp_res && !skb)) {

I'd check that generates something sensible.
Using unlikely on multi-term conditionals doesn't always do
something sensible.

	David

>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>  			break;
>  		}
> @@ -867,21 +867,19 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  			continue;
>  
>  		/* verify the packet layout is correct */
> -		if (xdp_res || ixgbevf_cleanup_headers(rx_ring, rx_desc, skb)) {
> +		if (xdp_res ||
> +		    unlikely(ixgbevf_cleanup_headers(rx_ring, rx_desc, skb))) {
>  			skb = NULL;
>  			continue;
>  		}
>  
> -		/* probably a little skewed due to removing CRC */
> -		total_rx_bytes += skb->len;
> -
>  		/* Workaround hardware that can't do proper VEPA multicast
>  		 * source pruning.
>  		 */
> -		if ((skb->pkt_type == PACKET_BROADCAST ||
> -		     skb->pkt_type == PACKET_MULTICAST) &&
> -		    ether_addr_equal(rx_ring->netdev->dev_addr,
> -				     eth_hdr(skb)->h_source)) {
> +		if (unlikely((skb->pkt_type == PACKET_BROADCAST ||
> +			      skb->pkt_type == PACKET_MULTICAST) &&
> +			     ether_addr_equal(rx_ring->netdev->dev_addr,
> +					      eth_hdr(skb)->h_source))) {
>  			dev_kfree_skb_irq(skb);
>  			continue;
>  		}
> @@ -889,13 +887,14 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  		/* populate checksum, VLAN, and protocol */
>  		ixgbevf_process_skb_fields(rx_ring, rx_desc, skb);
>  
> +		/* probably a little skewed due to removing CRC */
> +		total_rx_bytes += skb->len;
> +		total_rx_packets++;
> +
>  		ixgbevf_rx_skb(q_vector, skb);
>  
>  		/* reset skb pointer */
>  		skb = NULL;
> -
> -		/* update budget accounting */
> -		total_rx_packets++;
>  	}
>  
>  	/* place incomplete frames back on ring for completion */

