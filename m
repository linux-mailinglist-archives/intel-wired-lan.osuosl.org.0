Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 487C6D2C6AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 07:16:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF91E6F6C4;
	Fri, 16 Jan 2026 06:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OlrSGDGdCGf8; Fri, 16 Jan 2026 06:16:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59FAC6F6CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768544207;
	bh=EYmrqpWIPJWJpN9ggqrG8icNXtPcugfX8hE3p0bXivo=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VYRI6gNxwzEQ+3B/S+MCTkeDP31HsLHoEMgg76jVIL+nig4UhGe8LsAPM2pUCQE/r
	 oyiKNMeL8CD1324gbbr/BoPNohR9O+QNiR0EMfmziIwZDc94qvGySmAJGXWXbJ6F8i
	 zrri6D0yN4xxB9Uji+NcDKm5l+cwKIapshn5f4Zz1okLwIgkOg8hTewElnQY83aOfL
	 A/3NCFoyJgXP4D33bAVlTagYnm1kNj81sJswsW9nFl2pKrOJUlRnvFSN+K8UxPpUtk
	 r5ZiYrfhWopKA19ZSKh063rJqqD/7ND3X63P//Dx9/g9qWmWRAO5ns9V7MTMZwCq/J
	 KMWiM0ZFoHHPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59FAC6F6CB;
	Fri, 16 Jan 2026 06:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A2EA3223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9416342239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HeXEC3PCFQ0T for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 06:16:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=4697c53fb=takkozu@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8095042231
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8095042231
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8095042231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 06:16:43 +0000 (UTC)
X-CSE-ConnectionGUID: VC7y4LxHQCiNZMA6aQ8Zvg==
X-CSE-MsgGUID: pyI9yhR9QYGA0MYc9INvaA==
X-IronPort-AV: E=Sophos;i="6.21,230,1763424000"; d="scan'208";a="10781657"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2026 06:16:40 +0000
Received: from EX19MTAUWB002.ant.amazon.com [205.251.233.111:17737]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.60.191:2525]
 with esmtp (Farcaster)
 id 29701752-47e2-42e6-99e6-c54bb65648dc; Fri, 16 Jan 2026 06:16:40 +0000 (UTC)
X-Farcaster-Flow-ID: 29701752-47e2-42e6-99e6-c54bb65648dc
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Fri, 16 Jan 2026 06:16:39 +0000
Received: from 603e5f7bc1fe.amazon.com (10.37.245.10) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.35;
 Fri, 16 Jan 2026 06:16:38 +0000
From: Takashi Kozu <takkozu@amazon.com>
To: <pmenzel@molgen.mpg.de>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <takkozu@amazon.com>
Date: Fri, 16 Jan 2026 15:16:31 +0900
Message-ID: <20260116061630.77723-2-takkozu@amazon.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <2ad8d26a-794c-498b-a09b-5791acb0a9d5@molgen.mpg.de>
References: <2ad8d26a-794c-498b-a09b-5791acb0a9d5@molgen.mpg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.10]
X-ClientProxiedBy: EX19D046UWA002.ant.amazon.com (10.13.139.39) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1768544204; x=1800080204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EYmrqpWIPJWJpN9ggqrG8icNXtPcugfX8hE3p0bXivo=;
 b=YKZ2VsF0bd3191oLs4/QkuCxF0+Uw6QmoaIAryQbG0qV+1U8EvWz6Z2h
 r3jzKVawF2Nfjn+W8wWuK6Kg8QNEAy9+SC+ZDBNpaVYZ1yAXsfKFCmpy3
 ZvhHxi8f6uWUnfM0eV+4nxL0+RdHjk91uJlU+hoGPQ7wZyjpRNYy5rcyq
 UoyBvQt5h6RG7YgS61WAx9mfs5INiHsrmIPGbgsw/mqTfKXQ1IRYPcz7V
 xZLUpAVdQxSBEixI5a115nXRhanq/oklxt2ryRp2vHGDECEoMr9ytmSZB
 RblhD3qdKukt+NM7XP5hwi8OPdsuKCMtmIwebTlC24uCuDeZEMUDJOHDW
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=YKZ2VsF0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS
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

> From: Paul Menzel <pmenzel@molgen.mpg.de>
> To: Takashi Kozu <takkozu@amazon.com>
> Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
> andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
> kuba@kernel.org, pabeni@redhat.com,
> intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
> Kohei Enju <enjuk@amazon.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] igb: prepare for RSS key get/set support
> Date: Thu, 8 Jan 2026 13:27:57 +0100 [thread overview]
> Message-ID: <2ad8d26a-794c-498b-a09b-5791acb0a9d5@molgen.mpg.de> (raw)
> In-Reply-To: <20260108052020.84218-6-takkozu@amazon.com>
> 
> Dear Takashi,
> 
> 
> Thank you for the patch.
> 
> Am 08.01.26 um 06:20 schrieb Takashi Kozu:
> > Store the RSS key inside struct igb_adapter and introduce the
> > igb_write_rss_key() helper function. This allows the driver to program
> > the E1000 registers using a persistent RSS key, instead of using a
> > stack-local buffer in igb_setup_mrqc().
> >
> > Tested-by: Kohei Enju <enjuk@amazon.com>
> > Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> > ---
> > drivers/net/ethernet/intel/igb/igb.h | 3 +++
> > drivers/net/ethernet/intel/igb/igb_ethtool.c | 12 ++++++++++++
> > drivers/net/ethernet/intel/igb/igb_main.c | 6 ++----
> > 3 files changed, 17 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
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
> > @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);
> > void igb_reinit_locked(struct igb_adapter *);
> > void igb_reset(struct igb_adapter *);
> > int igb_reinit_queues(struct igb_adapter *);
> > +void igb_write_rss_key(struct igb_adapter *adapter);
> > void igb_write_rss_indir_tbl(struct igb_adapter *);
> > int igb_set_spd_dplx(struct igb_adapter *, u32, u8);
> > int igb_setup_tx_resources(struct igb_ring *);
> > diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > index 10e2445e0ded..8695ff28a7b8 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > @@ -3016,6 +3016,18 @@ static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
> > return ret;
> > }
> >
> > +void igb_write_rss_key(struct igb_adapter *adapter)
> > +{
> > + struct e1000_hw *hw = &adapter->hw;
> > + u32 val;
> > + int i;
> > +
> > + for (i = 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
> > + val = get_unaligned_le32(&adapter->rss_key[i info.plist 4]);
> 
> Why is `get_unaligned_le32()` needed?

I think it's necessary in order to align to 4 bytes.
