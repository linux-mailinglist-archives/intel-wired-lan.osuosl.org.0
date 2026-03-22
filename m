Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJsdNhtQv2lU2AMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Mar 2026 03:12:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAEF2E7F19
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Mar 2026 03:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CFD481B53;
	Sun, 22 Mar 2026 02:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYCN9qQr6Ixl; Sun, 22 Mar 2026 02:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7613481985
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774145559;
	bh=dG3xkxQxc2r4hrUA4bCorikr9wEg+eMEMtsgK/HEPog=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=U538pwTFByBkLcpcHZ8J2EKhQ72Im5fhfxH5qZrCAf3rdjPW6MQwOCIiu8vTFnYOC
	 zM2Pjz06q6Mb6J0MrBslWqJk50WmyC7Yh0/EV3dVZIhq2290yjZYAUG5YjZG0bw6OS
	 VHa69Wz9Q9PgvZyfpGI8LMY6mh2DYZ1vdRbe0EBb+37AoxPKk2aIDVBmie6IC152b0
	 sZuzOunc0m+h50ECf5WFu5E4QBaH/AdW7O94tI7YnJzobD+poLyT9PDas1gEqQwouA
	 xWnYQ8sbTjt9K18X7szrbaUXYJgyyCVoYRlRJAw/hjwYbUHTxqgASv0PxRsbHSFVMI
	 tmFcHUl9EDAtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7613481985;
	Sun, 22 Mar 2026 02:12:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 28C9025C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2026 02:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11D9E8176A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2026 02:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Buv_N6P12byA for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Mar 2026 02:12:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC41E816EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC41E816EF
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC41E816EF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Mar 2026 02:12:35 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-b980b35534eso529583666b.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2026 19:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774145554; cv=none;
 d=google.com; s=arc-20240605;
 b=iQJVPacI/3GJ7SnFYPS0mBgBI6hQi/gs4RywG49Ih96iy6LjoSQQOHc5wEaW4IDjqr
 8kAtRimiv94DohO19NDQ+1m2kNKU/L8aZyyvsoTcJ4fEg+an7tAhDsAVYmZb9ZtIIDbw
 E1B7smHGqbhsWVoiAQgfjcb7Vl4y7qt2nDPR7lb6AD/dNQnK2sAZ6bYn1ciGTnre8H/9
 JxHfFB2K6NNjNSPhKB9GXCcGIH9Tt2VKxfONk+jqekAxthr3NLBl61nnkwyxSzf2XG2w
 nZcILgk1ijv2piw4GqvOp/RHr1hF2iz6JBUeIQlLEynWW1+AVrEOt206luG3HOTABdTT
 RkOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=dG3xkxQxc2r4hrUA4bCorikr9wEg+eMEMtsgK/HEPog=;
 fh=VLwCpHc8eOeLxtu0Nr2PtTY+26bkbHycdsfiUeqsZgw=;
 b=jkoAb5ADZeTxdFkFVVheCiHCgCRi+eee0KSXa1zsOfd8dRHow4xb1TX/alhrSGchcz
 X1EMYKEij7Q9qES21Db+9BqJPH+/fAWwyAO9hptFIYnF14IcnsmifqvS2+Fayg876IU1
 vJGNzmhQqdpElIL0F6elbbK6ySmh5Q1VJcTmuYXUSgOgXNTzISj/yGFB+LC2TpjZJ5d0
 d5Ug81z7IDRAJcsBtE33EJv5Iz1Ujl2e3J4d4yW2fpDnJb2gIOYJD27GfIUH/kW5UM0v
 mFCDWOLkYScZtdGo4/7GSOIZD28BFsJTUFIL6gZuIwBp0Re70hgwGqRF0bO9hqxY0bCD
 J4nA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774145554; x=1774750354;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dG3xkxQxc2r4hrUA4bCorikr9wEg+eMEMtsgK/HEPog=;
 b=CmUK45qfYusV/Zia+quDjTbpaJRhzmxw102qANr5KHoLj8Y/uA3Wu+0V09PuXooDuX
 RAWgn83NmUe4Hbq8YHEGLKvS+ctWdNpKtsMi7YS50OqjpqJdSTVdoR6ELTiWDX2O9Zo5
 cgJxl+e2YDWmL5O6iaPN5N9oluLSqUB5t5jk1XlzGFaFi6upYgkGWlUv5jB1TimlD3UY
 xoImPS18wZ58j6d7pkLgGAujyb9e4YKLj5tVWIgMEBore/XKmxfq2cJiW6w8gCcFYfKL
 XSCUdgeBcXrWKqYAC6VLJAoMfP479jcYskVCA9g9QeMbpzliPoQp1Ozt3V3JKnKupTcw
 TCqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXvZiF/1bR6VPZN0C1N1beocvHIzOGwia2nRFolIqTrhGjRzoxy9n0JzKpJ/AlRifR3Sgn2YZIYpnfa/KtU7cE=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy+t65LbdnAGj2XM7dZKPhayN75Xr5Ynm7jwtTcj40a2S0P2ItF
 FSmarvsuMOIfQOy/71KIW5WiBALIkvIw9N+LqeqXoOw+/Rwk0q0WxDt3JvmCqQ23fk66Vek6O2g
 77DMka9xA0D1qPUpPjyPtZ2SNmKDfd20=
X-Gm-Gg: ATEYQzzuePkThVVNl6jXFDIolp+/wcnhW0huqlSHxBarKWL3FJPiq28QHAeSAoBdze+
 xsuguMtV0gJskKQdV2zS8/Qqu+gOtMQzb5oIMPuk3ZkZaol7jeo9TNJYG3u2h4BUdhBdh+tMqtD
 TySxTirqfp/E96emsmXld0yL/3EBqhBN3M+dEePEZGaxecFUhcvHgMdUphShOepJTkuvF9pu9oH
 0zFaJlBr5XOtTkwSDXmm9XXTQH9sRHoZ0hwHprOwINbYw/VRNoVD/HrcFIHaP/rnFYABK1xNQ6b
 6/6OeFY=
X-Received: by 2002:a17:907:982:b0:b97:f8d4:2fe7 with SMTP id
 a640c23a62f3a-b980fb05f2dmr787025166b.32.1774145553392; Sat, 21 Mar 2026
 19:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260320132356.63194-1-teknoraver@meta.com>
 <20260320132356.63194-2-teknoraver@meta.com>
 <1d708196-7b89-431f-bb17-177564196894@gmail.com>
In-Reply-To: <1d708196-7b89-431f-bb17-177564196894@gmail.com>
From: Matteo Croce <technoboy85@gmail.com>
Date: Sun, 22 Mar 2026 03:11:56 +0100
X-Gm-Features: AaiRm53ww1-ptJbyTPXmgTKJ3HBDK88IzK0UHxVqUtqlnjypi32Zi5Q0XiIBTGw
Message-ID: <CAFnufp0LRVxwh50cLrg=hUe6itshTqrNy53HkvBWk6MQ7uL0KA@mail.gmail.com>
To: Mohsin Bashir <mohsin.bashr@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, netdev@vger.kernel.org,
 bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774145554; x=1774750354; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=dG3xkxQxc2r4hrUA4bCorikr9wEg+eMEMtsgK/HEPog=;
 b=gjG0NNZrwZZt0ClywcCFjuMcGAjM3xu+ItoVYC+ItQwJrj8yDNnfSfdHqhW3Hyw5fj
 VHA4mPuLp6ckciF75hmxGpT/9Orq8WvGE48qmvS/4ArPuDGszhzhXKdFiySuhvkR8wJ4
 u951e1W2eEyQ4FFRXpJn/Iqo3c95J+/2KNSIlB1tjcX9hGzAM6iEBqVB1VgAKP7nd44W
 pgeBRpfDecjU/HctrzZw8bPYV+Gg/4UfguQDG+30UBs2RrILsZcp94DZb64ngK2Qufuq
 z2/5YnX/YxqPbmwfjnzuBdplAiMVcvpthpeTxVQeu48VBKvBqf4MbYF2B0xRDyuMvAcr
 v01g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gjG0NNZr
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mohsin.bashr@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mohsinbashr@gmail.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: CCAEF2E7F19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno ven 20 mar 2026 alle ore 22:23 Mohsin Bashir
<mohsin.bashr@gmail.com> ha scritto:
>
>
> > + * e1000_xdp_xmit_ring - transmit an XDP frame on the TX ring
> > + * @adapter: board private structure
> > + * @tx_ring: Tx descriptor ring
> > + * @xdpf: XDP frame to transmit
> > + *
> > + * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
> > + **/
> > +static int e1000_xdp_xmit_ring(struct e1000_adapter *adapter,
> > +                            struct e1000_ring *tx_ring,
> minor nit: alignment issue
>

Uh funny that checkpatch.pl doesn't notice it.

> > +             if (unlikely((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
> > +                          !(netdev->features & NETIF_F_RXALL))) {
> > +                     page_pool_put_full_page(adapter->page_pool,
> > +                                             buffer_info->page, true);
> > +                     buffer_info->page = NULL;
> > +                     goto next_desc;
> > +             }
> > +
> > +             /* adjust length to remove Ethernet CRC */
> > +             if (!(adapter->flags2 & FLAG2_CRC_STRIPPING)) {
> > +                     if (netdev->features & NETIF_F_RXFCS)
> > +                             total_rx_bytes -= 4;
>
> Looks like, total_rx_bytes can go negative here since it is not updated
> after being initialized to 0. Is this expected?
>

No, that's a bug. I'll count the crc size separately and take care of it.

>
> > -static inline void e1000_rx_hash(struct net_device *netdev, __le32 rss,
> > -                              struct sk_buff *skb)
> > -{
> > -     if (netdev->features & NETIF_F_RXHASH)
> > -             skb_set_hash(skb, le32_to_cpu(rss), PKT_HASH_TYPE_L3);
> > -}
> > -
>
> The function was just moved. Looks like an unrelated change?
>
> > +/**
> > + * e1000_xdp_setup - add/remove an XDP program
> > + * @netdev: network interface device structure
> > + * @bpf: XDP program setup structure
> > + **/
> > +static int e1000_xdp_setup(struct net_device *netdev, struct netdev_bpf *bpf)
> > +{
> > +     struct e1000_adapter *adapter = netdev_priv(netdev);
> > +     struct bpf_prog *prog = bpf->prog, *old_prog;
> > +     bool running = netif_running(netdev);
> > +     bool need_reset;
> > +
> > +     /* XDP is incompatible with jumbo frames */
> > +     if (prog && netdev->mtu > ETH_DATA_LEN) {
> > +             NL_SET_ERR_MSG_MOD(bpf->extack,
> > +                                "XDP is not supported with jumbo frames");
> > +             return -EINVAL;
> > +     }
> > +
> > +     /* Validate frame fits in a single page with XDP headroom */
> > +     if (prog && netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
> > +         XDP_PACKET_HEADROOM > PAGE_SIZE) {
> > +             NL_SET_ERR_MSG_MOD(bpf->extack,
> > +                                "Frame size too large for XDP");
> > +             return -EINVAL;
> > +     }
> > +
> > +     old_prog = xchg(&adapter->xdp_prog, prog);
> > +     need_reset = (!!prog != !!old_prog);
> > +
> > +     /* Transition between XDP and non-XDP requires ring reconfiguration */
> > +     if (need_reset && running)
> > +             e1000e_close(netdev);
> > +
> > +     if (old_prog)
> > +             bpf_prog_put(old_prog);
> > +
> > +     if (!need_reset)
> > +             return 0;
> > +
> > +     if (running)
> > +             e1000e_open(netdev);
> > +
> > +     return 0;
> > +}
> > +
>
> If I am reading it correctly, this can be problematic (maybe with very
> small likelihood). If e1000e_open() fails here, we will still return
> success. How about the following?
>
> if (running) {
>      int err = e1000e_open(netdev);
>
>      if (err) {
>           /* Remove the XDP program since interface is down */
>           xchg(&adapter->xdp_prog, NULL);
>
>           return err;
>      }
> }
>

Makes sense.

I addressed all the comments and I'll send a v4 soon, thanks!

-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
