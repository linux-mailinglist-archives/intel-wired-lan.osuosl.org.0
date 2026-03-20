Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKF1IEdcwWlZSgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 16:29:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070132F656E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 16:29:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94CA582332;
	Mon, 23 Mar 2026 15:29:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 87oihESTYunh; Mon, 23 Mar 2026 15:29:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09E138232E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774279749;
	bh=cc7L1+/6dVTTAc1rDpaFmgif5bqTxN/xlHF2dS1giug=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RhrcSuiw8hanK0SDvXEh1Wij9qy17/ir13K3lmfQw3qytQO7ADZ1fUwWGb9PAYo0z
	 U5Caa4BeD1Ew+f2sHPXoPAYJFF1vWfypg8rbCbtWDSob+CJ+f6Mfsge230XpCkVc9E
	 2F3SOzoeSfMQMdzlUmAdR7vJLF9y2YLaeu4SrWNfGV3REkPJH+/0/rJiLWvsasYgQ/
	 PfWKSFgPY2esL9apSvAb5vdnG8jNmMV+8WHJNcGpxRcjJTaKowykRcfbcJy4rRjhku
	 gHl4W1vOhaVAnpqgGowr/NGpz7inkZ9cmAUZVjwGClW0PI3GQyyea7HyhkCNaVBhIa
	 4vDqc8X3DshtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09E138232E;
	Mon, 23 Mar 2026 15:29:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 22FD421F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0881E4039D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:23:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xp2Rk59YUyBl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 21:23:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::122a; helo=mail-dl1-x122a.google.com;
 envelope-from=mohsin.bashr@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 50053401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 50053401DF
Received: from mail-dl1-x122a.google.com (mail-dl1-x122a.google.com
 [IPv6:2607:f8b0:4864:20::122a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 50053401DF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 21:23:58 +0000 (UTC)
Received: by mail-dl1-x122a.google.com with SMTP id
 a92af1059eb24-128ebee22caso2010594c88.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 14:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774041837; x=1774646637;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cc7L1+/6dVTTAc1rDpaFmgif5bqTxN/xlHF2dS1giug=;
 b=XW+jCPQymwhIIy9Ioots1l6va4IEfIU2x7V78cVGoWuQN7kx8JRO8wDFE5Vlo1m1qj
 6PV/UTBMlZnxPITG++ZUKIbpIgGhVZwbwZ06hfZPRw+s7mxT2oPRjdWXeN8bzxa5vKLR
 j6DWYDizaj0hmlQFSwlhyP4VUnDfhmLzUNykahxX2xvmfuSY4yxopInVmjq42mYTQorB
 9g8mEHCyyc5sWn+UuU8DvAHoscKduWUwQHt0R14UhpgyUliTgOmNW/wucGE1GNJK5lvx
 Jh6IsoTJQu1vyr0IURtK1/i9mDblnHvdKA9cTZZgc7UlLWmr8ZcInFgyXLCIW7EsW9gm
 rvNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhT1XcirwkMgJ6b0MDxyHtOsOaI3lcT7WojApcf1176IW+4cTKxwKUrgnCJ85ZT6bGSMVOSiWhFWGVxYmKlts=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwCZ/cRZ2uZlcYEM2Hhffw6j+QqpHLgmIX8DABmWI7YZ/oVLEBF
 nU1b803q10D08/R8KJ3LpHB0iZc8WUI/uudzDy78TgHLoxF2dRU0RqtM
X-Gm-Gg: ATEYQzw2xP7b9Nw4SkLNB2CDw+jvw9F/SQjLObwzueR3l69yV5WpBbMT2oFzs2i2OqO
 H2zYXuNVGzYjgj72/RYv2bECLN3V6vmRjoG/vQxNPDGf8z+uw7tnTrDfmJpqbxe91cW0iJfDCZ5
 QMek9HCyG0/zGFyVUGRHTe2pUOqX8SLxmSBUNUw7XYQkJes33+NKj0VXFCqJw2HHuO18TDxtDlz
 yRGaD3x/USsZIOa0FlH/YKrgBBA+7qhjZbpR07xL7FTu+8Y/rgPPxgysWjoOABMDI+BrnG3XW4E
 c1cKLfkY3ck7CJzx2PbiRXVjFdNL2fUEWrdXGho5eQJKH0OaFsGsupObVF4DdnLlWRgRH/hJL+b
 DUuxsMNWRKwRdovCC/itHWVxCeWbpTq2ct9apDDVDoNjOL6a+gdyGKtVs6rgTkBaSxHpwjNEG/U
 1zLfKw1ZjPWjJK93qyBwgNtTMlfTOd2s2eBeHaQ105SXaTE0daZYRQNeHpR8pJ
X-Received: by 2002:a05:7022:1601:b0:124:8d7d:2d63 with SMTP id
 a92af1059eb24-12a726d018dmr2186785c88.35.1774041837053; 
 Fri, 20 Mar 2026 14:23:57 -0700 (PDT)
Received: from ?IPV6:2620:10d:c085:21c8::140f? ([2620:10d:c090:400::5:f9c1])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12a73407854sm3732795c88.8.2026.03.20.14.23.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2026 14:23:56 -0700 (PDT)
Message-ID: <1d708196-7b89-431f-bb17-177564196894@gmail.com>
Date: Fri, 20 Mar 2026 14:23:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matteo Croce <technoboy85@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
References: <20260320132356.63194-1-teknoraver@meta.com>
 <20260320132356.63194-2-teknoraver@meta.com>
Content-Language: en-US
From: Mohsin Bashir <mohsin.bashr@gmail.com>
In-Reply-To: <20260320132356.63194-2-teknoraver@meta.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 15:29:07 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774041837; x=1774646637; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cc7L1+/6dVTTAc1rDpaFmgif5bqTxN/xlHF2dS1giug=;
 b=J4VrDYpo6awlaBZsqNewBMlTe6DfzQuYHy4Ajh2icpjFH+5SdA0erZJMvM0tcEPKqS
 UWaHTRky57fJyGwSAUhyv7dULwnvD4alAaFr4/oH/aEe+j+oO63Q+RBaUildjt8+a9HA
 9Z/RzpQ5xWbKlOF6mTk0LXNqaTeJ0J5NVrdb4KkyU1gaEFYtWs5n6qBThj5jJfVncq5q
 mvOAsf993dqlfTPz7YtJg7cw1GISse5ZOzv32YsIqeJM1YShvDPG1qGPtzuXVizWLh14
 wLQHQ1U7oALyQWtn8w4BEW0vQsCHLB9KkUx91eL5hZw7PYpul04WxFQUGsQKOfpAIT73
 1OGQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=J4VrDYpo
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/2] e1000e: add basic XDP
 support
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[66];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:technoboy85@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[mohsinbashr@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mohsinbashr@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 070132F656E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> + * e1000_xdp_xmit_ring - transmit an XDP frame on the TX ring
> + * @adapter: board private structure
> + * @tx_ring: Tx descriptor ring
> + * @xdpf: XDP frame to transmit
> + *
> + * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
> + **/
> +static int e1000_xdp_xmit_ring(struct e1000_adapter *adapter,
> +			       struct e1000_ring *tx_ring,
minor nit: alignment issue

> +		if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
> +			     !(netdev->features & NETIF_F_RXALL))) {
> +			page_pool_put_full_page(adapter->page_pool,
> +						buffer_info->page, true);
> +			buffer_info->page = NULL;
> +			goto next_desc;
> +		}
> +
> +		/* adjust length to remove Ethernet CRC */
> +		if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
> +			if (netdev->features & NETIF_F_RXFCS)
> +				total_rx_bytes -= 4;

Looks like, total_rx_bytes can go negative here since it is not updated 
after being initialized to 0. Is this expected?


> -static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
> -				 struct sk_buff *skb)
> -{
> -	if (netdev->features & NETIF_F_RXHASH)
> -		skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
> -}
> -

The function was just moved. Looks like an unrelated change?

> +/**
> + * e1000_xdp_setup - add/remove an XDP program
> + * @netdev: network interface device structure
> + * @bpf: XDP program setup structure
> + **/
> +static int e1000_xdp_setup(struct net_device *netdev, struct netdev_bpf *bpf)
> +{
> +	struct e1000_adapter *adapter = netdev_priv(netdev);
> +	struct bpf_prog *prog = bpf->prog, *old_prog;
> +	bool running = netif_running(netdev);
> +	bool need_reset;
> +
> +	/* XDP is incompatible with jumbo frames */
> +	if (prog && netdev->mtu > ETH_DATA_LEN) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "XDP is not supported with jumbo frames");
> +		return -EINVAL;
> +	}
> +
> +	/* Validate frame fits in a single page with XDP headroom */
> +	if (prog && netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
> +	    XDP_PACKET_HEADROOM > PAGE_SIZE) {
> +		NL_SET_ERR_MSG_MOD(bpf->extack,
> +				   "Frame size too large for XDP");
> +		return -EINVAL;
> +	}
> +
> +	old_prog = xchg(&adapter->xdp_prog, prog);
> +	need_reset = (!!prog != !!old_prog);
> +
> +	/* Transition between XDP and non-XDP requires ring reconfiguration */
> +	if (need_reset && running)
> +		e1000e_close(netdev);
> +
> +	if (old_prog)
> +		bpf_prog_put(old_prog);
> +
> +	if (!need_reset)
> +		return 0;
> +
> +	if (running)
> +		e1000e_open(netdev);
> +
> +	return 0;
> +}
> +

If I am reading it correctly, this can be problematic (maybe with very 
small likelihood). If e1000e_open() fails here, we will still return 
success. How about the following?

if (running) {
     int err = e1000e_open(netdev);

     if (err) {
          /* Remove the XDP program since interface is down */
          xchg(&adapter->xdp_prog, NULL);

          return err;
     }
}

