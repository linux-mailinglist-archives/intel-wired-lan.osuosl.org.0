Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yChVAF7rxWlTDQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 03:28:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C219533E530
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 03:28:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2A5A2414C7;
	Fri, 27 Mar 2026 02:28:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lDiQO507F__N; Fri, 27 Mar 2026 02:28:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76CD0414C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774578521;
	bh=o/QYHaH5lUz5iP49ZKscBpC9M/ZhuP2QIdCxew6sXwY=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZIOffLQQXIQtJIA0btRpWjLar+apAqVIXGV4bhofPx9q9t79O+vvEtB/+5hg8uoem
	 fcrYlhk3hhhpw9DZ+6KjT8vFgmFRHb7MKyTiPnqQcdHU3Swp/LvRqc5Li39uVLh9eq
	 AhjMWPH1KtAuMik81lY0/WZ6ZIAE+MvkegfTJXcfbhtgK96X1EoS4bPAEyIr39Mc9D
	 hyncFvDnhsi5kGPJsyX9itYOAilrU9ik9J9PfZSizqgzUSW7DRyFXHA/eKlR2Xv5w5
	 +GPBDIbN9sCzZK9la+VeNhSmdP+Y9grL74sCUNzXi6bLc1fVYRXpS95OpEAFjPwBko
	 M5XAbnZNSnLpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76CD0414C8;
	Fri, 27 Mar 2026 02:28:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E942F1D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:28:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF10240901
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:28:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IL264DLkSdIj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 02:28:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::534; helo=mail-ed1-x534.google.com;
 envelope-from=technoboy85@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E389408FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E389408FB
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E389408FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 02:28:38 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id
 4fb4d7f45d1cf-66abe08cdf5so2636222a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 19:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774578516; cv=none;
 d=google.com; s=arc-20240605;
 b=XFyBHzBFV/lvQS2T/UpbyiUI5MozUUi+amUS/oOSThn4YjI/y+UU7GsinCY/sOnBw7
 lZTBQ4R8S3Jf5o1ZDRiOMwk9i2RMglZQKjxcon7FrxKHI9aMu9sb2miZEL4c4UG2GRmV
 QaJVkCRppzPZb8Oc0ZwFXvY1oaw8CFH87SJOEt376M8Gi0B8EFqVUaqhb86dWwiXMvXg
 QGip1GNo2izDRlIkIp+kosxDzvt1xz93UW+9z6fc3oArPXhYRQryC0omlyaqNrUg6SJN
 uhPooFnazpEiCScvd5uEam8OWAm9vi8UK5aUcqk2lO3twlvjbfh9mh1Le+x+/ScJ183u
 aJaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=o/QYHaH5lUz5iP49ZKscBpC9M/ZhuP2QIdCxew6sXwY=;
 fh=AiHFs9fpd8X1NZ3P7EyP19KN7hreWhdmg0yzKP7dvJY=;
 b=GlEeNvqioDDVPECa0xo9V/BUFFCZbWhqxg/1EA9+WIysK2hftJ1tcHb8LBo5SwfYan
 SgGLUpBJlGMBWX1YQWFzsBahFwX7YGupGreiJOxXYsfZyB4gUnTMyhjtTIXT5802s6/i
 Rf9apOoPA0lfpm5aaK52KaVqgTy5us3hHIXPdFXH4xCZD/FphshWg5s8dJD2TzG9kO/g
 7NezVOdgekZbPDetFJoafDPRgqIZRUGEXP0dYerDFHvPCRX5jz7BrDWhkVeU2bmVZahY
 5mzopdkkBYqqeRPfeTXeM5E6BKxRnP3ooB5qaMNGAr50vebfUKTY0GpZqvzw3aPYkyM3
 oD/g==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774578516; x=1775183316;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=o/QYHaH5lUz5iP49ZKscBpC9M/ZhuP2QIdCxew6sXwY=;
 b=FVnQvGh4KRc76xfidOVLyBcD5YrF/02DUwwA8OH8HJiHo+dXrx46076ONCZoT1U2Ru
 G50Yeoh9cjR4KRM4WPv30wRQ/gPQJBZPkwz4C0+wt+OFbq1tQV1O9NUE0ILoxnmGKKJn
 76q7Lvc5iEnGVIaZgBn5axJeIRsWS99RvjucYVISY7CbPVe47Xy7vx02zb+17Y7yy4eo
 CAZCOoWwMLLIw4ps4BoDAa/9rNASjaZiYJxEQ/SCDdq6oSrvRR6Q4kboe87upVef2iTL
 +ATPuhqf4CHALa+HRut+lTR2WSWsIuyFewsqyr9Hws7oS+Q9GM8s9Bby+doLr/AAajQp
 aHeQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdMCo7tUiVPnRUcp+UujGexjO28hCk2UPOOd3uYlmGOJSvgK34ddMyg5e5fT/Oj3WhDT7LsFVYf5iM+Q/EZcA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YylL+aNkpooRzwyOrJNIgfYIM1r2Boc/Sd0clkTTxqZAGbTCI82
 mO3NuOnKOHTo0RjeIEhSUcWSN8SVLGop/Bd10T9FbV7HEQt+D660mbsMgsKQoFHhEIPjaqx5Nsp
 40vq9hLN4qaYKCEVInRal8XNFOF482to=
X-Gm-Gg: ATEYQzzfu72t5j5o55LbpPeyvvmK/cB90IvWUhZcKm+etkIpgt5lZBxSNqbl7ngC4gM
 r3YRwdtJcpaFxeiIySNbpGLTtRcpJ1zI65LGO+PXace9Y5YFXNfuRjE21miGT9szNH29oHIJ1Rc
 jsVP1a8PjTIA5X/hrqXtDUOLtaBeZroy9QgzceHqMq6IyZR5M5mNIsCdu82FCL8TxkrwSPvMIIa
 cj6IkV5vp5RLmqqTM1ozH/GPk1ZMv52pINNqTTtkE1WE7/9NXUypfm0EKIt5BjxGT75f1J4T9GG
 7avN
X-Received: by 2002:a05:6402:a0dc:b0:666:d675:e2ed with SMTP id
 4fb4d7f45d1cf-66b28b5d0c3mr265917a12.21.1774578516178; Thu, 26 Mar 2026
 19:28:36 -0700 (PDT)
MIME-Version: 1.0
References: <20260323182823.5813-1-teknoraver@meta.com>
 <20260323182823.5813-2-teknoraver@meta.com>
 <IA3PR11MB8986EC18B4FE10649049AF87E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986EC18B4FE10649049AF87E548A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Matteo Croce <technoboy85@gmail.com>
Date: Fri, 27 Mar 2026 03:27:59 +0100
X-Gm-Features: AQROBzBQpBbZY2yB90kykPH3EOXGMHAzeYAHmse7tk-aqdKtuWnq9c8rAoT9-d0
Message-ID: <CAFnufp1H4ptUN0mr1Kq4j2hcOE+pN-XfiHnwh_6=68FD2OzomA@mail.gmail.com>
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
 d=gmail.com; s=20251104; t=1774578516; x=1775183316; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=o/QYHaH5lUz5iP49ZKscBpC9M/ZhuP2QIdCxew6sXwY=;
 b=ChbnVut40GJ96zSCISEazqZ5CSlA9EmpNisK94ni+X9AJUB9jlryJ2L1GQh830b7Qp
 rKAH1u0A3X9fwYW3BwBYQYjrhkhSqw51Qxvc468wnIVoktEn30Vdczf8Spx8PMTxlxWD
 83BhoqHKLT0tOhWSJixCwtVRpsAXkjExe4/Ix9on6newl161J52FAph6s+iYNFol7rp7
 vLtnGha45eixJ/7k4IaiFuw/Em8mmalWU/YDcCvwxpRqAk66uhXAtg0LUPEvno06gYwn
 VrbcEsbW1Ei6ioYwhSxV9d7WGULJrNdKch2H/tgp77kN4eA6NEy106DbsUJCAqTJvaWK
 nGPA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=ChbnVut4
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic XDP
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:mohsin.bashr@gmail.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[technoboy85@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.957];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C219533E530
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Il giorno mar 24 mar 2026 alle ore 09:06 Loktionov, Aleksandr
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
> > Subject: [Intel-wired-lan] [PATCH net-next v4 1/2] e1000e: add basic
> > XDP support
> >
> > Add XDP support to the e1000e driver covering the actions defined by
> > NETDEV_XDP_ACT_BASIC: XDP_DROP, XDP_PASS, XDP_TX and XDP_ABORTED.
> >
> > Infrastructure:
> > - e1000_xdp_setup() / e1000_xdp() for program attach/detach with
> >   MTU validation and close/open cycle
> > - ndo_bpf support in net_device_ops
> > - xdp_rxq_info registration in setup/free_rx_resources
> >
> > Receive path:
> > - e1000_alloc_rx_buffers_xdp() for page-based Rx buffer allocation
> >   with XDP_PACKET_HEADROOM
> > - e1000_clean_rx_irq_xdp() as the XDP receive handler
> > - e1000_run_xdp() to execute the XDP program on received packets
> > - SKB building via napi_build_skb() for XDP_PASS with metadata,
> >   checksum offload and RSS hash support
> >
> > Transmit path:
> > - e1000_xdp_xmit_ring() to DMA-map and enqueue an XDP frame
> > - e1000_xdp_xmit_back() to convert an xdp_buff to a frame and send it
> > - e1000_finalize_xdp() to flush the TX ring after XDP processing
> > - TX completion via xdp_return_frame() with buffer type tracking
> >
> > Assisted-by: claude-opus-4-6
> > Signed-off-by: Matteo Croce <teknoraver@meta.com>
> > ---
> >  drivers/net/ethernet/intel/Kconfig         |   1 +
> >  drivers/net/ethernet/intel/e1000e/e1000.h  |  18 +-
> > drivers/net/ethernet/intel/e1000e/netdev.c | 533 ++++++++++++++++++++-
> >  3 files changed, 540 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/Kconfig
> > b/drivers/net/ethernet/intel/Kconfig
> > index 288fa8ce53af..46e37cb68e70 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -63,6 +63,7 @@ config E1000E
> >       depends on PCI && (!SPARC32 || BROKEN)
> >       depends on PTP_1588_CLOCK_OPTIONAL
> >       select CRC32
> > +     select PAGE_POOL
> >       help
> >         This driver supports the PCI-Express Intel(R) PRO/1000
> > gigabit
> >         ethernet family of adapters. For PCI or PCI-X e1000 adapters,
> > diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h
> > b/drivers/net/ethernet/intel/e1000e/e1000.h
> > index 63ebe00376f5..4c1175d4e5cb 100644
> > --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> > +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> > @@ -19,10 +19,13 @@
> >  #include <linux/net_tstamp.h>
> >  #include <linux/ptp_clock_kernel.h>
> >  #include <linux/ptp_classify.h>
>
> ...
>
> > +/**
> > + * e1000_xdp_xmit_ring - transmit an XDP frame on the TX ring
> > + * @adapter: board private structure
> > + * @tx_ring: Tx descriptor ring
> > + * @xdpf: XDP frame to transmit
> > + *
> > + * Returns E1000_XDP_TX on success, E1000_XDP_CONSUMED on failure
> > **/
> > +static int e1000_xdp_xmit_ring(struct e1000_adapter *adapter,
> > +                            struct e1000_ring *tx_ring,
> > +                            struct xdp_frame *xdpf)
> > +{
> > +     struct e1000_buffer *buffer_info;
> > +     struct e1000_tx_desc *tx_desc;
> > +     dma_addr_t dma;
> > +     u16 i;
> > +
> > +     if (e1000_desc_unused(tx_ring) < 1)
> > +             return E1000_XDP_CONSUMED;
> > +
> > +     i = tx_ring->next_to_use;
> Unsynchronized read of next_to_use. ndo_start_xmit on another CPU can be
> reading+writing this same field RIGHT NOW under __netif_tx_lock, which we do NOT hold.
> Isn't it ?
>
> > +     buffer_info = &tx_ring->buffer_info[i];
> > +
> > +     dma = dma_map_single(&adapter->pdev->dev, xdpf->data, xdpf-
> > >len,
> > +                          DMA_TO_DEVICE);
> > +     if (dma_mapping_error(&adapter->pdev->dev, dma))
> > +             return E1000_XDP_CONSUMED;
> > +
> > +     buffer_info->xdpf = xdpf;
> > +     buffer_info->type = E1000_TX_BUF_XDP;
> > +     buffer_info->dma = dma;
> > +     buffer_info->length = xdpf->len;
> > +     buffer_info->time_stamp = jiffies;
> > +     buffer_info->next_to_watch = i;
> > +     buffer_info->segs = 1;
> > +     buffer_info->bytecount = xdpf->len;
> > +     buffer_info->mapped_as_page = 0;
> > +
> > +     tx_desc = E1000_TX_DESC(*tx_ring, i);
> > +     tx_desc->buffer_addr = cpu_to_le64(dma);
> Writing DMA descriptor that ndo_start_xmit may also be writing to
> at the same index - probably causes ring corruption
>
> > +     tx_desc->lower.data = cpu_to_le32(adapter->txd_cmd |
> > +                                        E1000_TXD_CMD_IFCS |
> > +                                        xdpf->len);
> > +     tx_desc->upper.data = 0;
> > +
> > +     i++;
> > +     if (i == tx_ring->count)
> > +             i = 0;
> > +     tx_ring->next_to_use = i;
> Unsynchronized store - races with the identical write in e1000_xmit_frame.
>
> > +
> > +     return E1000_XDP_TX;
> > +}
> > +
>
> ...
>
> >       kfree(adapter->tx_ring);
> >       kfree(adapter->rx_ring);
> >
> > --
> > 2.53.0
>

You're right. I see two solutions here: taking __netif_tx_lock around
the XDP TX, or using a separate TX ring dedicated to XDP.
The latter would be a bigger change for e1000e since it only has one
TX queue, so I'd go with the lock.

Thanks,
-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay
