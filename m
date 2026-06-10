Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zRkVHAJcKWqdVgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 14:43:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E978669622
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 14:43:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=JywlgqMk;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8815940BDB;
	Wed, 10 Jun 2026 12:43:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ic1RNjfnJlG4; Wed, 10 Jun 2026 12:43:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC24340BDD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781095420;
	bh=bkA0tMMUQyfUMrss1iwRHja5fOtU2rvvX/8sjrFAtFo=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=JywlgqMkMHod4hY6Odz8olfiwFS9uyDEq3UhWrW0ttvK/a2RiKWtfJ1BCkO5vztG9
	 qhOqPJUKdEYwqZfMDRqwMU3SuDQJvkNTniSXXce1BK3fGzy+ZjK5dLWBkDxSiX+0KY
	 7CLM7e7UQ2fCUvl6pjijarW+RNzP0WT/JF49w7JcvTf+xZF9ZBNwhqjTZPWZRPV640
	 30srYHSqStTrKc52kxpn5P+maVn3DUpnzHzYLmpKoYWqPGj1r2JJIDMPIWfqXQfM+l
	 uxYj2Oc8r22lGsm/X0SjZ+aowdDMUo6yIlEaJWiZ+tm1T6w3whCke+dBycHkN22j5p
	 szye6ZwTvYDXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC24340BDD;
	Wed, 10 Jun 2026 12:43:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EE23256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 12:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14AE740BD9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 12:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2GdjWjc--DIn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 12:43:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.91;
 helo=sender-pp-o91.zoho.in; envelope-from=linuxuser509@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E05140BD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E05140BD6
Received: from sender-pp-o91.zoho.in (sender-pp-o91.zoho.in [103.117.158.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E05140BD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 12:43:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1781095369; cv=none; d=zohomail.in; s=zohoarc; 
 b=NW9pnk9PMvTCsmO6+s39b1bHhZmg648WmkDqZ/A1OD3/+qgucgU4eybtKH89vKLTV15rNG4QSDGljae0DILfU2HYPB69tuCxuEGiLqTvL2QJ/a2sk6+EtD+g6j9Zs/B/dl5bGmJD+LuwoH+GOIvX6IrqR+RFRQtmBpEtmiIVDK4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1781095369;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=bkA0tMMUQyfUMrss1iwRHja5fOtU2rvvX/8sjrFAtFo=; 
 b=NU2r8h1u2fntl2LN1GK5K9Q87JmLJgp6ACW6djaH4rzO99jkZBNJwayoB/+rEf3UWCTPSv1+cpRo/rC4SpP3eeGCgwEqBnTyalrxjzOux6kMq3OWJsd0ZRGV2uSLy7bs6aOACtzUfwXvIsxdho7VXUYJ5JKsUy+IqtD2UEoRxkU=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=linuxuser509@zohomail.in;
 dmarc=pass header.from=<linuxuser509@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1781095367536569.4455143305725;
 Wed, 10 Jun 2026 18:12:47 +0530 (IST)
Received: from  [152.57.154.252] by mail.zoho.in
 with HTTP;Wed, 10 Jun 2026 18:12:47 +0530 (IST)
Date: Wed, 10 Jun 2026 18:12:47 +0530
To: "Simon Horman" <horms@kernel.org>
Cc: "anthonylnguyen" <anthony.l.nguyen@intel.com>,
 "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 "andrewnetdev" <andrew+netdev@lunn.ch>,
 "davem" <davem@davemloft.net>, "edumazet" <edumazet@google.com>,
 "kuba" <kuba@kernel.org>, "pabeni" <pabeni@redhat.com>,
 "intel-wired-lan" <intel-wired-lan@lists.osuosl.org>,
 "netdev" <netdev@vger.kernel.org>,
 "linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <19eb18e8367.af9d0ca196779.184115242384250371@zohomail.in>
In-Reply-To: <20260526200114.GD2256768@horms.kernel.org>
References: <19e537fa55c.56218d6244367.1765806925055659075@zohomail.in>
 <20260526200114.GD2256768@horms.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1781095369; 
 s=zoho; d=zohomail.in; i=linuxuser509@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=bkA0tMMUQyfUMrss1iwRHja5fOtU2rvvX/8sjrFAtFo=;
 b=c2G6Zjh2D7Ckt4coW77nM73IE+wg6TswFQuMq9MNIPPugHxxK125paDOuLIREOMH
 RuRfCJhn6h763hcX/ipBOJNxYCQHabrgvuFWfcdHnJMysq4Brb7BU5bd55Iu0tt2aPo
 /MhZgenqRb+4qXa5/ODJ77/HBCatW/IPRDF/1EzA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=linuxuser509@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=c2G6Zjh2
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: fix memory leak of
 msix_entries on MSI-X failure
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
From: Ashwin Gundarapu via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Ashwin Gundarapu <linuxuser509@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.30 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[linuxuser509@zohomail.in];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E978669622

Simon, you're right. e1000e_reset_interrupt_capability already frees msix_entries. I'll drop this patch.

Thanks, 
Ashwin Gundarapu


From: Simon Horman <horms@kernel.org>
To: "Ashwin Gundarapu"<linuxuser509@zohomail.in>
Cc: "anthonylnguyen"<anthony.l.nguyen@intel.com>, "anthony.l.nguyen@intel.com"<przemyslaw.kitszel@intel.com>, "andrewnetdev"<andrew+netdev@lunn.ch>, "davem"<davem@davemloft.net>, "edumazet"<edumazet@google.com>, "kuba"<kuba@kernel.org>, "pabeni"<pabeni@redhat.com>, "intel-wired-lan"<intel-wired-lan@lists.osuosl.org>, "netdev"<netdev@vger.kernel.org>, "linux-kernel"<linux-kernel@vger.kernel.org>
Date: Wed, 27 May 2026 01:31:14 +0530
Subject: Re: [PATCH net-next] e1000e: fix memory leak of msix_entries on MSI-X failure

 > On Sat, May 23, 2026 at 11:52:14AM +0530, Ashwin Gundarapu wrote: 
 > > From: Ashwin Gundarapu <linuxuser509@zohomail.in> 
 > > Date: Sat, 23 May 2026 11:49:40 +0530 
 > > Subject: [PATCH] e1000e: fix memory leak of msix_entries on MSI-X failure 
 > > 
 > > When MSI-X initialization fails, the driver falls through to try 
 > > MSI or legacy interrupts. However, the msix_entries array allocated 
 > > earlier is not freed, causing a memory leak. Free it and set to 
 > > NULL before falling through to the MSI fallback path. 
 > > 
 > > Found by code inspection. 
 > > 
 > > Signed-off-by: Ashwin Gundarapu <linuxuser509@zohomail.in> 
 > > --- 
 > >  drivers/net/ethernet/intel/e1000e/netdev.c | 10 ++++++---- 
 > >  1 file changed, 6 insertions(+), 4 deletions(-) 
 > > 
 > > diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c 
 > > index 7ce0cc8ab8f4..1526069d7fc1 100644 
 > > --- a/drivers/net/ethernet/intel/e1000e/netdev.c 
 > > +++ b/drivers/net/ethernet/intel/e1000e/netdev.c 
 > > @@ -2065,10 +2065,12 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter) 
 > >                                  a->num_vectors); 
 > >                  if (err > 0) 
 > >                      return; 
 > > -            } 
 > > -            /* MSI-X failed, so fall through and try MSI */ 
 > > -            e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n"); 
 > > -            e1000e_reset_interrupt_capability(adapter); 
 > > +                        } 
 > > +                        /* MSI-X failed, so fall through and try MSI */ 
 > > +                        e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n"); 
 > > +                        kfree(adapter->msix_entries); 
 > > +                        adapter->msix_entries = NULL; 
 > > +                        e1000e_reset_interrupt_capability(adapter); 
 >  
 > Hi Ashwin, 
 >  
 > e1000e_reset_interrupt_capability() already handles freeing (and NULLing) 
 > msix_entries, and it does so after calling pci_disable_msix(). 
 >  
 > This patch seems to have the effect of bypassing the call to 
 > pci_disable_msix(). 
 >  
 > Are you sure this is fixing a memory leak as described? 
 >  
 > Flagged by https://sashiko.dev/ and https://netdev-ai.bots.linux.dev/sashiko/ 
 >  
 > >          } 
 > >          adapter->int_mode = E1000E_INT_MODE_MSI; 
 > >          fallthrough; 
 > > -- 
 > > 2.43.0 
 > > 
 > > 
 >  
 > 

