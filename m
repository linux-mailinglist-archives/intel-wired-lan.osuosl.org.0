Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B50D3BE21
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 05:09:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 962B16F6C0;
	Tue, 20 Jan 2026 04:09:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xi3zZOLkwseT; Tue, 20 Jan 2026 04:09:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA5416F6BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768882197;
	bh=O9ZU9K6r9ey5QSCUFUoJneb2msolBKA4lldbC697eK0=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bcjvmZKZLiqdRK5rrAuiwM3yv6FZ9wFtznelZNYE1lAFtpygS06lnS6QZngNChjJC
	 Vo8pV3DpNa+jqb9ABjcnK8DHofWqaA6Rgo/76RcZ49ax8xWliDI9sTbaUGPaHQC3aH
	 S3Hq+wqo5xfw/k4vKNjenFQ2oMUtyc2CCWc95gksAiKJCqwW55mMas9KaVH/0lA5x0
	 IHS4p3gS89Rbp18huo3W+6jLCbC98+KSlfCVq9yNqULCcTEnTHHMvfaYOvU6ZJaKjd
	 tk0AVMWYjSVaJQJxwMEuRbrLCJ+kc2oA9pipS/ys/b/K1xMw31BPwFRxlVUoJSFJVs
	 37Kx0jKnWmQ8A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA5416F6BB;
	Tue, 20 Jan 2026 04:09:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A056C2A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 04:09:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 861CE81156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 04:09:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wokxgjcZ86cK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 04:09:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.34.181.151;
 helo=pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=473d65126=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 71DBD80BC0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71DBD80BC0
Received: from pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.34.181.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 71DBD80BC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 04:09:53 +0000 (UTC)
X-CSE-ConnectionGUID: UR6KsHMsSgKY/UEhXwa9IQ==
X-CSE-MsgGUID: kT+Eth0qQMWhIxTtzLv2wg==
X-IronPort-AV: E=Sophos;i="6.21,239,1763424000"; d="scan'208";a="11176209"
Received: from ip-10-5-6-203.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.6.203])
 by internal-pdx-out-007.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jan 2026 04:09:51 +0000
Received: from EX19MTAUWB001.ant.amazon.com [205.251.233.51:23499]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.8.231:2525]
 with esmtp (Farcaster)
 id 93351dc0-42f3-42df-8453-5ad81db6cc28; Tue, 20 Jan 2026 04:09:51 +0000 (UTC)
X-Farcaster-Flow-ID: 93351dc0-42f3-42df-8453-5ad81db6cc28
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 20 Jan 2026 04:09:48 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.244.13) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Tue, 20 Jan 2026 04:09:46 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>, <piotr.kwapulinski@intel.com>, 
 <pmenzel@molgen.mpg.de>, <przemyslaw.kitszel@intel.com>,
 <takkozu@amazon.com>, <enjuk@amazon.com>
Date: Tue, 20 Jan 2026 13:09:39 +0900
Message-ID: <20260120040938.95789-2-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <IA3PR11MB898693239F08B055E714E430E588A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB898693239F08B055E714E430E588A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.13]
X-ClientProxiedBy: EX19D041UWB003.ant.amazon.com (10.13.139.176) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768882194; x=1800418194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O9ZU9K6r9ey5QSCUFUoJneb2msolBKA4lldbC697eK0=;
 b=mFwgFSHUcf7z49D71Jxg/kAvm5WftXJ2OS2HfCMa0RJL/ep5B3AG3/4n
 hsKImIIZVxEDjQKrrMrAEiYiHeRngPtOFKoCXXdKwgvDKu9gM9Mm2Pj6J
 O7bzrhsdW1gMmu/KXTTkTTbPyYUCHR7OWX5yw2x73ANVSDDlF5JOg8o4u
 W4gUXEHuYgh9W8XE6m2PwzhCdsxXdXvQ2nmrCJ/wYuV+kaVUHgrSyPJWx
 ExA+UFhtIF+sVVF2VDFduxCvtUSHBAqUkri5ald+enCB3kagGW3ev4HnQ
 T0KbA4CnqqWRqy5SW8z7eIrSAnr95Nw/sFUtoQZVDHuDebKp+7rAfrY5y
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=mFwgFSHU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] igb: prepare for RSS
 key get/set support
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

> From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
> To: Takashi Kozu <takkozu@amazon.com>,
> "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
> Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
> "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
> "davem@davemloft.net" <davem@davemloft.net>,
> "edumazet@google.com" <edumazet@google.com>,
> "kuba@kernel.org" <kuba@kernel.org>,
> "pabeni@redhat.com" <pabeni@redhat.com>,
> "intel-wired-lan@lists.osuosl.org"
> <intel-wired-lan@lists.osuosl.org>,
> "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
> "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
> "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] igb: prepare for RSS key get/set support
> Date: Mon, 19 Jan 2026 10:19:02 +0000 [thread overview]
> Message-ID: <IA3PR11MB898693239F08B055E714E430E588A@IA3PR11MB8986.namprd11.prod.outlook.com> (raw)
> In-Reply-To: <20260119084511.95287-6-takkozu@amazon.com>
> 
> 
> 
> > -----Original Message-----
> > From: Takashi Kozu <takkozu@amazon.com>
> > Sent: Monday, January 19, 2026 9:45 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> > Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> > andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> > kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski,
> > Piotr <piotr.kwapulinski@intel.com>; Takashi Kozu <takkozu@amazon.com>
> > Subject: [PATCH iwl-next v3 1/3] igb: prepare for RSS key get/set
> > support
> >
> > Store the RSS key inside struct igb_adapter and introduce the
> > igb_write_rss_key() helper function. This allows the driver to program
> > the E1000 registers using a persistent RSS key, instead of using a
> > stack-local buffer in igb_setup_mrqc().
> >
> > Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> > ---
> > drivers/net/ethernet/intel/igb/igb.h | 3 +++
> > drivers/net/ethernet/intel/igb/igb_ethtool.c | 21
> > ++++++++++++++++++++
> > drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++----
> > 3 files changed, 28 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb.h
> > b/drivers/net/ethernet/intel/igb/igb.h
> > index 0fff1df81b7b..8c9b02058cec 100644
> > --- a/drivers/net/ethernet/intel/igb/igb.h
> > +++ b/drivers/net/ethernet/intel/igb/igb.h
> > @@ -495,6 +495,7 @@ struct hwmon_buff {
> > #define IGB_N_PEROUT 2
> > #define IGB_N_SDP 4
> > #define IGB_RETA_SIZE 128
> > +#define IGB_RSS_KEY_SIZE 40
> >
> > enum igb_filter_match_flags {
> > IGB_FILTER_FLAG_ETHER_TYPE = 0x1,
> > @@ -655,6 +656,7 @@ struct igb_adapter {
> > struct i2c_client *i2c_client;
> > u32 rss_indir_tbl_init;
> > u8 rss_indir_tbl[IGB_RETA_SIZE];
> > + u8 rss_key[IGB_RSS_KEY_SIZE];
> >
> > unsigned long link_check_timeout;
> > int copper_tries;
> > @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *); void
> > igb_reinit_locked(struct igb_adapter *); void igb_reset(struct
> > igb_adapter *); int igb_reinit_queues(struct igb_adapter *);
> > +void igb_write_rss_key(struct igb_adapter *adapter);
> > void igb_write_rss_indir_tbl(struct igb_adapter *); int
> > igb_set_spd_dplx(struct igb_adapter *, u32, u8); int
> > igb_setup_tx_resources(struct igb_ring *); diff --git
> > a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > index 10e2445e0ded..5107b0de4fa3 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > @@ -3016,6 +3016,27 @@ static int igb_set_rxnfc(struct net_device
> > *dev, struct ethtool_rxnfc *cmd)
> > return ret;
> > }
> >
> > +/**
> > + info.plist igb_write_rss_key - Program the RSS key into device registers
> > + info.plist @adapter: board private structure
> > + info.plist
> > + info.plist Write the RSS key stored in adapter->rss_key to the E1000 hardware
> > registers.
> > + info.plist Each 32-bit chunk of the key is read using get_unaligned_le32()
> > and
> > +written
> > + info.plist to the appropriate register.
> > + */
> > +void igb_write_rss_key(struct igb_adapter *adapter) {
> Opening brace placement violates kernel coding style. For functions,
> the opening brace should be on the next line, not on the same line as the function declaration.
> Or is it my mail-client issue?

From my side, the opening brace is correctly on the next line.

```
+void igb_write_rss_key(struct igb_adapter *adapter)
+{
```

> > + ASSERT_RTNL();
> > +
> > + struct e1000_hw *hw = &adapter->hw;
> Declarations should be at the start of the block.
> I think ASSERT_RTNL(); can be moved down safely?

Thanks for pointing out. I'll fix this.
