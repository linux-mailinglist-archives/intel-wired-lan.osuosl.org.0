Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64015303BA5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 12:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02E3E85010;
	Tue, 26 Jan 2021 11:31:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HK-wmBdQR8Z; Tue, 26 Jan 2021 11:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80C3F854CC;
	Tue, 26 Jan 2021 11:31:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68FC81BF47E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D89586770
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eey7JA+gQXos for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 11:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F6A8866DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 11:31:13 +0000 (UTC)
IronPort-SDR: 6HdV/UH1+wyGDDQpfVywrTvEScEowjofW1j/7lTGCQqJn/uLfdxPbRq0HrhS4j2Wk3C/0J63sR
 VZgU0PqxzYPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="243967118"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="243967118"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 03:31:11 -0800
IronPort-SDR: j11sn8Escj8jjicV8d4ttxoIum9PrqGZGr+QtyrEP25VPSUAgEv/2KRaH0ryd2VNfQn8dV8YGk
 886aEHQFy1/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="356696434"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2021 03:31:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 03:31:11 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 Jan 2021 03:31:10 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 Jan 2021 03:31:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 26 Jan 2021 03:31:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HV85PrM+TxCqsfNamNgpva85+52mDC/sP18LTvoqQYWW9ZNOfol/yG137T5+Fmn+LWkodSBvsnop4byhnmtLZT3UZEu9GQSP29QabFI7aokhRnqpOPnvGGchJqN1M6fCxEMRt7IR+9YyTJzSjn7mobh3Ey7ZQ62Q2aOPJv7CyZYCAyzbBtrpm0B3saPmn/q363YW9S0z2SCDwwXNpNDNUWgltmh9wlhrgt7FmtD4krJt2drSrAM6lGEJFOz5+8UWCHzcrgHR008fzAxmbvl2TYvTdYQpmg43O/7Zr8YMya8GzDGZMKCc2pm1na3redNQHATLQr2F7nrJ/Ja9nFN3Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+5TIReEe12HUOq/WE+W6KQP3ygKx1IFK5obU5iwr/A=;
 b=g4KCvJ6wXWWbI/uJ5/q1AoaTqCnnwoqx0VPTJPTDn0MWU5CWlZywsac4g0+v+rZ8Jkxay50zGgSZO56DhjrVLo6/uUXMz/Qsh9RXFl2uvMF4voGnUWTqvMgBAQJT79h/bGiGkxw9W1w6A2BfTwjaWE/Lo/K9dwLuJc0xFiZuHsQkAC5KfdfQScq5ERXiPlY9eIPQTrWkvEnjPGqbZIquvtR5xpwinUrWZvZ95pJIkW6fNqoujlptNMGgOMOT5E+3AKjTefe4s67JzoLIY8AWOgvXMvnv+LpiRM5TBptlXW9YklVoqRHgxH8hPOHo+8gvD8cU8V5op8mSZVRfJSEGiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q+5TIReEe12HUOq/WE+W6KQP3ygKx1IFK5obU5iwr/A=;
 b=IQen3vPu5YM3sCTQbEnb30b44Kkx7BDA1M7DWBGSoxBnjr2gIPg3KQwb8hnVWBOeqtN09C/wiW7APsIYoRrq6KLViJeXm5Ww/5S4Jxulov8Wmc7VAJ25ltB7QhAV/6AgpvKb4caxETrDvSV3yD4RmKNChduNYydscfU1gKMCYqo=
Received: from DM5PR11MB1705.namprd11.prod.outlook.com (2603:10b6:3:e::23) by
 DM6PR11MB2699.namprd11.prod.outlook.com (2603:10b6:5:ce::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3805.16; Tue, 26 Jan 2021 11:30:58 +0000
Received: from DM5PR11MB1705.namprd11.prod.outlook.com
 ([fe80::7012:e581:52f1:af3e]) by DM5PR11MB1705.namprd11.prod.outlook.com
 ([fe80::7012:e581:52f1:af3e%12]) with mapi id 15.20.3784.019; Tue, 26 Jan
 2021 11:30:58 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
Thread-Index: AQHWwix/9wRwax/J2Ee+5Ir/VkVGpqo6KKYw
Date: Tue, 26 Jan 2021 11:30:58 +0000
Message-ID: <DM5PR11MB17054DF9D34224A5483FDF0999BC9@DM5PR11MB1705.namprd11.prod.outlook.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
 <20201124062410.6824-17-haiyue.wang@intel.com>
In-Reply-To: <20201124062410.6824-17-haiyue.wang@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [109.241.79.187]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3af3a2c3-ef96-45f7-fc7c-08d8c1edda19
x-ms-traffictypediagnostic: DM6PR11MB2699:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB26993614A9EEA45C8D051F8299BC9@DM6PR11MB2699.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V5L9j7H73Flfl9Me3knxBVcQVZ7XwNnyFYMLdHelTXSK74pLteCx7sqTM17sP62cBsCv2JbeXu6C6O+LUZYqt0ZxGaesU7zuYEmQOu/1XaE/ZZEaPu/ARqLrAoLJz/H74PItdruDY+IjCruC5ou9dxscMnsZkgNQGcKWqk7CkRZdM+sTvqg5XEz+qyZcTv4iFgpJPPnA+pWyXSqIDm9JmGfx/3gesX+1WWAqxj8kTKgopf7Z05vky44OBUEpz0JTED/f+X44MEti57u5gX/5jl4XF9J8VkQEYtYy3nqN7g631uNhw2SsqCtxxH+DqWF8Ma0e7YWrriIOJQAOO98Hk+B68kRwD49lzm/Xb2sU8XdbuhR5snaFGV+lQfMPONr28wkLCTuQruCsS/kW4j2ytHcs3VLoL3kb/KhjP4UYmj0fbFJj3Se8no5l1fSeT2TwgD33ZPlViFT2jCRbVzV/E587FLQ31M7OHW5ocxx8WHfmGLks1Y2OAVQh6u3/d0+VpGAjP1l4lSr3gkRxcm/aVnmokgTCp0e69Bsfmc6F/KuBXpDTZjPA2y2Z9Q0A6Ddq2ZlXzb/hHAVhav389R96gMLMoFZRqqBUXTIjZ3nCR8I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1705.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(376002)(366004)(136003)(8676002)(30864003)(71200400001)(966005)(86362001)(7696005)(33656002)(316002)(8936002)(478600001)(2906002)(110136005)(54906003)(52536014)(4326008)(107886003)(76116006)(26005)(9686003)(55016002)(5660300002)(83380400001)(186003)(53546011)(6506007)(64756008)(66446008)(66556008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?s/ZC23pBYUS9Ccwn+EUbwqWjgDxlKcRusMn4gUEEEJxorGjdNDJBmkB/e3wK?=
 =?us-ascii?Q?Sl0Ww+9/zoncNWWzOFb+/3yy0nKm/22bs84bb2zbesuA18vTlbJGFWM/iBSe?=
 =?us-ascii?Q?kVR2B3A3ZwCWximSmBZohtBwVM5HJL4awqqmE2m6LUG6tkGIMICzX3RxOt44?=
 =?us-ascii?Q?MKtY4GZyxCMcLYIOuBHqkbjWQRow38FvNk9QSpzbiIQGjgqeU2aX1PMm6bZf?=
 =?us-ascii?Q?O3UMQGpsqjgTQuuAwZ0leTVwVSJ3OCzqekg7T0+vl7HsZnGSGW38rDeLGPK/?=
 =?us-ascii?Q?4sybxY5BYUMLuhmYG0SOLUdBPGmHVyLS+v2/P7Pe9+PSP/Jb6bmqyQJvN+Jb?=
 =?us-ascii?Q?G80ln/ony/tGARFUlnSBW2H87ynY9PwyzsE76Uuu9T04Nnaam0a+YWXUdZc2?=
 =?us-ascii?Q?MNVAXCS3odKyqEdbc12tYH9wp93hFuFQ/u8vq92HQd6kYDY+F9P7XgYGhWnw?=
 =?us-ascii?Q?j6/W+tzvPt9j7Chjj6QRNRoCUXdHTpZLaobng/gqL4Rv8fiMAARcBHWSZp9x?=
 =?us-ascii?Q?FA+kQyLCEGtujMh37Hdkey8wAa2uXPjcb1++bfGn6gMMErO1h+8FbUT4WKhw?=
 =?us-ascii?Q?1YxALmgTjsTEAeZEf1FxTACt8GW1TvBEjwfWqTfS3kS2FKhyjckncafNz8Wp?=
 =?us-ascii?Q?NqBkF7jbkBLYJJFx6MlBiH5awOO6smRdCeAjK8HouElPY0mWrVlz9pR9MIoI?=
 =?us-ascii?Q?k3xTDdwhAVqYazXj+83ZL4ziJAgNy3kP2GSW+xtxPomCHg4NC10p0WiqHGdw?=
 =?us-ascii?Q?Z7NaWUt9MjPKjK3ZDsV+QKeu7WxhGQmX5oSff6HElBwweqM+myBMRq4slJiI?=
 =?us-ascii?Q?ZjHY0O5HjDu4B3BfcLFVsBojJzcQEXRVYYJ4yt74vgIBU7IiE7B4Gws2r4Mv?=
 =?us-ascii?Q?OEon69xnfoX/Tb2+Cfa/8/awiHlKwuUkJeLBHEnTEtaYuJ49vrY8FwR7b+9J?=
 =?us-ascii?Q?VgX4xfm87sMocwRTK/WHVGdJTXyOX8zE3ndU4neeo1jLNL5yE4d8mhE6+RUi?=
 =?us-ascii?Q?CdfgQeo84zTDl/PeTn0eETQbyZByIltbANgWUzojC79PXjl6qF4/2yMMFwH0?=
 =?us-ascii?Q?n9X6sFwE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1705.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3af3a2c3-ef96-45f7-fc7c-08d8c1edda19
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 11:30:58.1911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SXB7DJFGhc21Q45i6jJCO2d6KOMwIPN5G8Fml3sOq4wABeHrqSJwWaOCv1irhVSX+DydY/eyGFByVkh9UTHA8IZqRUSca4Zc2bA4qbrw0ys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Liang,
 Cunming" <cunming.liang@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Would it be possible to move these new flags to bits 35 and 36? Currently OOT uses bits up to 34, and as the changes are being prepared for upstreaming, there might be a conflict there.

Jan

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
Sent: Tuesday, November 24, 2020 7:24 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net
Subject: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable ethtool ntuple filters

Enable ethtool ntuple filter support on the VF driver using the virtchnl
interface to the PF driver and the Flow director functionality in the
hardware.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  12 ++
 drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  33 ++++
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 +++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 187 ++++++++++++++++++
 4 files changed, 259 insertions(+)
 create mode 100644 drivers/net/ethernet/intel/iavf/iavf_fdir.h

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 8a65525a7c0d..bda2a900df8e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -37,6 +37,7 @@
 #include "iavf_type.h"
 #include <linux/avf/virtchnl.h>
 #include "iavf_txrx.h"
+#include "iavf_fdir.h"
 
 #define DEFAULT_DEBUG_LEVEL_SHIFT 3
 #define PFX "iavf: "
@@ -300,6 +301,8 @@ struct iavf_adapter {
 #define IAVF_FLAG_AQ_DISABLE_CHANNELS		BIT(22)
 #define IAVF_FLAG_AQ_ADD_CLOUD_FILTER		BIT(23)
 #define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
+#define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
+#define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
 
 	/* OS defined structs */
 	struct net_device *netdev;
@@ -340,6 +343,8 @@ struct iavf_adapter {
 			  VIRTCHNL_VF_OFFLOAD_VLAN)
 #define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
 			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
+#define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
+			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -362,6 +367,11 @@ struct iavf_adapter {
 	/* lock to protect access to the cloud filter list */
 	spinlock_t cloud_filter_list_lock;
 	u16 num_cloud_filters;
+
+#define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director filters */
+	u16 fdir_active_fltr;
+	struct list_head fdir_list_head;
+	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list */
 };
 
 
@@ -432,6 +442,8 @@ void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
 void iavf_del_cloud_filter(struct iavf_adapter *adapter);
+void iavf_add_fdir_filter(struct iavf_adapter *adapter);
+void iavf_del_fdir_filter(struct iavf_adapter *adapter);
 struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
 					const u8 *macaddr);
 #endif /* _IAVF_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
new file mode 100644
index 000000000000..429bc025d45a
--- /dev/null
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2020, Intel Corporation. */
+
+#ifndef _IAVF_FDIR_H_
+#define _IAVF_FDIR_H_
+
+struct iavf_adapter;
+
+/* State of Flow Director filter */
+enum iavf_fdir_fltr_state_t {
+	IAVF_FDIR_FLTR_ADD_REQUEST,	/* User requests to add Flow Director filter */
+	IAVF_FDIR_FLTR_ADD_PENDING,	/* Flow Director filter pending add by the PF */
+	IAVF_FDIR_FLTR_DEL_REQUEST,	/* User requests to delete Flow Director filter */
+	IAVF_FDIR_FLTR_DEL_PENDING,	/* Flow Director filter pending delete by the PF */
+	IAVF_FDIR_FLTR_ACTIVE,		/* Flow Director filter is active */
+};
+
+/* bookkeeping of Flow Director filters */
+struct iavf_fdir_fltr {
+	enum iavf_fdir_fltr_state_t state;
+	struct list_head list;
+
+	u32 flow_id;
+
+	struct virtchnl_fdir_add vc_add_msg;
+};
+
+int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
+void iavf_print_fdir_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
+bool iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
+void iavf_fdir_list_add_fltr(struct iavf_adapter *adapter, struct iavf_fdir_fltr *fltr);
+struct iavf_fdir_fltr *iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc);
+#endif /* _IAVF_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 814e59bf2c94..d9f9085421df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -958,6 +958,7 @@ static void iavf_up_complete(struct iavf_adapter *adapter)
 void iavf_down(struct iavf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
+	struct iavf_fdir_fltr *fdir;
 	struct iavf_vlan_filter *vlf;
 	struct iavf_mac_filter *f;
 	struct iavf_cloud_filter *cf;
@@ -996,6 +997,13 @@ void iavf_down(struct iavf_adapter *adapter)
 	}
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 
+	/* remove all Flow Director filters */
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
+		fdir->state = IAVF_FDIR_FLTR_DEL_REQUEST;
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
 	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
 	    adapter->state != __IAVF_RESETTING) {
 		/* cancel any current operation */
@@ -1007,6 +1015,7 @@ void iavf_down(struct iavf_adapter *adapter)
 		adapter->aq_required = IAVF_FLAG_AQ_DEL_MAC_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_VLAN_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
+		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
 		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
 	}
 
@@ -1629,6 +1638,14 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_add_cloud_filter(adapter);
 		return 0;
 	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_FDIR_FILTER) {
+		iavf_add_fdir_filter(adapter);
+		return IAVF_SUCCESS;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_FDIR_FILTER) {
+		iavf_del_fdir_filter(adapter);
+		return IAVF_SUCCESS;
+	}
 	return -EAGAIN;
 }
 
@@ -3739,10 +3756,12 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	spin_lock_init(&adapter->mac_vlan_list_lock);
 	spin_lock_init(&adapter->cloud_filter_list_lock);
+	spin_lock_init(&adapter->fdir_fltr_lock);
 
 	INIT_LIST_HEAD(&adapter->mac_filter_list);
 	INIT_LIST_HEAD(&adapter->vlan_filter_list);
 	INIT_LIST_HEAD(&adapter->cloud_filter_list);
+	INIT_LIST_HEAD(&adapter->fdir_list_head);
 
 	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
@@ -3846,6 +3865,7 @@ static void iavf_remove(struct pci_dev *pdev)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct iavf_adapter *adapter = netdev_priv(netdev);
+	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
 	struct iavf_mac_filter *f, *ftmp;
 	struct iavf_cloud_filter *cf, *cftmp;
@@ -3927,6 +3947,13 @@ static void iavf_remove(struct pci_dev *pdev)
 	}
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry_safe(fdir, fdirtmp, &adapter->fdir_list_head, list) {
+		list_del(&fdir->list);
+		kfree(fdir);
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
 	free_netdev(netdev);
 
 	pci_disable_pcie_error_reporting(pdev);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index ed08ace4f05a..eb687081e94f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -140,6 +140,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
 	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
 	       VIRTCHNL_VF_OFFLOAD_ADQ |
+	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
 	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
@@ -1197,6 +1198,101 @@ void iavf_del_cloud_filter(struct iavf_adapter *adapter)
 	kfree(f);
 }
 
+/**
+ * iavf_add_fdir_filter
+ * @adapter: the VF adapter structure
+ *
+ * Request that the PF add Flow Director filters as specified
+ * by the user via ethtool.
+ **/
+void iavf_add_fdir_filter(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *fdir;
+	struct virtchnl_fdir_add *f;
+	bool process_fltr = false;
+	int len;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot add Flow Director filter, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = sizeof(struct virtchnl_fdir_add);
+	f = kzalloc(len, GFP_KERNEL);
+	if (!f)
+		return;
+
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
+		if (fdir->state == IAVF_FDIR_FLTR_ADD_REQUEST) {
+			process_fltr = true;
+			fdir->state = IAVF_FDIR_FLTR_ADD_PENDING;
+			memcpy(f, &fdir->vc_add_msg, len);
+			break;
+		}
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
+	if (!process_fltr) {
+		/* prevent iavf_add_fdir_filter() from being called when there
+		 * are no filters to add
+		 */
+		adapter->aq_required &= ~IAVF_FLAG_AQ_ADD_FDIR_FILTER;
+		kfree(f);
+		return;
+	}
+	adapter->current_op = VIRTCHNL_OP_ADD_FDIR_FILTER;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_FDIR_FILTER, (u8 *)f, len);
+	kfree(f);
+}
+
+/**
+ * iavf_del_fdir_filter
+ * @adapter: the VF adapter structure
+ *
+ * Request that the PF delete Flow Director filters as specified
+ * by the user via ethtool.
+ **/
+void iavf_del_fdir_filter(struct iavf_adapter *adapter)
+{
+	struct iavf_fdir_fltr *fdir;
+	struct virtchnl_fdir_del f;
+	bool process_fltr = false;
+	int len;
+
+	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
+		/* bail because we already have a command pending */
+		dev_err(&adapter->pdev->dev, "Cannot remove Flow Director filter, command %d pending\n",
+			adapter->current_op);
+		return;
+	}
+
+	len = sizeof(struct virtchnl_fdir_del);
+
+	spin_lock_bh(&adapter->fdir_fltr_lock);
+	list_for_each_entry(fdir, &adapter->fdir_list_head, list) {
+		if (fdir->state == IAVF_FDIR_FLTR_DEL_REQUEST) {
+			process_fltr = true;
+			memset(&f, 0, len);
+			f.vsi_id = fdir->vc_add_msg.vsi_id;
+			f.flow_id = fdir->flow_id;
+			fdir->state = IAVF_FDIR_FLTR_DEL_PENDING;
+			break;
+		}
+	}
+	spin_unlock_bh(&adapter->fdir_fltr_lock);
+
+	if (!process_fltr) {
+		adapter->aq_required &= ~IAVF_FLAG_AQ_DEL_FDIR_FILTER;
+		return;
+	}
+
+	adapter->current_op = VIRTCHNL_OP_DEL_FDIR_FILTER;
+	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_FDIR_FILTER, (u8 *)&f, len);
+}
+
 /**
  * iavf_request_reset
  * @adapter: adapter structure
@@ -1357,6 +1453,49 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			}
 			}
 			break;
+		case VIRTCHNL_OP_ADD_FDIR_FILTER: {
+			struct iavf_fdir_fltr *fdir, *fdir_tmp;
+
+			spin_lock_bh(&adapter->fdir_fltr_lock);
+			list_for_each_entry_safe(fdir, fdir_tmp,
+						 &adapter->fdir_list_head,
+						 list) {
+				if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING) {
+					dev_info(&adapter->pdev->dev, "Failed to add Flow Director filter, error %s\n",
+						 iavf_stat_str(&adapter->hw,
+							       v_retval));
+					if (msglen)
+						dev_err(&adapter->pdev->dev,
+							"%s\n", msg);
+					list_del(&fdir->list);
+					kfree(fdir);
+					adapter->fdir_active_fltr--;
+				}
+			}
+			spin_unlock_bh(&adapter->fdir_fltr_lock);
+			}
+			break;
+		case VIRTCHNL_OP_DEL_FDIR_FILTER: {
+			struct iavf_fdir_fltr *fdir;
+
+			spin_lock_bh(&adapter->fdir_fltr_lock);
+			list_for_each_entry(fdir, &adapter->fdir_list_head,
+					    list) {
+				if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING) {
+					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
+					dev_info(&adapter->pdev->dev, "Failed to del Flow Director filter, error %s\n",
+						 iavf_stat_str(&adapter->hw,
+							       v_retval));
+				}
+			}
+			spin_unlock_bh(&adapter->fdir_fltr_lock);
+			}
+			break;
+		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
+		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
+			dev_warn(&adapter->pdev->dev,
+				 "Changing VLAN Stripping is not allowed when Port VLAN is configured\n");
+			break;
 		default:
 			dev_err(&adapter->pdev->dev, "PF returned error %d (%s) to our request %d\n",
 				v_retval, iavf_stat_str(&adapter->hw, v_retval),
@@ -1490,6 +1629,54 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		}
 		}
 		break;
+	case VIRTCHNL_OP_ADD_FDIR_FILTER: {
+		struct virtchnl_fdir_add *add_fltr = (struct virtchnl_fdir_add *)msg;
+		struct iavf_fdir_fltr *fdir, *fdir_tmp;
+
+		spin_lock_bh(&adapter->fdir_fltr_lock);
+		list_for_each_entry_safe(fdir, fdir_tmp,
+					 &adapter->fdir_list_head,
+					 list) {
+			if (fdir->state == IAVF_FDIR_FLTR_ADD_PENDING) {
+				if (add_fltr->status == VIRTCHNL_FDIR_SUCCESS) {
+					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
+					fdir->flow_id = add_fltr->flow_id;
+				} else {
+					dev_info(&adapter->pdev->dev,
+						 "Failed to add Flow Director filter with status : %d\n",
+						 add_fltr->status);
+					list_del(&fdir->list);
+					kfree(fdir);
+					adapter->fdir_active_fltr--;
+				}
+			}
+		}
+		spin_unlock_bh(&adapter->fdir_fltr_lock);
+		}
+		break;
+	case VIRTCHNL_OP_DEL_FDIR_FILTER: {
+		struct virtchnl_fdir_del *del_fltr = (struct virtchnl_fdir_del *)msg;
+		struct iavf_fdir_fltr *fdir, *fdir_tmp;
+
+		spin_lock_bh(&adapter->fdir_fltr_lock);
+		list_for_each_entry_safe(fdir, fdir_tmp, &adapter->fdir_list_head,
+					 list) {
+			if (fdir->state == IAVF_FDIR_FLTR_DEL_PENDING) {
+				if (del_fltr->status == VIRTCHNL_FDIR_SUCCESS) {
+					list_del(&fdir->list);
+					kfree(fdir);
+					adapter->fdir_active_fltr--;
+				} else {
+					fdir->state = IAVF_FDIR_FLTR_ACTIVE;
+					dev_info(&adapter->pdev->dev,
+						 "Failed to delete Flow Director filter with status : %d\n",
+						 del_fltr->status);
+				}
+			}
+		}
+		spin_unlock_bh(&adapter->fdir_fltr_lock);
+		}
+		break;
 	default:
 		if (adapter->current_op && (v_opcode != adapter->current_op))
 			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
