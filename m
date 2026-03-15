Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMykEdK9tmn7GwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 15:10:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5832290EE0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 15 Mar 2026 15:10:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C08D840B12;
	Sun, 15 Mar 2026 14:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rkjCtSO-PX6z; Sun, 15 Mar 2026 14:10:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9166340B56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773583822;
	bh=RcLrErX1O4pkT2Qd0Kt1wtzixyuWXIGtCs14H59Vd08=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SNSBKxMfvAy760nfVMSSgtX6+vrv0D01GdXxn2KJSPiY6sc45cRR5KlfQXw0PYA3Q
	 VXy0B1QNODbRU901hX18Cqf0TS+jFUpb+L62V2QQbuhjRTh7t3E4dRQAmIcFiaaPhu
	 zQaI6tGJqkugruEBt1Y9blvKavDdmJ03noyoNQdm7NuO+j80oP4qHcZiVVohyVl8PD
	 3NSc6d1JK62OMCrHjMmMLGqMbTnNzJ+UBIQc3M43AZz5dWq5pRUI5XX0u3d1dwP2fP
	 f2jYSRDnyHLp2uB98DpjwNsnODSc/w/bGadGFGn8z39lj2RGHEz9LuiAsx4YPi3mXf
	 rNcoB70UD9wJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9166340B56;
	Sun, 15 Mar 2026 14:10:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 45D081B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 14:10:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 379B68236A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 14:10:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XDoWY334rbTj for <intel-wired-lan@lists.osuosl.org>;
 Sun, 15 Mar 2026 14:10:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 147048231F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 147048231F
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 147048231F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 15 Mar 2026 14:10:19 +0000 (UTC)
Received: from x1 (168.25.31.150.dy.iij4u.or.jp [150.31.25.168])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62FE9mRs025689
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sun, 15 Mar 2026 23:09:50 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Sun, 15 Mar 2026 23:09:48 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>
Message-ID: <aba7x6y1uuSp--tH@x1>
References: <20260307182808.155027-1-kohei@enjuk.jp>
 <20260307182808.155027-2-kohei@enjuk.jp>
 <IA3PR11MB89862987ED725ABA6AFC2199E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <25df2a93-07c8-477e-9717-fb4a815cff2c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <25df2a93-07c8-477e-9717-fb4a815cff2c@intel.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=RcLrErX1O4pkT2Qd0Kt1wtzixyuWXIGtCs14H59Vd08=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773583790; v=1;
 b=YXZpGz/XTHPMvGFL9MKXfc/wBYEcHYF9aPl9MKrn6PgZcv1VNLWwwjptSe9SNY9o
 e3sCICn5ZJqWeYnejX0Lm7IFi0bGoPThpSLVLmYQ0D6J9FEO88rBr7/ecwwKbYoH
 kADFsD6cMIHee9Frk7LXOv5cRwCxe9scKpAbgoUIhYhkf6fXppz/KcNz80ipF0Wx
 bIWYGCXE6DasmIRJCvLmQVwlLSM/b9C9TcOE9789BcaUrJhLN3Nan9zrmB5AmojY
 f9fq038F4iNf09EZfaFxOOM/eWkfDMGwjq38I0y+L02WelZ7MMsiclJHlZgFMmqC
 w2Z47VWjlSLstnvbulfkVQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=YXZpGz/X
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igc: set RX hardware
 timestamps in igc_build_skb()
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dima.ruinskiy@intel.com,m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B5832290EE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/15 15:56, Ruinskiy, Dima wrote:

[...]
> > > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > > b/drivers/net/ethernet/intel/igc/igc_main.c
> > > index ebd831a4ff53..3a4c1ebe4faa 100644
> > > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > > @@ -1964,13 +1964,16 @@ static void igc_add_rx_frag(struct igc_ring
> > > *rx_ring,
> > > 
> > >   static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> > >   				     struct igc_rx_buffer *rx_buffer,
> > > -				     struct xdp_buff *xdp)
> > > +				     struct igc_xdp_buff *ctx)
> > >   {
> > > -	unsigned int size = xdp->data_end - xdp->data;
> > > -	unsigned int truesize = igc_get_rx_frame_truesize(rx_ring,
> > > size);
> > > -	unsigned int metasize = xdp->data - xdp->data_meta;
> > > +	unsigned int size, truesize, metasize;
> > > +	struct xdp_buff *xdp = &ctx->xdp;
> > >   	struct sk_buff *skb;
> > > 
> > > +	size = xdp->data_end - xdp->data;
> > > +	truesize = igc_get_rx_frame_truesize(rx_ring, size);
> > > +	metasize = xdp->data - xdp->data_meta;
> > > +
> In the spirit of consistency, would it be possible to restructure the
> variable initialization to match that of igc_construct_skb()? Initialize xdp
> first, and then all the size variable inits can stay as they are. It would
> make the net change smaller.

I followed the reverse christmas tree convention used in netdev, but
your suggestion make sense as well.

I'll make that change in v2.
