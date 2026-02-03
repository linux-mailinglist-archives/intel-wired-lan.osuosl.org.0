Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPe2ITPsgWkFMAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:38:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E129AD9191
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 13:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93BF360874;
	Tue,  3 Feb 2026 12:32:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8QnrPK-8t1bW; Tue,  3 Feb 2026 12:32:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF52660889
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770121930;
	bh=YK+bZeD1IngcPgHtfql6I8NxnQg7t/nPSsV5E5pb1xA=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gcT8cMJFNQCWq+npZ5cmiCZoJvETF5ngspVUxavKhPsUZz8RScxEEHaOWPLTeTORM
	 9DPwCi5SSl4r+CMsoF2wNEbBEYlv5lUvZdI0F8mauFaQLX4GBbEpiBC/o9OUqAR13j
	 5zBGaJy3sFL+lrEcGyb/OQq4wgpnTawVrr9neElTMMvK5aKtIDwwciFUGoxxJnoR2j
	 B0xJKr1iBw3l8Uhc8SBUGMCHfXn22rNr3BqiRN8prtZFs+w2/mkJO65ZXBsVQw/syg
	 KUQZhoXu2E5EAIrGiqwfnT/ssl82NwrUUEfftOa1ToMSw3Xqg+S15YQbYO25QlWtUZ
	 /aNCOZvV/wfAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF52660889;
	Tue,  3 Feb 2026 12:32:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0DC87F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3BE040CCC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xJOhq__LTOJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 12:32:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=44.245.243.92;
 helo=pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=487b0b5b4=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED5E540D2B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED5E540D2B
Received: from pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [44.245.243.92])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED5E540D2B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:32:04 +0000 (UTC)
X-CSE-ConnectionGUID: ijPDJUUnTpihbynFQV8Ucw==
X-CSE-MsgGUID: OjHxnn3nRYGjAN+BswH95w==
X-IronPort-AV: E=Sophos;i="6.21,270,1763424000"; d="scan'208";a="11722026"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-001.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 12:31:46 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:12976]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.0.123:2525]
 with esmtp (Farcaster)
 id cbe99331-cf46-4e56-8c05-78cc3949b188; Tue, 3 Feb 2026 12:31:46 +0000 (UTC)
X-Farcaster-Flow-ID: cbe99331-cf46-4e56-8c05-78cc3949b188
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 3 Feb 2026 12:31:46 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 3 Feb 2026 12:31:44 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <horms@kernel.org>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <enjuk@amazon.com>, <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>, <piotr.kwapulinski@intel.com>, 
 <pmenzel@molgen.mpg.de>, <przemyslaw.kitszel@intel.com>, <takkozu@amazon.com>
Date: Tue, 3 Feb 2026 21:31:37 +0900
Message-ID: <20260203123136.25423-2-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20260202102520.1844644-1-horms@kernel.org>
References: <20260202102520.1844644-1-horms@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.7]
X-ClientProxiedBy: EX19D046UWB004.ant.amazon.com (10.13.139.164) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1770121925; x=1801657925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YK+bZeD1IngcPgHtfql6I8NxnQg7t/nPSsV5E5pb1xA=;
 b=Kk3H9M3dIwggnDa+7wRu62Z7PAbZM7/bWyPIBGOj6xzLTxLKRshFhTMu
 TguCoUk0dQ99ZGp/rb4SiozFZFafEZdPJTtZ4LzY1s6thG7W648enqw6M
 jjkGfmW+yb2jubzaRsUVpdFEZJzhNKvFtSAU7Y9qIQakTIec3oDHPot35
 FoadDkYzqrxIMxTsUtSEpJcXUvqFZVSzgzBVzyuzkx4vbCRXWBeNb19PL
 sxSKrwPSKxAHr5p4J7k+8jtqxeYZF12ttmRqz0SM3sbyIAABdbzZQwk4A
 xV6U5ba8gdq5jNSIlRTex8OfeqEee1YVnejJjLRHOMv6aY6dyeTkS1o2S
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=Kk3H9M3d
Subject: Re: [Intel-wired-lan] [iwl-next, v5,
 3/3] igb: allow configuring RSS key via ethtool set_rxfh
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
X-Spamd-Result: default: False [9.69 / 15.00];
	BLACKLIST_DMARC(6.00)[amazon.com:D:-];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amazon.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	GREYLIST(0.00)[pass,body];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:takkozu@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[takkozu@amazon.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim,davemloft.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,mpg.de:email,linux.dev:url,lunn.ch:email];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: E129AD9191
X-Rspamd-Action: add header
X-Spam: Yes

> From: Simon Horman <horms@kernel.org>
> To: takkozu@amazon.com
> Cc: Simon Horman <horms@kernel.org>,
> anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
> davem@davemloft.net, aleksandr.loktionov@intel.com,
> przemyslaw.kitszel@intel.com, kuba@kernel.org,
> netdev@vger.kernel.org, enjuk@amazon.com, pabeni@redhat.com,
> intel-wired-lan@lists.osuosl.org, edumazet@google.com,
> piotr.kwapulinski@intel.com, pmenzel@molgen.mpg.de
> Subject: Re: [iwl-next,v5,3/3] igb: allow configuring RSS key via ethtool set_rxfh
> Date: Mon, 2 Feb 2026 10:25:20 +0000 [thread overview]
> Message-ID: <20260202102520.1844644-1-horms@kernel.org> (raw)
> In-Reply-To: <20260127085410.79645-8-takkozu@amazon.com>
> 
> This is an AI-generated review of your patch. The human sending this
> email says "I'm releasing this report for completeness. And while I
> do think it is correct. I don't think it needs to block progress"
> 
> For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
> ---
> igb: allow configuring RSS key via ethtool set_rxfh
> 
> This patch adds support for configuring the RSS key via ethtool's
> set_rxfh interface. The change accepts a userspace-provided RSS key,
> stores it in the adapter structure, and writes it to hardware registers.
> 
> > Change igc_set_rxfh() to accept and save a userspace-provided
> > RSS key.
> 
> This isn't a code bug, but the commit message references "igc_set_rxfh()"
> when the function being modified is actually igb_set_rxfh() in
> drivers/net/ethernet/intel/igb/igb_ethtool.c. This typo was noted by
> Aleksandr Loktionov in the v1 review:
> https://lore.kernel.org/intel-wired-lan/IA3PR11MB89860A16782937C7E8C2E2DEE5A7A@IA3PR11MB8986.namprd11.prod.outlook.com/
> 
> Should this be corrected to igb_set_rxfh() to match the actual code?

Thank you for pointing out.
I'll fix it and send it as v6.
