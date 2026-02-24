Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPedMfnlnWlDSgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:55:05 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CC018ACAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 18:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8182D60EB4;
	Tue, 24 Feb 2026 17:55:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cmF70fa4Q2w7; Tue, 24 Feb 2026 17:55:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 097F160E18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771955703;
	bh=PzIMItAzXY421iLOa91adHSebAgq8xRhhf8cLoLTUJw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ES7theAmc6ZSKtFv/2b/Vzxw2lNzwz9epFMSNGnqaV9bVklq8dbQwiBJzEmucKGNV
	 FNPv+OkWBvU3UWpA2lXwTvIbTrZd8rAtJC4V/db6LqLKGVKGRGSq8uGoujrIth3Nfe
	 UTpuKysduu0xiHUdsGLsEBGscEaUTZbRShvGJ5ByiLeiGaor2Q3+gWk99sYamz4Mo9
	 K413f19nX7hbydzyynLUdpMfQ93UWNvnXSZxtqhtfXAB4zUCHdURoaNMp5tCidYltq
	 /UbWR43PVBycNywraMlLhObOP/5B5nm+SksLx70MrS1N9JhrTJioKES4lA6ptKDFYu
	 pigu5CwnHyhIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 097F160E18;
	Tue, 24 Feb 2026 17:55:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 50BF2249
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 422C240B4B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:55:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VVfO5RCawlBv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 17:55:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F46940B48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F46940B48
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F46940B48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 17:55:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 19A034450E;
 Tue, 24 Feb 2026 17:55:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B90C116D0;
 Tue, 24 Feb 2026 17:54:56 +0000 (UTC)
Date: Tue, 24 Feb 2026 17:54:54 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Message-ID: <aZ3l7sqKmz6fvmRp@horms.kernel.org>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
 <20260223095222.3205363-7-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223095222.3205363-7-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1771955700;
 bh=8VrcD46dycy0DmTlHRXutqJ3iyRT/XCLxmuZYonmw+8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cJObRucUqbih7KkJPWJZwIp6ChpzPJMBFVAfVkOFpiFv7k73CVjDP5LQImwP1kQze
 ZJvYCfiaUywKjhFQGmIjBKstSyBKa6IzWOtX8D3miyxSrQjBOqiZpGuSUk7LcBJxwg
 QDfKE5mtlAc1XNk56axpFGOdKWwaVT6+wTI9YXFeqyBHBMpHL8OXzYxEGINmUFC4S0
 gFBx31dknflFgj/OxegwmafHV6iZMOwROmWt/YkAr+Z2Lcrt3YG7zPaln+naa/+5XI
 25UcZGIzHSz2Cu6BAfrHLNm+ZSw5wLZ1yiLgZaNKMWYFB7a5y8UZTgBVaIGVjM7Bv8
 mrf/VP6SCXvOQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=cJObRucU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/10] ixgbevf: XDP_TX in
 multi-buffer through libeth
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,horms.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D5CC018ACAD
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 10:52:13AM +0100, Larysa Zaremba wrote:

...

> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> index eada53c57fcf..67d10e6e9910 100644
> --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> @@ -82,20 +82,22 @@ struct ixgbevf_ring {
>  	struct net_device *netdev;
>  	struct bpf_prog *xdp_prog;

...

> diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c

...

> @@ -784,11 +865,19 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
>  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
>  	struct ixgbevf_adapter *adapter = q_vector->adapter;
>  	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
> +	LIBETH_XDP_ONSTACK_BULK(xdp_tx_bulk);
>  	LIBETH_XDP_ONSTACK_BUFF(xdp);
> +	u32 cached_ntu;
>  	bool xdp_xmit = false;
>  	int xdp_res = 0;
>  
>  	libeth_xdp_init_buff(xdp, &rx_ring->xdp_stash, &rx_ring->xdp_rxq);
> +	libeth_xdp_tx_init_bulk(&xdp_tx_bulk, rx_ring->xdp_prog,
> +				adapter->netdev, adapter->xdp_ring,
> +				adapter->num_xdp_queues);

Hi Larysa,

Sparse flags that libeth_xdp_tx_init_bulk() expects xdp_prog to be managed
using __rcu, but that is not the case for rx_ring->xdp_prog.

  .../ixgbevf_main.c:875:9: error: incompatible types in comparison expression (different address spaces):
  .../ixgbevf_main.c:875:9:    struct bpf_prog [noderef] __rcu *
  .../ixgbevf_main.c:875:9:    struct bpf_prog *

...
