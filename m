Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOOvLgpe4mlM5QAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 18:21:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68141D0B1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 18:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 329D640D3B;
	Fri, 17 Apr 2026 16:21:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTyvYUWjDcDp; Fri, 17 Apr 2026 16:21:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 779D940D3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776442886;
	bh=aucRIRNpULh5tCJF/CYGnKrKwCbL4hITukOd5aDy3lE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rp04WufQr0Cl4ogXld0NtNXzl3Wyx2vUQ6vOe4w3buLAzOe/WpE9UZWmJSERksamo
	 62hmhEBSXyX0FFyKTPw5/8izJ71+/tebaBbbSaJsqbfgqlcHwrPUg5OXGeiHTioUwa
	 nGGNhPQUA10GIW8sgoXVTg2rqn1raRqmUiW5zTciBp8IqBzuOu++5dldk8XMpp26m+
	 S+FqPgXNfxU9RtvYJxz7DCGPO7pK4wBjPU1JmnxnkG1Ij+sMfgzhsshuONUC5Tia/U
	 NM01XlZtfcdKzr/FNje4jvwBZmLAPLnm3+5bVWGl6OQ5dbJq5D2Nih9n5SzOP9k4Wn
	 vPqnV8DhQjRAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 779D940D3D;
	Fri, 17 Apr 2026 16:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 986DF270
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 16:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E13F81854
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 16:21:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ExlK-8XuVW7S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 16:21:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0180A8184F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0180A8184F
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0180A8184F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 16:21:22 +0000 (UTC)
Received: from x1 (232.154.13.160.dy.iij4u.or.jp [160.13.154.232])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 63HGKjCb019556
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 18 Apr 2026 01:20:46 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Sat, 18 Apr 2026 01:20:44 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Simon Horman <horms@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 kohei.enju@gmail.com, stable@vger.kernel.org
Message-ID: <aeJdUhe7_x1ZKFzX@x1>
References: <20260415025226.114115-1-kohei@enjuk.jp>
 <20260417115122.GA31784@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260417115122.GA31784@horms.kernel.org>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=aucRIRNpULh5tCJF/CYGnKrKwCbL4hITukOd5aDy3lE=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1776442846; v=1;
 b=Y+Mx2vPYR6FTXpkb33ZpRugexom9CWm7BDSsBqR+SdVVyW9OlWjqxIONLeAEuAv4
 jL5h5XmSGXtHWES+olWwYkinXRchl2oZ4eyaLDebPL8fvRVF1voyFVbQuYnr8Sn6
 49VNsX5CPrUgwMSJcI2wJmY8AljkpL8kvQKveUE2VVjqsWlu5b4e1bWGe59Um8Us
 mSQ1T81rroaqUMtzK8xEsX/PNSwTibmHJpMYTf+C3guA82TLK7MLBjGfMUENfni1
 41mE8tLFyXK49VCmhH42iI8n3jIC8FPBdb+HGzee4xuqSSuqnFRSQIaICnbn2sNL
 QqTi5nSlwq6PdR7lpE27Ww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Y+Mx2vPY
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix potential skb
 leak in igc_fpe_xmit_smd_frame()
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:faizal.abdul.rahim@linux.intel.com,m:kohei.enju@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:email];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,linux.intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: BB68141D0B1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 04/17 12:51, Simon Horman wrote:
> On Wed, Apr 15, 2026 at 02:52:18AM +0000, Kohei Enju wrote:
> > When igc_fpe_init_tx_descriptor() fails, no one takes care of an
> > allocated skb, leaking it. [1]
> > Use dev_kfree_skb_any() on failure.
> > 
> > Tested on an I226 adapter with the following command, while injecting
> > faults in igc_fpe_init_tx_descriptor() to trigger the error path.
> >  # ethtool --set-mm $DEV verify-enabled on tx-enabled on pmac-enabled on
> > 
> > [1]
> > unreferenced object 0xffff888113c6cdc0 (size 224):
> > ...
> >   backtrace (crc be3d3fda):
> >     kmem_cache_alloc_node_noprof+0x3b1/0x410
> >     __alloc_skb+0xde/0x830
> >     igc_fpe_xmit_smd_frame.isra.0+0xad/0x1b0
> >     igc_fpe_send_mpacket+0x37/0x90
> >     ethtool_mmsv_verify_timer+0x15e/0x300
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> > Changes:
> >   v2:
> >     - change to idiomatic style with goto (Simon)
> >     - add Cc to stable (Alex)
> >     - add reprodunction steps (Alex)
> >   v1: https://lore.kernel.org/all/20260329145122.126040-1-kohei@enjuk.jp/
> 
> Thanks for the update.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> Sashiko has comments about a potential existing bug in the same code path.
> I'd appreciate it if, as a follow-up, you could look over that.

Thanks for the heads-up. I'll look into it.

> 
> Thanks!
