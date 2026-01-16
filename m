Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE15D2C7F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 07:24:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BCDA42C1F;
	Fri, 16 Jan 2026 06:24:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OcxGjjRmGdL; Fri, 16 Jan 2026 06:24:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5498E42C21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768544665;
	bh=wpt1kM1YRs4xIHdqwfPIt9Yi6xvFOdnSBe+yiJjWAQE=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dRK6rFQilI8uSRp35nh61J9oBEr3nt4N2NYmSE8kuNDpg45FKrosa20oNJJJenFdX
	 fdZYB2pnlvTozQFBirZFtRlTx/u0XperIdAGpZeaOXAP6dW0RTapa+Hsrp0qZIBnmD
	 6W8kRATIH07R877171R0FqVvizhWB7u7cI0+IYT2VskuMOHK7plv3hAe/F71hfPGsL
	 EhPy+3RWJBRhn0dO90ECiG5KYlXRSfdfSKOJUWo5IG/QLa1aqovNEocHb2jMHSItPW
	 R4K1YM59/J7MU4R4UKyhIRcIcX0uQYm1QqLCrLABuXn1OkBFB2EKegMeuAUA+Kkv82
	 XPObsHS+jQGAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5498E42C21;
	Fri, 16 Jan 2026 06:24:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 993E0160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:24:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7ED1A80AD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:24:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AouSUub6pjfH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 06:24:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.12.53.23;
 helo=pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=4697c53fb=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CE5F980A6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE5F980A6C
Received: from pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com [52.12.53.23])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE5F980A6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:24:22 +0000 (UTC)
X-CSE-ConnectionGUID: UDn9gg2ZT/KAZBdf0H8yRQ==
X-CSE-MsgGUID: c5a4pxpJT9ak3+S++Pv2Pw==
X-IronPort-AV: E=Sophos;i="6.21,230,1763424000"; d="scan'208";a="10849593"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-010.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2026 06:24:20 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:9315]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.27.220:2525]
 with esmtp (Farcaster)
 id 6875cfc2-26af-4f0a-b7d8-12d6d4c1f805; Fri, 16 Jan 2026 06:24:19 +0000 (UTC)
X-Farcaster-Flow-ID: 6875cfc2-26af-4f0a-b7d8-12d6d4c1f805
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Fri, 16 Jan 2026 06:24:19 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Fri, 16 Jan 2026 06:24:17 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <takkozu@amazon.com>
Date: Fri, 16 Jan 2026 15:24:11 +0900
Message-ID: <20260116062410.80174-2-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <IA3PR11MB898612B0CDA9C5A5448733EEE585A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB898612B0CDA9C5A5448733EEE585A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768544662; x=1800080662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wpt1kM1YRs4xIHdqwfPIt9Yi6xvFOdnSBe+yiJjWAQE=;
 b=VzMF19gnhX6sr64DyvRY+0PZOyCNghTG1xwOMWtPmp99O3nLm2FgjQ1o
 A0a+fN6jh96wjOZyzrYtORZEYRaie58sabeuYMvdzjGEd4E/ACyExVfwh
 NZt/ZJcvoRfH878DqiYSSh0reKONC0JFud0wkLSwkpoR6ru/qva0UUYTW
 WRoIDjhFTXE5RMIo+2i0MJe/ps+J01TZ9DUqNQdYgAFEz6MJXQLmlhpE2
 CtjuSvodM316YcyPWKd9CPshlRPvipHIwzVLr3lkSmiJHrTopbR5Bp2d1
 wD866xG14cL+kXVxHyf8WDBCiXDiJxiKjHELnuFpjK6fj+2FfPAAPhxl6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=VzMF19gn
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
 configuring RSS key via ethtool set_rxfh
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

> -----Original Message-----
> From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
> To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
> Kohei Enju <enjuk@amazon.com>
> Cc: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
> "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
> "davem@davemloft.net" <davem@davemloft.net>,
> "edumazet@google.com" <edumazet@google.com>,
> "intel-wired-lan@lists.osuosl.org"
> <intel-wired-lan@lists.osuosl.org>,
> "kuba@kernel.org" <kuba@kernel.org>,
> "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
> "pabeni@redhat.com" <pabeni@redhat.com>,
> "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
> "takkozu@amazon.com" <takkozu@amazon.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow configuring RSS key via ethtool set_rxfh
> Date: Thu, 8 Jan 2026 13:03:12 +0000 [thread overview]
> Message-ID: <IA3PR11MB898612B0CDA9C5A5448733EEE585A@IA3PR11MB8986.namprd11.prod.outlook.com> (raw)
> In-Reply-To: <IA3PR11MB89865D0189D37BB3393B57F5E585A@IA3PR11MB8986.namprd11.prod.outlook.com>
> 
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Loktionov, Aleksandr
> > Sent: Thursday, January 8, 2026 1:28 PM
> > To: Kohei Enju <enjuk@amazon.com>
> > Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> > edumazet@google.com; intel-wired-lan@lists.osuosl.org;
> > kuba@kernel.org; netdev@vger.kernel.org; pabeni@redhat.com; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; takkozu@amazon.com
> > Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb: allow
> > configuring RSS key via ethtool set_rxfh
> >
> >
> >
> > > -----Original Message-----
> > > From: Kohei Enju <enjuk@amazon.com>
> > > Sent: Thursday, January 8, 2026 1:04 PM
> > > To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> > > Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> > > <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> > > edumazet@google.com; enjuk@amazon.com; intel-wired-
> > > lan@lists.osuosl.org; kuba@kernel.org; netdev@vger.kernel.org;
> > > pabeni@redhat.com; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>;
> > > takkozu@amazon.com
> > > Subject: Re: RE: [Intel-wired-lan] [PATCH iwl-next v2 3/3] igb:
> > allow
> > > configuring RSS key via ethtool set_rxfh
> > >
> > > On Thu, 8 Jan 2026 07:29:19 +0000, Loktionov, Aleksandr wrote:
> > >
> > > >>
> > > >> - igb_write_rss_indir_tbl(adapter);
> > > >> + if (rxfh->key) {
> > > >> + adapter->has_user_rss_key = true;
> > > >> + memcpy(adapter->rss_key, rxfh->key, sizeof(adapter-
> > > >> >rss_key));
> > > >> + igb_write_rss_key(adapter);
> > > >It leads to race between ethtool RSS update and concurrent resets.
> > > >Because igb_setup_mrqc() (called during resets) also calls
> > > igb_write_rss_key(adapter).
> > > >Non-fatal but breaks RSS configuration guarantees.
> > >
> > > At my first glance, rtnl lock serializes those operation, so it
> > > doesn't seem to be racy as long as they are under the rtnl lock.
> > >
> > > As far as I skimmed the codes, functions such as igb_open()/
> > > igb_up()/igb_reset_task(), which finally call igb_write_rss_key()
> > are
> > > serialized by rtnl lock or serializes igb_write_rss_key() call by
> > > locking rtnl.
> > >
> > > Please let me know if I'm missing something and it's truly racy.
> > I think you're right, and I've missed that missing rtnl_lock was added
> > in upstream.
> >
> > Thank you for clarification
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >
> 
> Afterthought, I think it could be nice to place ASSERT_RTNL() to show it explicitly.
> What do you think about this idea?

Sorry for the late reply. 
I think it's a good idea. I will add ASSERT_RTNL().
