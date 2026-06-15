Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ay/oHgnhL2pxIQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 13:24:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94132685B51
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 13:24:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="2kV5/LLR";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (relaxed)" header.from=lunn.ch (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 443BD60ACE;
	Mon, 15 Jun 2026 11:24:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHFJtnQfuu3y; Mon, 15 Jun 2026 11:24:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD0E660B00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781522694;
	bh=Xnl02vDl8tHcP3eFvIi31Hf07qNa+r6eqOGMBuYfG0A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2kV5/LLRyhq9lnDZJzFUaR+PdMrq5u1sJJMtQSAIMERB1OJRTCdI/an1LXE8GIzYP
	 W8WIzmxneOElFV0V6yMJFb5ChhgKcyqZE/8AZE8Z+L/kiuxZ8N3NbyoPYm3sXinKro
	 g6gEdb9bLrGUy76agrcpL6sNQkcFu3Cb1Zi+c16071F2BpaHGlK6JwclJVBHi5XwL3
	 9yMFK++S4EoLN5zAr5wNBcD0P84EkHMFHMZKakWUqIBdKUyR8/4KB1Te0TZBlc+705
	 JLPs4KDcds6GFx+Da4jPpsaCC2EzHWQSPsLRBzCbh9U2j3EJnGr1n4b7AQwo1BPbW/
	 uHS4u/IlLMrzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD0E660B00;
	Mon, 15 Jun 2026 11:24:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 852C9169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 11:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B92B60ACE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 11:24:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oD4-cxaweD38 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 11:24:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6492860AC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6492860AC6
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6492860AC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 11:24:52 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wZ5Qi-007mxk-Jz; Mon, 15 Jun 2026 13:24:36 +0200
Date: Mon, 15 Jun 2026 13:24:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Rongguang Wei <clementwei90@163.com>
Cc: przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Rongguang Wei <weirongguang@kylinos.cn>
Message-ID: <df2fe788-34b4-42da-9f46-274abf5eb9ff@lunn.ch>
References: <20260612080331.120096-1-clementwei90@163.com>
 <1578c474-ffbf-46f7-b906-49da4ea48142@lunn.ch>
 <6a4bb07e-dbfb-4017-b0c3-b01ef2fc5432@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a4bb07e-dbfb-4017-b0c3-b01ef2fc5432@163.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Xnl02vDl8tHcP3eFvIi31Hf07qNa+r6eqOGMBuYfG0A=; b=QtP4DHFHIbs4gmDgs1H51B2vKL
 E7J96FoWMUJ4a+J8DPaffJbc0eceCkXYgPus0GbAvu+hXyIQyn9qMDvYPcn1ISsHCGBZc2tMxavDO
 HS619o7RXsYp1ogwysOzg6tzOIT2NZFT+XT5lpgnRCZiDi/bJutuaGLO/og6aN+izI3s=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=QtP4DHFH
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] e1000: Initialize
 phy_data to avoid unexpected values
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[163.com];
	FORGED_RECIPIENTS(0.00)[m:clementwei90@163.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:weirongguang@kylinos.cn,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp,lunn.ch:mid,lunn.ch:from_mime];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94132685B51

> > Isn't a cable length of 0 also unexpected?
> > 
> > How does this patch actually make the situation better?
> > 
> Uninitialized variables may be initialized to 0 by the system, explicit initialization
> is performed to avoid accidents. 

That is still not an explanation why 0 is better.

Maybe you want to change this from a void function to something which
can return an error code?

But also consider the history of this driver. When did anybody do any
serious development work on it? Does it makes sense to do work on it?
I assume you have the hardware and can test the changes you are
making.

	Andrew
