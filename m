Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC737DBCB6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C929709BA;
	Mon, 30 Oct 2023 15:35:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C929709BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680130;
	bh=NcZCUX5ucDZG84RbhsvXBy/LMjg/3QqVPiwu2KAkOA0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dBdS+3m+lMr2XnTmS5vODpJyF2TR3yR8IIJ91kMA1oftSzNMqHYkXYRG6ISoWx1Gr
	 E5IsNgb7ng/BikPsosNabB6IXj3D8ulER9b0esutuzi7QYyKGcGlexaAuKM0/aOvPU
	 h70JUN+t2RAcoBF59znXQwAZIwF/gquV/GdfJdNjABqdYf1Zgnex+2dRFJM5v6lYgs
	 BKImqQWxlzFxxfVD1rsFEuIENfZoyP0R5tsMJ9OG5HhbHTG2duv39tBuBy0PN4PAxt
	 Jp8huwYM/Jgz6Oft0KpIboqVZT1b9EQzZTK9F0Skc0/HwirN/zYSVigG0lBWCqt2f8
	 S+0K3rK7xs4Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tn4Ghy0GB8oF; Mon, 30 Oct 2023 15:35:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B57AA70925;
	Mon, 30 Oct 2023 15:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B57AA70925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE8E81BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 10:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4D9842154
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 10:19:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4D9842154
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7kRIjVpdoys for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 10:19:11 +0000 (UTC)
Received: from smtp-fw-52002.amazon.com (smtp-fw-52002.amazon.com
 [52.119.213.150])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4EA0F42214
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 10:19:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EA0F42214
X-IronPort-AV: E=Sophos;i="6.03,253,1694736000"; d="scan'208";a="591398862"
Thread-Topic: [PATCH 2/3] treewide: Convert some ethtool_sprintf() to
 ethtool_puts()
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-pdx-2c-m6i4x-b1c0e1d0.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-52002.iad7.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2023 10:19:07 +0000
Received: from smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev
 (pdx2-ws-svc-p26-lb5-vlan3.pdx.amazon.com [10.39.38.70])
 by email-inbound-relay-pdx-2c-m6i4x-b1c0e1d0.us-west-2.amazon.com (Postfix)
 with ESMTPS id D6D7B80E40; Thu, 26 Oct 2023 10:19:03 +0000 (UTC)
Received: from EX19MTAEUB002.ant.amazon.com [10.0.17.79:46197]
 by smtpin.naws.eu-west-1.prod.farcaster.email.amazon.dev [10.0.36.96:2525]
 with esmtp (Farcaster)
 id 85256702-e469-4e16-8dcd-084e4fa9d666; Thu, 26 Oct 2023 10:19:02 +0000 (UTC)
X-Farcaster-Flow-ID: 85256702-e469-4e16-8dcd-084e4fa9d666
Received: from EX19D047EUA001.ant.amazon.com (10.252.50.171) by
 EX19MTAEUB002.ant.amazon.com (10.252.51.59) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 26 Oct 2023 10:19:02 +0000
Received: from EX19D022EUA002.ant.amazon.com (10.252.50.201) by
 EX19D047EUA001.ant.amazon.com (10.252.50.171) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 26 Oct 2023 10:19:01 +0000
Received: from EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d]) by
 EX19D022EUA002.ant.amazon.com ([fe80::7f87:7d63:def0:157d%3]) with
 mapi id 15.02.1118.039; Thu, 26 Oct 2023 10:19:01 +0000
From: "Kiyanovski, Arthur" <akiyano@amazon.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Justin Stitt
 <justinstitt@google.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, "Agroskin, Shay" <shayagr@amazon.com>, "Arinzon, David"
 <darinzon@amazon.com>, "Dagan, Noam" <ndagan@amazon.com>, "Bshara, Saeed"
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, "GR-Linux-NIC-Dev@marvell.com"
 <GR-Linux-NIC-Dev@marvell.com>, Dimitris Michailidis <dmichail@fungible.com>, 
 Yisen Zhuang <yisen.zhuang@huawei.com>, Salil Mehta <salil.mehta@huawei.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Louis Peens <louis.peens@corigine.com>, Shannon
 Nelson <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>,
 "drivers@pensando.io" <drivers@pensando.io>, "K. Y. Srinivasan"
 <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, "Wei Liu"
 <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>, Ronak Doshi
 <doshir@vmware.com>, VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>, "Dwaipayan
 Ray" <dwaipayanray1@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Thread-Index: AQHaB5y2ypM5j5ENE0OQVi1jMBjB87BbzPmAgAANCMA=
Date: Thu, 26 Oct 2023 10:18:32 +0000
Deferred-Delivery: Thu, 26 Oct 2023 10:17:40 +0000
Message-ID: <bea26a0c0f9445ba89ed53dd9e2064c0@amazon.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
 <f4b69b9d-2294-e0bf-a12a-9622eb70bd99@intel.com>
In-Reply-To: <f4b69b9d-2294-e0bf-a12a-9622eb70bd99@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.85.143.173]
MIME-Version: 1.0
Precedence: Bulk
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1698315552; x=1729851552;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=sishIOfug9LDx/UiCb7UCKHDn8owOWZQ2SxuDSjpDHo=;
 b=cUkh9yseY9L1f4CDMWLxlvIIh9R80D1rhkmNJRKFmS75p4keZRTfonpW
 0ztImlPAUcVIfibZqxHzIC13oVqufIWWyji98BulQE/DQ0ppSISrU/XcS
 0EB7T9R7PmVT+2PCfv5lHM7LABuX07FoBHR7kSCo+tM4g5VpXig1P0a7y
 4=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazon201209 header.b=cUkh9yse
Subject: Re: [Intel-wired-lan] [PATCH 2/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Sent: Thursday, October 26, 2023 12:24 PM
> To: Justin Stitt <justinstitt@google.com>; David S. Miller
> <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>; Jakub
> Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; Agroskin, Shay
> <shayagr@amazon.com>; Kiyanovski, Arthur <akiyano@amazon.com>; Arinzon,
> David <darinzon@amazon.com>; Dagan, Noam <ndagan@amazon.com>;
> Bshara, Saeed <saeedb@amazon.com>; Rasesh Mody <rmody@marvell.com>;
> Sudarsana Kalluru <skalluru@marvell.com>; GR-Linux-NIC-Dev@marvell.com;
> Dimitris Michailidis <dmichail@fungible.com>; Yisen Zhuang
> <yisen.zhuang@huawei.com>; Salil Mehta <salil.mehta@huawei.com>; Jesse
> Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen
> <anthony.l.nguyen@intel.com>; Louis Peens <louis.peens@corigine.com>;
> Shannon Nelson <shannon.nelson@amd.com>; Brett Creeley
> <brett.creeley@amd.com>; drivers@pensando.io; K. Y. Srinivasan
> <kys@microsoft.com>; Haiyang Zhang <haiyangz@microsoft.com>; Wei Liu
> <wei.liu@kernel.org>; Dexuan Cui <decui@microsoft.com>; Ronak Doshi
> <doshir@vmware.com>; VMware PV-Drivers Reviewers <pv-
> drivers@vmware.com>; Andy Whitcroft <apw@canonical.com>; Joe Perches
> <joe@perches.com>; Dwaipayan Ray <dwaipayanray1@gmail.com>; Lukas
> Bulwahn <lukas.bulwahn@gmail.com>
> Cc: linux-kernel@vger.kernel.org; netdev@vger.kernel.org; Nick Desaulniers
> <ndesaulniers@google.com>; Nathan Chancellor <nathan@kernel.org>; Kees
> Cook <keescook@chromium.org>; intel-wired-lan@lists.osuosl.org; oss-
> drivers@corigine.com; linux-hyperv@vger.kernel.org
> Subject: RE: [EXTERNAL] [PATCH 2/3] treewide: Convert some ethtool_sprintf()
> to ethtool_puts()
> 
> CAUTION: This email originated from outside of the organization. Do not click
> links or open attachments unless you can confirm the sender and know the
> content is safe.
> 
> 
> 
> On 10/26/23 01:40, Justin Stitt wrote:
> > This patch converts some basic cases of ethtool_sprintf() to
> > ethtool_puts().
> >
> > The conversions are used in cases where ethtool_sprintf() was being
> > used with just two arguments:
> > |       ethtool_sprintf(&data, buffer[i].name);
> > or when it's used with format string: "%s"
> > |       ethtool_sprintf(&data, "%s", buffer[i].name);
> > which both now become:
> > |       ethtool_puts(&data, buffer[i].name);
> >
> > There are some outstanding patches [1] that I've sent using plain "%s"
> > with ethtool_sprintf() that should be ethtool_puts() now. Some have
> > been picked up as-is but I will send new versions for the others.
> >
> > [1]:
> > https://lore.kernel.org/all/?q=dfb%3Aethtool_sprintf+AND+f%3Ajustinsti
> > tt
> >
> > Signed-off-by: Justin Stitt <justinstitt@google.com>
> > ---
> >   drivers/net/ethernet/amazon/ena/ena_ethtool.c      |  4 +-
> >   drivers/net/ethernet/brocade/bna/bnad_ethtool.c    |  2 +-
> >   .../net/ethernet/fungible/funeth/funeth_ethtool.c  |  8 +--
> >   drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c |  2 +-
> >   .../net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c    |  2 +-
> >   drivers/net/ethernet/hisilicon/hns/hns_ethtool.c   | 66 +++++++++++-----------
> >   drivers/net/ethernet/intel/i40e/i40e_ethtool.c     |  4 +-
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c       | 10 ++--
> >   drivers/net/ethernet/intel/igb/igb_ethtool.c       |  6 +-
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c       |  6 +-
> >   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   |  5 +-
> >   .../net/ethernet/netronome/nfp/nfp_net_ethtool.c   | 44 +++++++--------
> >   drivers/net/ethernet/pensando/ionic/ionic_stats.c  |  4 +-
> >   drivers/net/hyperv/netvsc_drv.c                    |  4 +-
> >   drivers/net/vmxnet3/vmxnet3_ethtool.c              | 10 ++--
> >   15 files changed, 87 insertions(+), 90 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > index d671df4b76bc..e3ef081aa42b 100644
> > --- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > +++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> > @@ -299,13 +299,13 @@ static void ena_get_strings(struct ena_adapter
> > *adapter,
> >
> >       for (i = 0; i < ENA_STATS_ARRAY_GLOBAL; i++) {
> >               ena_stats = &ena_stats_global_strings[i];
> > -             ethtool_sprintf(&data, ena_stats->name);
> > +             ethtool_puts(&data, ena_stats->name);
> >       }
> >
> >       if (eni_stats_needed) {
> >               for (i = 0; i < ENA_STATS_ARRAY_ENI(adapter); i++) {
> >                       ena_stats = &ena_stats_eni_strings[i];
> > -                     ethtool_sprintf(&data, ena_stats->name);
> > +                     ethtool_puts(&data, ena_stats->name);
> >               }
> >       }
> >
> > diff --git a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
> > b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
> > index df10edff5603..d1ad6c9f8140 100644
> > --- a/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
> > +++ b/drivers/net/ethernet/brocade/bna/bnad_ethtool.c
> > @@ -608,7 +608,7 @@ bnad_get_strings(struct net_device *netdev, u32
> > stringset, u8 *string)
> >
> >       for (i = 0; i < BNAD_ETHTOOL_STATS_NUM; i++) {
> >               BUG_ON(!(strlen(bnad_net_stats_strings[i]) < ETH_GSTRING_LEN));
> > -             ethtool_sprintf(&string, bnad_net_stats_strings[i]);
> > +             ethtool_puts(&string, bnad_net_stats_strings[i]);
> >       }
> >
> >       bmap = bna_tx_rid_mask(&bnad->bna); diff --git
> > a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> > b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> > index 31aa185f4d17..091c93bd7587 100644
> > --- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> > +++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
> > @@ -655,7 +655,7 @@ static void fun_get_strings(struct net_device *netdev,
> u32 sset, u8 *data)
> >                                               i);
> >               }
> >               for (j = 0; j < ARRAY_SIZE(txq_stat_names); j++)
> > -                     ethtool_sprintf(&p, txq_stat_names[j]);
> > +                     ethtool_puts(&p, txq_stat_names[j]);
> >
> >               for (i = 0; i < fp->num_xdpqs; i++) {
> >                       for (j = 0; j < ARRAY_SIZE(xdpq_stat_names);
> > j++) @@ -663,7 +663,7 @@ static void fun_get_strings(struct net_device
> *netdev, u32 sset, u8 *data)
> >                                               xdpq_stat_names[j], i);
> >               }
> >               for (j = 0; j < ARRAY_SIZE(xdpq_stat_names); j++)
> > -                     ethtool_sprintf(&p, xdpq_stat_names[j]);
> > +                     ethtool_puts(&p, xdpq_stat_names[j]);
> >
> >               for (i = 0; i < netdev->real_num_rx_queues; i++) {
> >                       for (j = 0; j < ARRAY_SIZE(rxq_stat_names); j++)
> > @@ -671,10 +671,10 @@ static void fun_get_strings(struct net_device
> *netdev, u32 sset, u8 *data)
> >                                               i);
> >               }
> >               for (j = 0; j < ARRAY_SIZE(rxq_stat_names); j++)
> > -                     ethtool_sprintf(&p, rxq_stat_names[j]);
> > +                     ethtool_puts(&p, rxq_stat_names[j]);
> >
> >               for (j = 0; j < ARRAY_SIZE(tls_stat_names); j++)
> > -                     ethtool_sprintf(&p, tls_stat_names[j]);
> > +                     ethtool_puts(&p, tls_stat_names[j]);
> >               break;
> >       default:
> >               break;
> > diff --git a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
> > b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
> > index 8f391e2adcc0..bdb7afaabdd0 100644
> > --- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
> > +++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_gmac.c
> > @@ -678,7 +678,7 @@ static void hns_gmac_get_strings(u32 stringset, u8
> *data)
> >               return;
> >
> >       for (i = 0; i < ARRAY_SIZE(g_gmac_stats_string); i++)
> > -             ethtool_sprintf(&buff, g_gmac_stats_string[i].desc);
> > +             ethtool_puts(&buff, g_gmac_stats_string[i].desc);
> >   }
> >
> >   static int hns_gmac_get_sset_count(int stringset) diff --git
> > a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
> > b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
> > index fc26ffaae620..c58833eb4830 100644
> > --- a/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
> > +++ b/drivers/net/ethernet/hisilicon/hns/hns_dsaf_xgmac.c
> > @@ -752,7 +752,7 @@ static void hns_xgmac_get_strings(u32 stringset, u8
> *data)
> >               return;
> >
> >       for (i = 0; i < ARRAY_SIZE(g_xgmac_stats_string); i++)
> > -             ethtool_sprintf(&buff, g_xgmac_stats_string[i].desc);
> > +             ethtool_puts(&buff, g_xgmac_stats_string[i].desc);
> >   }
> >
> >   /**
> > diff --git a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
> > b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
> > index b54f3706fb97..b40415910e57 100644
> > --- a/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
> > +++ b/drivers/net/ethernet/hisilicon/hns/hns_ethtool.c
> > @@ -912,42 +912,42 @@ static void hns_get_strings(struct net_device
> > *netdev, u32 stringset, u8 *data)
> >
> >       if (stringset == ETH_SS_TEST) {
> >               if (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII)
> > -                     ethtool_sprintf(&buff,
> > -                                     hns_nic_test_strs[MAC_INTERNALLOOP_MAC]);
> > -             ethtool_sprintf(&buff,
> > -                             hns_nic_test_strs[MAC_INTERNALLOOP_SERDES]);
> > +                     ethtool_puts(&buff,
> > +                                  hns_nic_test_strs[MAC_INTERNALLOOP_MAC]);
> > +             ethtool_puts(&buff,
> > +
> > + hns_nic_test_strs[MAC_INTERNALLOOP_SERDES]);
> >               if ((netdev->phydev) && (!netdev->phydev->is_c45))
> > -                     ethtool_sprintf(&buff,
> > -                                     hns_nic_test_strs[MAC_INTERNALLOOP_PHY]);
> > +                     ethtool_puts(&buff,
> > +
> > + hns_nic_test_strs[MAC_INTERNALLOOP_PHY]);
> >
> >       } else {
> > -             ethtool_sprintf(&buff, "rx_packets");
> > -             ethtool_sprintf(&buff, "tx_packets");
> > -             ethtool_sprintf(&buff, "rx_bytes");
> > -             ethtool_sprintf(&buff, "tx_bytes");
> > -             ethtool_sprintf(&buff, "rx_errors");
> > -             ethtool_sprintf(&buff, "tx_errors");
> > -             ethtool_sprintf(&buff, "rx_dropped");
> > -             ethtool_sprintf(&buff, "tx_dropped");
> > -             ethtool_sprintf(&buff, "multicast");
> > -             ethtool_sprintf(&buff, "collisions");
> > -             ethtool_sprintf(&buff, "rx_over_errors");
> > -             ethtool_sprintf(&buff, "rx_crc_errors");
> > -             ethtool_sprintf(&buff, "rx_frame_errors");
> > -             ethtool_sprintf(&buff, "rx_fifo_errors");
> > -             ethtool_sprintf(&buff, "rx_missed_errors");
> > -             ethtool_sprintf(&buff, "tx_aborted_errors");
> > -             ethtool_sprintf(&buff, "tx_carrier_errors");
> > -             ethtool_sprintf(&buff, "tx_fifo_errors");
> > -             ethtool_sprintf(&buff, "tx_heartbeat_errors");
> > -             ethtool_sprintf(&buff, "rx_length_errors");
> > -             ethtool_sprintf(&buff, "tx_window_errors");
> > -             ethtool_sprintf(&buff, "rx_compressed");
> > -             ethtool_sprintf(&buff, "tx_compressed");
> > -             ethtool_sprintf(&buff, "netdev_rx_dropped");
> > -             ethtool_sprintf(&buff, "netdev_tx_dropped");
> > -
> > -             ethtool_sprintf(&buff, "netdev_tx_timeout");
> > +             ethtool_puts(&buff, "rx_packets");
> > +             ethtool_puts(&buff, "tx_packets");
> > +             ethtool_puts(&buff, "rx_bytes");
> > +             ethtool_puts(&buff, "tx_bytes");
> > +             ethtool_puts(&buff, "rx_errors");
> > +             ethtool_puts(&buff, "tx_errors");
> > +             ethtool_puts(&buff, "rx_dropped");
> > +             ethtool_puts(&buff, "tx_dropped");
> > +             ethtool_puts(&buff, "multicast");
> > +             ethtool_puts(&buff, "collisions");
> > +             ethtool_puts(&buff, "rx_over_errors");
> > +             ethtool_puts(&buff, "rx_crc_errors");
> > +             ethtool_puts(&buff, "rx_frame_errors");
> > +             ethtool_puts(&buff, "rx_fifo_errors");
> > +             ethtool_puts(&buff, "rx_missed_errors");
> > +             ethtool_puts(&buff, "tx_aborted_errors");
> > +             ethtool_puts(&buff, "tx_carrier_errors");
> > +             ethtool_puts(&buff, "tx_fifo_errors");
> > +             ethtool_puts(&buff, "tx_heartbeat_errors");
> > +             ethtool_puts(&buff, "rx_length_errors");
> > +             ethtool_puts(&buff, "tx_window_errors");
> > +             ethtool_puts(&buff, "rx_compressed");
> > +             ethtool_puts(&buff, "tx_compressed");
> > +             ethtool_puts(&buff, "netdev_rx_dropped");
> > +             ethtool_puts(&buff, "netdev_tx_dropped");
> > +
> > +             ethtool_puts(&buff, "netdev_tx_timeout");
> >
> >               h->dev->ops->get_strings(h, stringset, buff);
> >       }
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > index bd1321bf7e26..2641b2a4fcb0 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> > @@ -2512,11 +2512,11 @@ static void i40e_get_priv_flag_strings(struct
> net_device *netdev, u8 *data)
> >       u8 *p = data;
> >
> >       for (i = 0; i < I40E_PRIV_FLAGS_STR_LEN; i++)
> > -             ethtool_sprintf(&p, i40e_gstrings_priv_flags[i].flag_string);
> > +             ethtool_puts(&p,
> > + i40e_gstrings_priv_flags[i].flag_string);
> >       if (pf->hw.pf_id != 0)
> >               return;
> >       for (i = 0; i < I40E_GL_PRIV_FLAGS_STR_LEN; i++)
> > -             ethtool_sprintf(&p, i40e_gl_gstrings_priv_flags[i].flag_string);
> > +             ethtool_puts(&p,
> > + i40e_gl_gstrings_priv_flags[i].flag_string);
> >   }
> >
> >   static void i40e_get_strings(struct net_device *netdev, u32
> > stringset, diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index ad4d4702129f..7871bba4b099 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -1060,8 +1060,8 @@ __ice_get_strings(struct net_device *netdev, u32
> stringset, u8 *data,
> >       switch (stringset) {
> >       case ETH_SS_STATS:
> >               for (i = 0; i < ICE_VSI_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     ice_gstrings_vsi_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > +
> > + ice_gstrings_vsi_stats[i].stat_string);
> 
> this would now fit into one line
> (perhaps it's the same in other cases, I just checked this one manually)
> 
> >
> >               if (ice_is_port_repr_netdev(netdev))
> >                       return;
> > @@ -1080,8 +1080,8 @@ __ice_get_strings(struct net_device *netdev, u32
> stringset, u8 *data,
> >                       return;
> >
> >               for (i = 0; i < ICE_PF_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     ice_gstrings_pf_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > +
> > + ice_gstrings_pf_stats[i].stat_string);
> >
> >               for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> >                       ethtool_sprintf(&p, "tx_priority_%u_xon.nic",
> > i); @@ -1097,7 +1097,7 @@ __ice_get_strings(struct net_device *netdev, u32
> stringset, u8 *data,
> >               break;
> >       case ETH_SS_PRIV_FLAGS:
> >               for (i = 0; i < ICE_PRIV_FLAG_ARRAY_SIZE; i++)
> > -                     ethtool_sprintf(&p, ice_gstrings_priv_flags[i].name);
> > +                     ethtool_puts(&p,
> > + ice_gstrings_priv_flags[i].name);
> >               break;
> >       default:
> >               break;
> > diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > index 319ed601eaa1..e0a24c7c37f9 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> > @@ -2356,11 +2356,9 @@ static void igb_get_strings(struct net_device
> *netdev, u32 stringset, u8 *data)
> >               break;
> >       case ETH_SS_STATS:
> >               for (i = 0; i < IGB_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     igb_gstrings_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > + igb_gstrings_stats[i].stat_string);
> >               for (i = 0; i < IGB_NETDEV_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     igb_gstrings_net_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > + igb_gstrings_net_stats[i].stat_string);
> >               for (i = 0; i < adapter->num_tx_queues; i++) {
> >                       ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> >                       ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 7ab6dd58e400..2aac55ebdf5a 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -773,10 +773,10 @@ static void igc_ethtool_get_strings(struct
> net_device *netdev, u32 stringset,
> >               break;
> >       case ETH_SS_STATS:
> >               for (i = 0; i < IGC_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p, igc_gstrings_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > + igc_gstrings_stats[i].stat_string);
> >               for (i = 0; i < IGC_NETDEV_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     igc_gstrings_net_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > +
> > + igc_gstrings_net_stats[i].stat_string);
> >               for (i = 0; i < adapter->num_tx_queues; i++) {
> >                       ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> >                       ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > index 0bbad4a5cc2f..dd722b0381e0 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> > @@ -1413,12 +1413,11 @@ static void ixgbe_get_strings(struct net_device
> *netdev, u32 stringset,
> >       switch (stringset) {
> >       case ETH_SS_TEST:
> >               for (i = 0; i < IXGBE_TEST_LEN; i++)
> > -                     ethtool_sprintf(&p, ixgbe_gstrings_test[i]);
> > +                     ethtool_puts(&p, ixgbe_gstrings_test[i]);
> >               break;
> >       case ETH_SS_STATS:
> >               for (i = 0; i < IXGBE_GLOBAL_STATS_LEN; i++)
> > -                     ethtool_sprintf(&p,
> > -                                     ixgbe_gstrings_stats[i].stat_string);
> > +                     ethtool_puts(&p,
> > + ixgbe_gstrings_stats[i].stat_string);
> >               for (i = 0; i < netdev->num_tx_queues; i++) {
> >                       ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> >                       ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
> > diff --git a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
> > b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
> > index e75cbb287625..1636ce61a3c0 100644
> > --- a/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
> > +++ b/drivers/net/ethernet/netronome/nfp/nfp_net_ethtool.c
> > @@ -800,7 +800,7 @@ static void nfp_get_self_test_strings(struct
> > net_device *netdev, u8 *data)
> >
> >       for (i = 0; i < NFP_TEST_TOTAL_NUM; i++)
> >               if (nfp_self_test[i].is_supported(netdev))
> > -                     ethtool_sprintf(&data, nfp_self_test[i].name);
> > +                     ethtool_puts(&data, nfp_self_test[i].name);
> >   }
> >
> >   static int nfp_get_self_test_count(struct net_device *netdev) @@
> > -852,24 +852,24 @@ static u8 *nfp_vnic_get_sw_stats_strings(struct
> net_device *netdev, u8 *data)
> >               ethtool_sprintf(&data, "rvec_%u_tx_busy", i);
> >       }
> >
> > -     ethtool_sprintf(&data, "hw_rx_csum_ok");
> > -     ethtool_sprintf(&data, "hw_rx_csum_inner_ok");
> > -     ethtool_sprintf(&data, "hw_rx_csum_complete");
> > -     ethtool_sprintf(&data, "hw_rx_csum_err");
> > -     ethtool_sprintf(&data, "rx_replace_buf_alloc_fail");
> > -     ethtool_sprintf(&data, "rx_tls_decrypted_packets");
> > -     ethtool_sprintf(&data, "hw_tx_csum");
> > -     ethtool_sprintf(&data, "hw_tx_inner_csum");
> > -     ethtool_sprintf(&data, "tx_gather");
> > -     ethtool_sprintf(&data, "tx_lso");
> > -     ethtool_sprintf(&data, "tx_tls_encrypted_packets");
> > -     ethtool_sprintf(&data, "tx_tls_ooo");
> > -     ethtool_sprintf(&data, "tx_tls_drop_no_sync_data");
> > -
> > -     ethtool_sprintf(&data, "hw_tls_no_space");
> > -     ethtool_sprintf(&data, "rx_tls_resync_req_ok");
> > -     ethtool_sprintf(&data, "rx_tls_resync_req_ign");
> > -     ethtool_sprintf(&data, "rx_tls_resync_sent");
> > +     ethtool_puts(&data, "hw_rx_csum_ok");
> > +     ethtool_puts(&data, "hw_rx_csum_inner_ok");
> > +     ethtool_puts(&data, "hw_rx_csum_complete");
> > +     ethtool_puts(&data, "hw_rx_csum_err");
> > +     ethtool_puts(&data, "rx_replace_buf_alloc_fail");
> > +     ethtool_puts(&data, "rx_tls_decrypted_packets");
> > +     ethtool_puts(&data, "hw_tx_csum");
> > +     ethtool_puts(&data, "hw_tx_inner_csum");
> > +     ethtool_puts(&data, "tx_gather");
> > +     ethtool_puts(&data, "tx_lso");
> > +     ethtool_puts(&data, "tx_tls_encrypted_packets");
> > +     ethtool_puts(&data, "tx_tls_ooo");
> > +     ethtool_puts(&data, "tx_tls_drop_no_sync_data");
> > +
> > +     ethtool_puts(&data, "hw_tls_no_space");
> > +     ethtool_puts(&data, "rx_tls_resync_req_ok");
> > +     ethtool_puts(&data, "rx_tls_resync_req_ign");
> > +     ethtool_puts(&data, "rx_tls_resync_sent");
> >
> >       return data;
> >   }
> > @@ -943,13 +943,13 @@ nfp_vnic_get_hw_stats_strings(u8 *data, unsigned
> int num_vecs, bool repr)
> >       swap_off = repr * NN_ET_SWITCH_STATS_LEN;
> >
> >       for (i = 0; i < NN_ET_SWITCH_STATS_LEN; i++)
> > -             ethtool_sprintf(&data, nfp_net_et_stats[i + swap_off].name);
> > +             ethtool_puts(&data, nfp_net_et_stats[i +
> > + swap_off].name);
> >
> >       for (i = NN_ET_SWITCH_STATS_LEN; i < NN_ET_SWITCH_STATS_LEN * 2;
> i++)
> > -             ethtool_sprintf(&data, nfp_net_et_stats[i - swap_off].name);
> > +             ethtool_puts(&data, nfp_net_et_stats[i -
> > + swap_off].name);
> >
> >       for (i = NN_ET_SWITCH_STATS_LEN * 2; i < NN_ET_GLOBAL_STATS_LEN;
> i++)
> > -             ethtool_sprintf(&data, nfp_net_et_stats[i].name);
> > +             ethtool_puts(&data, nfp_net_et_stats[i].name);
> >
> >       for (i = 0; i < num_vecs; i++) {
> >               ethtool_sprintf(&data, "rxq_%u_pkts", i); diff --git
> > a/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> > b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> > index 9859a4432985..1f6022fb7679 100644
> > --- a/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> > +++ b/drivers/net/ethernet/pensando/ionic/ionic_stats.c
> > @@ -258,10 +258,10 @@ static void ionic_sw_stats_get_strings(struct
> ionic_lif *lif, u8 **buf)
> >       int i, q_num;
> >
> >       for (i = 0; i < IONIC_NUM_LIF_STATS; i++)
> > -             ethtool_sprintf(buf, ionic_lif_stats_desc[i].name);
> > +             ethtool_puts(buf, ionic_lif_stats_desc[i].name);
> >
> >       for (i = 0; i < IONIC_NUM_PORT_STATS; i++)
> > -             ethtool_sprintf(buf, ionic_port_stats_desc[i].name);
> > +             ethtool_puts(buf, ionic_port_stats_desc[i].name);
> >
> >       for (q_num = 0; q_num < MAX_Q(lif); q_num++)
> >               ionic_sw_stats_get_tx_strings(lif, buf, q_num); diff
> > --git a/drivers/net/hyperv/netvsc_drv.c
> > b/drivers/net/hyperv/netvsc_drv.c index 3ba3c8fb28a5..cbd9405fc2f3
> > 100644
> > --- a/drivers/net/hyperv/netvsc_drv.c
> > +++ b/drivers/net/hyperv/netvsc_drv.c
> > @@ -1582,10 +1582,10 @@ static void netvsc_get_strings(struct net_device
> *dev, u32 stringset, u8 *data)
> >       switch (stringset) {
> >       case ETH_SS_STATS:
> >               for (i = 0; i < ARRAY_SIZE(netvsc_stats); i++)
> > -                     ethtool_sprintf(&p, netvsc_stats[i].name);
> > +                     ethtool_puts(&p, netvsc_stats[i].name);
> >
> >               for (i = 0; i < ARRAY_SIZE(vf_stats); i++)
> > -                     ethtool_sprintf(&p, vf_stats[i].name);
> > +                     ethtool_puts(&p, vf_stats[i].name);
> >
> >               for (i = 0; i < nvdev->num_chn; i++) {
> >                       ethtool_sprintf(&p, "tx_queue_%u_packets", i);
> > diff --git a/drivers/net/vmxnet3/vmxnet3_ethtool.c
> > b/drivers/net/vmxnet3/vmxnet3_ethtool.c
> > index 98c22d7d87a2..8f5f202cde39 100644
> > --- a/drivers/net/vmxnet3/vmxnet3_ethtool.c
> > +++ b/drivers/net/vmxnet3/vmxnet3_ethtool.c
> > @@ -245,20 +245,20 @@ vmxnet3_get_strings(struct net_device *netdev,
> > u32 stringset, u8 *buf)
> >
> >       for (j = 0; j < adapter->num_tx_queues; j++) {
> >               for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_dev_stats); i++)
> > -                     ethtool_sprintf(&buf, vmxnet3_tq_dev_stats[i].desc);
> > +                     ethtool_puts(&buf,
> > + vmxnet3_tq_dev_stats[i].desc);
> >               for (i = 0; i < ARRAY_SIZE(vmxnet3_tq_driver_stats); i++)
> > -                     ethtool_sprintf(&buf, vmxnet3_tq_driver_stats[i].desc);
> > +                     ethtool_puts(&buf,
> > + vmxnet3_tq_driver_stats[i].desc);
> >       }
> >
> >       for (j = 0; j < adapter->num_rx_queues; j++) {
> >               for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_dev_stats); i++)
> > -                     ethtool_sprintf(&buf, vmxnet3_rq_dev_stats[i].desc);
> > +                     ethtool_puts(&buf,
> > + vmxnet3_rq_dev_stats[i].desc);
> >               for (i = 0; i < ARRAY_SIZE(vmxnet3_rq_driver_stats); i++)
> > -                     ethtool_sprintf(&buf, vmxnet3_rq_driver_stats[i].desc);
> > +                     ethtool_puts(&buf,
> > + vmxnet3_rq_driver_stats[i].desc);
> >       }
> >
> >       for (i = 0; i < ARRAY_SIZE(vmxnet3_global_stats); i++)
> > -             ethtool_sprintf(&buf, vmxnet3_global_stats[i].desc);
> > +             ethtool_puts(&buf, vmxnet3_global_stats[i].desc);
> >   }
> >
> >   netdev_features_t vmxnet3_fix_features(struct net_device *netdev,
> >
> 

Thanks for submitting this patch

Acked-by: Arthur Kiyanovski <akiyano@amazon.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
