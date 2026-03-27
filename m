Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBRcNfLtxWlTDQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 03:39:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BA533E6F0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 03:39:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B09281EAA;
	Fri, 27 Mar 2026 02:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XYHQokzFna_M; Fri, 27 Mar 2026 02:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C003C81EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774579183;
	bh=UJ2njBuNaj0VaWfPhX2usnjUYhb68jMwXCP3GoFIvQE=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NhXP+CvPbjCYOwSuy3zuImn++bJwI34QDP+0UPIPne+0dqNtLaT8WIU9Be4bbK22p
	 4840mSo4U9252A6mz1lelzi7bxgPfE9ts5s5imk3hBs0fTdeIgdar3e3mXqefXN3ib
	 GPdezow+iISHUFmdMk1FZGAm8iB44P5/paPDFc4JMgcC8qTlLZCBpdOA/sWyN/7qPJ
	 mkBely0FeryWDz0qpaSKx0qCtNAEKbsPDjI4VMVdudt3GPAvj5yz7kR8wAjAiz8AaY
	 EVY+VitMe7GfA+oVFLiRmsC3qIioIkDUVwFrHq3HWHd2772LcHWTqLQ6wOW+TM18Y9
	 /s4nNM1+Qpl9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C003C81EA6;
	Fri, 27 Mar 2026 02:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B88CF249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA56981EA3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id glRm-qaWt3F3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 02:39:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::529; helo=mail-ed1-x529.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8D4B81EA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8D4B81EA0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8D4B81EA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:39:40 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-66a922a3a05so2501357a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 19:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774579178; cv=none;
 d=google.com; s=arc-20240605;
 b=CNY69HwbdX7TMkd0XTXFF4E4YvJm9+bEZJffHNs/XsNFi8sqofvAopLpgZHKexU6J3
 jL7hbHDou3Ksd89MXGVVvOlwtU8seDXphVb/abmaVCALL2sQaM3troaZITO+HB5dZ0kA
 SITH4WO6FRTHu5rZNYLIFuhxmVDnpFfQ+4bDhFJGsQ1Nr+hPRTZAV+nOdsIFcKNHAapS
 YGmCD9erm5CXsVbdlxMSDhpueG8nJ8qx/e8s6b6kLMdxCIOSNQpge8wMklUjhwnK3mja
 do8O9TYUZ2qzQG6iz7RYvXN3kD1QlMByUYI65PNn0AcuHc7hMA2hY1XrTOs3/95o1z9K
 dtTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=UJ2njBuNaj0VaWfPhX2usnjUYhb68jMwXCP3GoFIvQE=;
 fh=YTxAgo99Nt84WmKFIYjzXHVtqtoyarNNedk8+7FLdcI=;
 b=KesAil5ZAWDw1cNU7qbLoHLIx1ARcq4NMtr9XTHSrNB6GLFPkqzpYsnkZ3fnaFlS8x
 2PjQgsA73NcFiL/cJq+iYMOqCMZz2qGm1RGBc/sSMs724RBEgVEHM3b0003tzR/8OnvP
 2hKC8FuuVNNmtH3okF8+c8HKq29gIRhbst1ubFJ1yMXLNScfQg/jCWoks+YjDJ1RT7I8
 B/8XdASUlnnpofaPcnxb20u3QYXPZHrG1nP5ex/kIeVrXT8pccGE8zviw3fX5B9EMaUG
 4IN8Swb+06V9bGne3qhHO0CoMjvTVSNiOlFkvqZ94/Qdii5q8h4kPd0VJnnX4LiYQFS3
 RIHA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774579178; x=1775183978;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UJ2njBuNaj0VaWfPhX2usnjUYhb68jMwXCP3GoFIvQE=;
 b=lDsApgM0cumvj/yIuWnfWWHzPWj48RVCBYJLcSdVxAE8RvUKjLTicuQ7B1HqXo2XME
 i077vqpyrEw71Xso+FY5zhGi1WJKygqcO7Xl/mm5Z2N1CrZII3LcE+jU+2eGzhOxaYdL
 LoSJhd7PEwEFrMWmxsVjmmvdDUlEW3KioKYo4Oyb2jVmHgyZGDNBFT2QWP+9XEmtB+JU
 msZHVStWUfq1/PQQrUWyLWAvPkuLdWQyyyAkjZpHQ3qllxzTAwwrrTR7+EPd5dWDHYFB
 w6TltdEpKbm4vJV1kstsQu7JwozlI6FgQNfTCdGyrwx8ITBJb52Sip9OmFNa52WLTjQy
 73lw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2QBfCLKn6fn/5ddJPs7uZkBZE079AhF7cDovRv80kEZ4FMLv4sMP4rf1B04jQ2tZoMepXw6keDpXXVF95Fxw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz8Fxy62Bwa2q8DA1h39/X5Kxt1W4KyurHc7nAKXRXlYdgzkFr7
 V73sjeSg1z54w6EK7HL70SshxJf3mAmHmrIPmEVyG/p4xza2+DEzjjmXqSG0ye5X/IGaZNFno4r
 ZODrLdl7dhC8MB97oi07Kwl5KJlQzw1A=
X-Gm-Gg: ATEYQzxamDDFfLASNd36Rw87j8T1Y/XmF+MyS6HwYE6K2ami4pbfbe+U+cQTt4ixT2S
 26IdUGGuZAaCcD06u7zk8DoisE8zLF2g7U+ZFStM5XkfULZzQP0a+r1N1w5TbtsGhRDxHlz8aPg
 zVQMRYfLWMQuDzyWodJsYdB5c7Jf/8XRHZgYwu2NNaspMW/8ApRXYLivs+3dxKq02YnGbVOTjey
 fHc1ukwo29tI4m7D/ebhv5OZ11n/jIH/vlsBJu7CDVsxfdVrkZNOwyzq38mPMh0LMJ2lhdKb2GJ
 1B+1
X-Received: by 2002:a05:6402:4618:b0:665:e9f:9021 with SMTP id
 4fb4d7f45d1cf-66b2855f8d5mr335186a12.9.1774579178032; Thu, 26 Mar 2026
 19:39:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260323182823.5813-1-teknoraver@meta.com>
 <20260323182823.5813-3-teknoraver@meta.com>
 <IA3PR11MB8986307A14724905DE2FDFF6E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986307A14724905DE2FDFF6E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Matteo Croce <technoboy85@gmail.com>
Date: Fri, 27 Mar 2026 03:39:01 +0100
X-Gm-Features: AQROBzBiAPRhsRa45Vggn9i03leNAE9sOWPbFipz0NnppklDg7IYO0SsDmOrUoA
Message-ID: <CAFnufp16d3BtZ_A6Zp-yV80CUruTo32EPE7pqCXKYnmzpnacxQ@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>,
 Mohsin Bashir <mohsin.bashr@gmail.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774579178; x=1775183978; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=UJ2njBuNaj0VaWfPhX2usnjUYhb68jMwXCP3GoFIvQE=;
 b=Mw3fElb5k/VEVy/3g5FP/w61wxNuqK1RtzrMN1z5kVGhbYtVJXhej7GkSvtVlROsem
 YokEEK49QuyFLkKZ0wzvEltset2Z/BOlq+5Yc/PiuL8HiWPbFdrcDb9qLB60Ae3agaA2
 6R102IdAW5xLucIsrlAJPMljp0yVHkGUg6QcLt28FRpk8g++piY77sewjnU7g0TKm7VI
 fI5Zq8QgVoG5AcLPT+pvic8JP32UtSYUe9wfhvh/X5etZBqeAH+7Oaixeh00uxLP4oqb
 L+CceTVD6CnXyL6807D3OguxTZLJg0rPK4m898vkvh58TPee1zA1bJ7NZwUbb770Gwlv
 31Ww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=Mw3fElb5
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/2] e1000e: add
 XDP_REDIRECT support
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.960];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 52BA533E6F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno mar 24 mar 2026 alle ore 09:48 Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> ha scritto:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Matteo Croce
> > Sent: Monday, March 23, 2026 7:28 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; Alexei Starovoitov <ast@kernel.org>; Daniel
> > Borkmann <daniel@iogearbox.net>; Jesper Dangaard Brouer
> > <hawk@kernel.org>; John Fastabend <john.fastabend@gmail.com>; Mohsin
> > Bashir <mohsin.bashr@gmail.com>
> > Cc: netdev@vger.kernel.org; bpf@vger.kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH net-next v4 2/2] e1000e: add
> > XDP_REDIRECT support
> >
> > Add the ability to redirect packets to other devices via XDP_REDIRECT
> > and to receive redirected frames from other devices via ndo_xdp_xmit.
> >
> > New functionality:
> > - XDP_REDIRECT case in e1000_run_xdp() using xdp_do_redirect()
> > - e1000_xdp_xmit() as the ndo_xdp_xmit callback for receiving
> >   redirected frames from other devices
> > - xdp_do_flush() in e1000_finalize_xdp() for REDIR completions
> > - xdp_features_set/clear_redirect_target() in e1000_xdp_setup()
> > - NETDEV_XDP_ACT_REDIRECT and NETDEV_XDP_ACT_NDO_XMIT advertised
> >
> > Assisted-by: claude-opus-4-6
> > Signed-off-by: Matteo Croce <teknoraver@meta.com>
> > ---
> >  drivers/net/ethernet/intel/e1000e/netdev.c | 85
> > +++++++++++++++++++++-
> >  1 file changed, 81 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
> > b/drivers/net/ethernet/intel/e1000e/netdev.c
> > index d77f208f00cc..01661e1a74e5 100644
> > --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> > @@ -41,6 +41,7 @@ char e1000e_driver_name[] = "e1000e";
> >  #define E1000_XDP_PASS               0
> >  #define E1000_XDP_CONSUMED   BIT(0)
> >  #define E1000_XDP_TX         BIT(1)
>
> ...
>
> >
> > +/**
> > + * e1000_xdp_xmit - transmit XDP frames from another device
> > + * @netdev: network interface device structure
> > + * @n: number of frames to transmit
> > + * @frames: array of XDP frame pointers
> > + * @flags: XDP transmit flags
> > + *
> > + * This is the ndo_xdp_xmit callback, called when other devices
> > +redirect
> > + * frames to this device.
> > + **/
> > +static int e1000_xdp_xmit(struct net_device *netdev, int n,
> > +                       struct xdp_frame **frames, u32 flags) {
> > +     struct e1000_adapter *adapter = netdev_priv(netdev);
> > +     struct e1000_ring *tx_ring = adapter->tx_ring;
> > +     struct netdev_queue *nq = netdev_get_tx_queue(netdev, 0);
> > +     int cpu = smp_processor_id();
> > +     int nxmit = 0;
> > +     int i;
> > +
> > +     if (unlikely(test_bit(__E1000_DOWN, &adapter->state)))
> > +             return -ENETDOWN;
> > +
> > +     if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> > +             return -EINVAL;
> > +
> > +     if (!adapter->xdp_prog)
> > +             return -ENXIO;
> > +
> > +     __netif_tx_lock(nq, cpu);
> > +     txq_trans_cond_update(nq);
> > +
> > +     for (i = 0; i < n; i++) {
> > +             int err;
> > +
> > +             err = e1000_xdp_xmit_ring(adapter, tx_ring, frames[i]);
> > +             if (err != E1000_XDP_TX)
> > +                     break;
> On first failure, we break out of the loop. frames[i] through frames[n-1] are silently abandoned.
> It should be no memleaks I hope, but silent packets drop is nasty!
>

I wanted to be consistent with other similar drivers, this i what igb
does in igb_main.c:

for (i = 0; i < n; i++) {
        struct xdp_frame *xdpf = frames[i];
        int err;

        err = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
        if (err != IGB_XDP_TX)
                break;
        nxmit++;
}

Regards,
-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
