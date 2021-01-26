Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 827203041C9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Jan 2021 16:13:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B53D2010B;
	Tue, 26 Jan 2021 15:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0EYPk3wieWwt; Tue, 26 Jan 2021 15:13:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CDAA820428;
	Tue, 26 Jan 2021 15:13:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D966F1BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 15:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CD1DD86734
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 15:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fBxC+NZ69J0c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jan 2021 15:12:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DCE3286690
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jan 2021 15:12:56 +0000 (UTC)
IronPort-SDR: ZC6Fr6O35yxJdN8DCBV1nD1N7P5BZiknrMaNkrURW3GvF2T5MFGAqr8w0SBz29r41UIwRMEXxc
 BkjGpLFrup1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167586814"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="167586814"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 07:12:54 -0800
IronPort-SDR: 27VT2oTCzPQ4TrzFawkqHqDRhRg5IvBcWp9b80u5TTh3Nk1frRV1RhR3XxSGlyXZj5p69dSE+1
 FXrzPYbca2Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387856574"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 26 Jan 2021 07:12:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 26 Jan 2021 07:12:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 Jan 2021 07:12:53 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.50) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 26 Jan 2021 07:12:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHGn6QfI2JrC8QcjTLtpIUgfYpgTADH1s1Pyv2hI3p1WdGRSjZ0LjCPgOXs2h+F8aWHNZs+tXgScRWmUQUgt34wpEOJJnH9t/niB7XfFe7e7FGsKO7hcvmoYj89ZPLf8JoktNf70MFXky5nNXOnVxF6RsNgshLicgbCyCB1BnRYK83U9VgrrNzfc5gnklkCLNtQI8Ep3gRnp/NN0NDffUiD4soCv9OmtCnF8oGRDdfhg55ofmUzlDZJnWri6ZJwVCoU9TB1SmCnz6nVIU60GBtdZcayMcb+Cz/jwKvuyq9hmcs3un+JnkwEXIqUV/CDzhirlGhZo2PzLjpvPTojjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4l7ySLNEXwUjIqQ60ym2GjFirD7tkvRNgLFSQ0uhD0I=;
 b=BT2z+cgf/uIxSXLw5ZLZDKg4O12B4aB8+wgIoLo5QIYLb5w35p1ol8JBSYitT0mYjeIMRRwXRI+GoBY63OeFujjBvkn9qSgjqZwOf6zOco+DM1Ygd2jMnIo3hJSOEhzyOvBCW83tXql199/qq7E8WDkcEPpxlhRc6z8BjwGjWmfBaSm9ZZFHcQrkeEOzErdtmR9x+BzfBN+FM+QS3DgHq0GIjMYANcl1IkftRI1cZeGegzyTFiuaEJGzzDWL62De6t4VydEhrb7L0NKnPRf0nPWvp+HJ/l4S/rmHMbGn0Mm6g7kt64dpg2ySCng3nBG7/eszSa/9kmbr8M95hgLO9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4l7ySLNEXwUjIqQ60ym2GjFirD7tkvRNgLFSQ0uhD0I=;
 b=EgycvfVzUANl82qpjDR4iNYpAmhvRRDxy5/O65O90stg7DRUgoPi39M9J2DmZxTucF90nLsFcZpK3y0C/dzd3kIm+8DAQYUlgqHa/6xJVI1OeLJQsdO8IEkLDwXiiluICdHIofceYG7Q4hOtU7iV0F/KO6TMfL6q+kEt+6ObxbA=
Received: from DM6PR11MB2876.namprd11.prod.outlook.com (2603:10b6:5:c1::16) by
 DM5PR11MB1594.namprd11.prod.outlook.com (2603:10b6:4:5::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.12; Tue, 26 Jan 2021 15:12:50 +0000
Received: from DM6PR11MB2876.namprd11.prod.outlook.com
 ([fe80::9504:fbb9:b745:7839]) by DM6PR11MB2876.namprd11.prod.outlook.com
 ([fe80::9504:fbb9:b745:7839%3]) with mapi id 15.20.3805.016; Tue, 26 Jan 2021
 15:12:50 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>
Thread-Topic: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable
 ethtool ntuple filters
Thread-Index: AQHWwix/9wRwax/J2Ee+5Ir/VkVGpqo6KKYwgAA+VOA=
Date: Tue, 26 Jan 2021 15:12:50 +0000
Message-ID: <DM6PR11MB28768580D8E157F0E1C7B703E5BC9@DM6PR11MB2876.namprd11.prod.outlook.com>
References: <20201124062410.6824-1-haiyue.wang@intel.com>
 <20201124062410.6824-17-haiyue.wang@intel.com>
 <DM5PR11MB17054DF9D34224A5483FDF0999BC9@DM5PR11MB1705.namprd11.prod.outlook.com>
In-Reply-To: <DM5PR11MB17054DF9D34224A5483FDF0999BC9@DM5PR11MB1705.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [109.233.88.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2898a1a-07ca-4093-6b40-08d8c20cd8e9
x-ms-traffictypediagnostic: DM5PR11MB1594:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB15945CAC53DEADEE43C6A604E5BC9@DM5PR11MB1594.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ypoVhFnoBeQ/7xaSXx799aSWvUtLrwQOej/Vc0D/VV78DOcAzrQmz2Q6COY1VX92O9rFevFyc2pNjKrrbsUKwogAySg7VrEsU0PepIsiWIsAxCl3zo2SrP8JRI9hhCL7+uywDbAnnWvbiqURw0Vug0AlBEftf6JCkHQ2giT8MGTtMkmf5TVGwdYxoW5oug7hoveeRbGIx7OcfA8ai/hqhDMwYNVTaA/06sjFUOyssVMNGhUYC3GQi3MK5NIsFHtIOwKqLXfGye0Hd4EjB/aCWUBLx9rK5zFC0MmD6auOOcNNTD7hGCmqN7ud7KzaNY2TMITYTdgSAQaMUgb88mgZpoYSj/xbM/52n4JeGzaZKR/yePe17KLqxJEuJ1W+x3CU0Ecrn6cszSMhyrDiEIo/Ve6+7fJzTptoCftd2RWkverg9J+52pYUlDirTRUuEFu8hSJoDTeieCiJ4Wht6P161w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2876.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(4326008)(30864003)(53546011)(6862004)(7696005)(52536014)(76116006)(478600001)(966005)(54906003)(316002)(86362001)(83380400001)(8936002)(6636002)(2906002)(8676002)(66476007)(64756008)(66556008)(66446008)(186003)(6506007)(9686003)(26005)(55016002)(5660300002)(71200400001)(66946007)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?8z9Sehv1fS6R9EonFb5H+KG4fM0pXYx1tuHJ9h1/ivmLx5oA3Jm7J77iESW1?=
 =?us-ascii?Q?ujM1nu31T1s8KVQnGRsprc5HJiW7exfR19envdVtjx0p7Hp2NvRNOPG0+nw9?=
 =?us-ascii?Q?HIOB+EsmROk/sEslFyWQW4zi5ikYxDm3Fc5uJeLkU0093SMzv/gpVYKGHXY5?=
 =?us-ascii?Q?p9NmsHDKNG7YDZhQPAOJvpgwnAEOWoCXmliJSWJJ/OopPzwIR1eNmy6IiMyX?=
 =?us-ascii?Q?bIZVLKYTxhSS5fW/oWqNt7hnc3M/7RD2anuIaWQ8GNSTPfRB+zrPgT0g6W0X?=
 =?us-ascii?Q?afk+OMQVgjpV9XIrhj8xlfSrrcn06ox2iay73kZVg/oEnAxNEAAEKS7NSC3F?=
 =?us-ascii?Q?sUw0uXlHl6rmrOQFlpDSDPePTRak1m08pejY0JYziFKVwimKMUZBEIaVreBx?=
 =?us-ascii?Q?PbUZ0o18Czrxa5Y8QBBqgRtDzPy5dd8tG4TThyTufFr6epsUh2nRuVKvOwrp?=
 =?us-ascii?Q?fcnbljxUCBXOBOg6nDkt8MeFRZZwkXVChfN1cfri/b1ih6vgFeAC1y/PuZcv?=
 =?us-ascii?Q?yERRdb3Lu6GDEtYSMKJlwklc3VMc16qvSOPjD2/FahlKCw3vVjnG5K/niV1h?=
 =?us-ascii?Q?hkKdEeh3b9HBb3R8nb+CCq8mN2Rn/HQ8VNtvL4iBZ8O27zH3tGZAUWR4Z9KP?=
 =?us-ascii?Q?am9bDcce5qXQpypCw5JBpQBtqR4ugGqDQOv4Hi59jChcUlu3c6l7X1N1DE6q?=
 =?us-ascii?Q?EBwKKMlOu+yYgU6FUXVxMkOkrK7RAbuQKXsup1H0RKPaUxsNI0VyMsPP6yoO?=
 =?us-ascii?Q?+gy78HNT6AHaQH6byAeFlSVLsBPgWADzrZSlll4vJNfPRemRrJLyDN5KbCQV?=
 =?us-ascii?Q?qBMh1cSVbDebrYfbaHa6SXvEJboGEnE+YPZXwbfFdPpM7kPf3cAh05FpM79w?=
 =?us-ascii?Q?WQwdqTCGjVTY62b1OOJuwzzaTOBSaeGHz+FiraHLDMtALoMi7fHnF+Hy4n1C?=
 =?us-ascii?Q?Ys7fRAF1z2K6Biycm8kdmBd8JKYSOzAoE7XQSDu+aEu0Sv3u01YUpjTq+6NL?=
 =?us-ascii?Q?jbs9ObKkEy1EjCpLXes4YnzizEMU2XLkevq74UTWpOyMxDvs/2OPjrt470IR?=
 =?us-ascii?Q?thsmsAfh?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2876.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2898a1a-07ca-4093-6b40-08d8c20cd8e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2021 15:12:50.6058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zD2Jwg2RbyVI8rUY2xHcpMfcoAUL0u676gFP5jUbqpPmCvFqEETQ3ocmrvXDHUxqSfdkctIdMP2Ln8rTOS0Akvh8ZNN0gqIWTUo2tDzGvHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1594
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

+Brett

-----Original Message-----
From: Sokolowski, Jan <jan.sokolowski@intel.com> 
Sent: Tuesday, January 26, 2021 12:31 PM
To: Wang, Haiyue <haiyue.wang@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Subject: RE: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable ethtool ntuple filters

Would it be possible to move these new flags to bits 35 and 36? Currently OOT uses bits up to 34, and as the changes are being prepared for upstreaming, there might be a conflict there.

Jan

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Haiyue Wang
Sent: Tuesday, November 24, 2020 7:24 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Liang, Cunming <cunming.liang@intel.com>; Zhang, Qi Z <qi.z.zhang@intel.com>; kuba@kernel.org; davem@davemloft.net
Subject: [Intel-wired-lan] [RFC 16/20] iavf: Add framework to enable ethtool ntuple filters

Enable ethtool ntuple filter support on the VF driver using the virtchnl interface to the PF driver and the Flow director functionality in the hardware.

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
 	struct virtchnl_version_info pf_version; @@ -362,6 +367,11 @@ struct iavf_adapter {
 	/* lock to protect access to the cloud filter list */
 	spinlock_t cloud_filter_list_lock;
 	u16 num_cloud_filters;
+
+#define IAVF_MAX_FDIR_FILTERS 128	/* max allowed Flow Director filters */
+	u16 fdir_active_fltr;
+	struct list_head fdir_list_head;
+	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list */
 };
 
 
@@ -432,6 +442,8 @@ void iavf_enable_channels(struct iavf_adapter *adapter);  void iavf_disable_channels(struct iavf_adapter *adapter);  void iavf_add_cloud_filter(struct iavf_adapter *adapter);  void iavf_del_cloud_filter(struct iavf_adapter *adapter);
+void iavf_add_fdir_filter(struct iavf_adapter *adapter); void 
+iavf_del_fdir_filter(struct iavf_adapter *adapter);
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
+/* bookkeeping of Flow Director filters */ struct iavf_fdir_fltr {
+	enum iavf_fdir_fltr_state_t state;
+	struct list_head list;
+
+	u32 flow_id;
+
+	struct virtchnl_fdir_add vc_add_msg;
+};
+
+int iavf_fill_fdir_add_msg(struct iavf_adapter *adapter, struct 
+iavf_fdir_fltr *fltr); void iavf_print_fdir_fltr(struct iavf_adapter 
+*adapter, struct iavf_fdir_fltr *fltr); bool 
+iavf_fdir_is_dup_fltr(struct iavf_adapter *adapter, struct 
+iavf_fdir_fltr *fltr); void iavf_fdir_list_add_fltr(struct iavf_adapter 
+*adapter, struct iavf_fdir_fltr *fltr); struct iavf_fdir_fltr 
+*iavf_find_fdir_fltr_by_loc(struct iavf_adapter *adapter, u32 loc); 
+#endif /* _IAVF_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 814e59bf2c94..d9f9085421df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -958,6 +958,7 @@ static void iavf_up_complete(struct iavf_adapter *adapter)  void iavf_down(struct iavf_adapter *adapter)  {
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
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task); @@ -3846,6 +3865,7 @@ static void iavf_remove(struct pci_dev *pdev)  {
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
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES; @@ -1197,6 +1198,101 @@ void iavf_del_cloud_filter(struct iavf_adapter *adapter)
 	kfree(f);
 }
 
+/**
+ * iavf_add_fdir_filter
+ * @adapter: the VF adapter structure
+ *
+ * Request that the PF add Flow Director filters as specified
+ * by the user via ethtool.
+ **/
+void iavf_add_fdir_filter(struct iavf_adapter *adapter) {
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
+void iavf_del_fdir_filter(struct iavf_adapter *adapter) {
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
 				v_retval, iavf_stat_str(&adapter->hw, v_retval), @@ -1490,6 +1629,54 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
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
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
