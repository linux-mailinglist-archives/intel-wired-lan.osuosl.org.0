Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E398367364
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 21:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E78783D0E;
	Wed, 21 Apr 2021 19:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AexSKghL0Z4k; Wed, 21 Apr 2021 19:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22DFA83D0B;
	Wed, 21 Apr 2021 19:23:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EAB11BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 695C440616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVhR_tUYhMnV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 19:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E8E65404B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 19:23:38 +0000 (UTC)
IronPort-SDR: MuFA1Sxb3HQTJt17QnOUIK9XNEgIoyprC6/cILn5GqAt6xQGG/iUbHk3g7kKnVV6JYiBcXDUQU
 eJVNOISun/Kw==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="259715780"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="259715780"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 12:23:37 -0700
IronPort-SDR: vRJV9YO4MdKKvzm10FcNQ1+EbglukqO0TAIJmXrbWmCj0EHsU0wU2bhMCHi59fDu6y/ECVCtbg
 KHysLRZVhyGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="453032841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Apr 2021 12:23:37 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:23:37 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 21 Apr 2021 12:23:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 21 Apr 2021 12:23:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 21 Apr 2021 12:23:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxb3UhabGbcChDblWQCjtc6rn8kW1LqotG9t+FLmxtbzWEgQmf/oalzO/wU/6+HvBoM/bcIt5+k4XQ72XcUUhHrU+48KoEx9aor9PgOn6Eeyvvyn4yXcJN5nAqIMk1QqP66IogGWr4Alu0RcmiMSknWsLHXZToVda1xn8IyTTQy3lRyOYCD8nohUz9BP/H3CwKzYengoQKmeNn36g8sRH4iPpxU/YmvRUJxTaOG7OFr9baJ4KfNgQ7HfAX/66cBoP9B3LHhI1wOE+coJXMfpdk1zyyNsIjdxKmz5WdvTDc4whPrV08niaH897fFWu3bKUd/6w7obbZJCzLrmNZoUBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMWJmEy03L7NyatOnvCMLoLcmEIB9PxjiJ5UGMA8hBQ=;
 b=h5ehesAX8VRLmj8gtMQDIXoAf2uMakD0TUozlsEpGCxPgFfToFFy8tPjMieRup3nOjGI0AV82d7T9fRfiaynf0JBrFiKTZzB+uC818ACCPnIqoMRtbKBgXtebLsg3g2cuGiKJwlD6u4wldcWXw92pLeYBGXxrdif+xsg719yj2ryObnFpxiVL8VghQZBFFjkmwJuj2Bpr0YA+YLVzH0DKM7qXZmcT8xLXvn52nf/PTH3ZuI8iddlIdRFKs2JSL6whXqTYRjTnykmKvRv6G6zjIG08zVV1NYngYxqDTpltgYd/h5aHyphKzsIauUbCbKkEznajMnHKT5cS9hrA+8/8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMWJmEy03L7NyatOnvCMLoLcmEIB9PxjiJ5UGMA8hBQ=;
 b=J6Ss7KzMlqhVgy7Vn/1HI8F4p8fuJI2yoxg5NUHZa0mftXxT6BcRPhke8JpSwP2sRfSo06VwNpbdHWVgpg70/U+nndXPELknnf4QWHyIIm5o9cUAkntCYgamiRlNfLgR7pRnbni/QpA2g2X577JUemF9GrYfSaHwsJ8+cXOOXMU=
Received: from CY4PR11MB1576.namprd11.prod.outlook.com (2603:10b6:910:d::15)
 by CY4PR11MB1784.namprd11.prod.outlook.com (2603:10b6:903:126::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 19:23:31 +0000
Received: from CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08]) by CY4PR11MB1576.namprd11.prod.outlook.com
 ([fe80::6cb6:a971:f256:c08%7]) with mapi id 15.20.4020.023; Wed, 21 Apr 2021
 19:23:31 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 3/6] iavf: Add framework to
 enable ethtool RSS config
Thread-Index: AQHXMAGfQDNkhZs7CUa0lN8YpLKuWKq/Z4xQ
Date: Wed, 21 Apr 2021 19:23:31 +0000
Message-ID: <CY4PR11MB15763F544480056C03D60990AB479@CY4PR11MB1576.namprd11.prod.outlook.com>
References: <20210413004844.32462-1-haiyue.wang@intel.com>
 <20210413004844.32462-4-haiyue.wang@intel.com>
In-Reply-To: <20210413004844.32462-4-haiyue.wang@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.97.153]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1dbdce0-6e70-4840-c358-08d904faf33f
x-ms-traffictypediagnostic: CY4PR11MB1784:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB17848C572878ECD8DCD41491AB479@CY4PR11MB1784.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lL+1kCP+zY552wU+jvAvM8Hm2b3EQJKSz7ZLI9BBXR341tm3PUdQNxoUYwwtkC8Vu4dioghCnme1QhMq4eDTAToGaPSyWtGXQ0o1FySI7F6tJ1jeUxIpTQroR4Enqwe88lbgfoXcrJzCU24+lUlBauNcAdL2WIW9rKmAQJoAMP28TjvgEgfqwxJyYDzhVAPVUt7vsaKOepIgHiDpp2B3Il0GTITaULEfOb1HUaQAz6jZJQcdGtFq+atb+P/3+NcCGcUkN5dddHl4BuQ1dHINLOo860wCDwh47Nw39n2xrmHujQ9+Yr/Yt5zeGDIbBNE8Ud4j2EypzF6krPA/EHpY3bCmK/u2pu8BSIJNeHb2ppD/9n3gEcC2QzOGFcoX4Jx8JYBDlpKheG4z7nsy0b8vO2q7fDZBaibRLS9ekLp14uW/bdwKqVwtvCeBmpfQDKdS7ZaemgG/1OwAZxvkL4hZnkcZ2Y6uiRTK8dujnCpt+zQX6nu5V5QYm3OMVLG7HkE8oTRcJW3aNZpIUURwpoFU/X8bzmf0ALhb+I6AT2wwUI+F9cEpLbuZKxsAX0Aaa8fKpdu+c3zovszYsPq6zDBWeD0cwmt995KOFwW5aCm733M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1576.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(376002)(366004)(346002)(38100700002)(316002)(30864003)(478600001)(110136005)(52536014)(66446008)(33656002)(55016002)(71200400001)(64756008)(8936002)(83380400001)(4326008)(66556008)(26005)(9686003)(76116006)(66476007)(5660300002)(122000001)(66946007)(107886003)(186003)(6506007)(53546011)(86362001)(2906002)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GAe4kmG/SKsqAwrPEKMFAKxJIy47yfbZGNgpZmCT7ALkld+FeQtSYI6sDgzP?=
 =?us-ascii?Q?q08CCoTVMzWin55fpJAvbUJ4xTnSRauPx1McDRNzyKAhuI9Sd+xrXwZpHMqL?=
 =?us-ascii?Q?9YPdzW975b7XC7BKeRTphdxAx7XrOpVFqrUcZVgsUOCv9ps4GX1AUXO8WJv3?=
 =?us-ascii?Q?l2y51uXA09ZqsFH6uBjPahV0auECsKFBW/MBZCuzVnJuF7PMjdPga7cvMrX3?=
 =?us-ascii?Q?qh16HwQJQawModU8cE6ZWHtPeCXkZqWIXEG+sa+EbxEVT5cokVReE18JoH2R?=
 =?us-ascii?Q?6UlavoNAVwGZjif9O60bRnf4jz6dyTLxmqLyUqL5/wqw/Howv6C1QODljwmA?=
 =?us-ascii?Q?R1bSH86i1UnFW3gbb43OwmAwjb1xOjjveOSWVN0gOkmLgGCIn7+tGiUp8lwg?=
 =?us-ascii?Q?SnM+HGr5lC8G3BZr0NOuet/BK1LIg1Wu3j0nVLmW8BesHZ+avvTaw0sWyasp?=
 =?us-ascii?Q?xlRf1g/xV8zBwWyE9toLJblYiITPqT2G1b/PebFniYCKUv+SIEs5OT0qbKV8?=
 =?us-ascii?Q?3gU1KOM/4Z42gTa4zuTEcff2irsxK+a3Il8fXMqYZAbjOIS+OLIu3WEJU5RW?=
 =?us-ascii?Q?dyKNGPmcvVRB/rH3dgZP++u98DTFht3jL3EXOsqqFyHGMJUVVF+/eR3OKGom?=
 =?us-ascii?Q?OZ1WCsovPnp0swa86VKAr6YPcimrDjg4y62kcKDxz1b8D5yL7KtW3bcxvx8n?=
 =?us-ascii?Q?jyFVAW1kCysuHGC+xcgae2MvfkzN7Yc5I0/aomgW+rmxbJEjyk6Lk87Kr7Oe?=
 =?us-ascii?Q?gkwdxJqjlQ0MVBovcnpDVIu2X7ZNJwI91DcVwP1p/y+IOTo9f3iXzT7bOUtj?=
 =?us-ascii?Q?Yev+IfzcH5Zxd+DUcjiGwSiMr0GvIWj1yI4RK4+t/r7LmCPsct0fLjG+Mu0e?=
 =?us-ascii?Q?zr9xKf/sVHMO1OzSg24MFNGieWg4LT1EALsTJtUuNZE0EDPn8eJ/W+voYQq5?=
 =?us-ascii?Q?n+JgMdgVg1LhFBHg80vry4PwWok8fxFv0w1zEuLYswUvzZI8OuBrPxV0pwH/?=
 =?us-ascii?Q?dC8RKgraiPhCBnNcKx19mY1mWratWmwey+W2GZASWxMYW9DvNHxko5MrDp3U?=
 =?us-ascii?Q?M6mdhMv+ORO5XO6cyfk0XMjTQX9kUxdOEq8VCHrQ/vHUpJBAHumJZ70oRM0t?=
 =?us-ascii?Q?ZC/Z2COPPXoMsLoNIaEKS8FHYdbZ7xGYFel/WEG550che6sM7B+m394MhbtE?=
 =?us-ascii?Q?TG+5LZVvlxK8wp/UzN9JxgtZrv4UuD3A3SBUL0MDTjJTRoXIzzxQe4zlhux7?=
 =?us-ascii?Q?dKMiLY4Lt2NBbBBr9GV9mejuIpbVWBEsLg16uk6+hOaIk+jD4EeNTVTBq911?=
 =?us-ascii?Q?iNk3vuyqRx9IR5Qs0ATt7TE4?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1576.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1dbdce0-6e70-4840-c358-08d904faf33f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2021 19:23:31.8343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7G7iXEgBTGJTtDzdaVqYQEGSl3qq1M2ZHmaFal3GdnqTCfR1KZrCe5xr6Af8DNtI75pKkz4VSThEK8SlJSsEFL4Nx3+nWgKg1ur6gFusORE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 3/6] iavf: Add framework
 to enable ethtool RSS config
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Haiyue Wang
> Sent: wtorek, 13 kwietnia 2021 02:49
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 3/6] iavf: Add framework to
> enable ethtool RSS config
> 
> Add the virtchnl message interface to VF, so that VF can request RSS input
> set(s) based on PF's capability.
> 
> This framework allows ethtool RSS config support on the VF driver.
> 
> Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  10 ++
>  .../net/ethernet/intel/iavf/iavf_adv_rss.h    |  25 +++
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  27 ++++
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 152 ++++++++++++++++++
>  4 files changed, 214 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 09e5b9cf5719..1e996d9c1351 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -38,6 +38,7 @@
>  #include <linux/avf/virtchnl.h>
>  #include "iavf_txrx.h"
>  #include "iavf_fdir.h"
> +#include "iavf_adv_rss.h"
> 
>  #define DEFAULT_DEBUG_LEVEL_SHIFT 3
>  #define PFX "iavf: "
> @@ -304,6 +305,8 @@ struct iavf_adapter {
>  #define IAVF_FLAG_AQ_DEL_CLOUD_FILTER		BIT(24)
>  #define IAVF_FLAG_AQ_ADD_FDIR_FILTER		BIT(25)
>  #define IAVF_FLAG_AQ_DEL_FDIR_FILTER		BIT(26)
> +#define IAVF_FLAG_AQ_ADD_ADV_RSS_CFG		BIT(27)
> +#define IAVF_FLAG_AQ_DEL_ADV_RSS_CFG		BIT(28)
> 
>  	/* OS defined structs */
>  	struct net_device *netdev;
> @@ -346,6 +349,8 @@ struct iavf_adapter {
>  			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)  #define
> FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
>  			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
> +#define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
> +			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
>  	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
>  	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
>  	struct virtchnl_version_info pf_version; @@ -373,6 +378,9 @@ struct
> iavf_adapter {
>  	u16 fdir_active_fltr;
>  	struct list_head fdir_list_head;
>  	spinlock_t fdir_fltr_lock;	/* protect the Flow Director filter list
> */
> +
> +	struct list_head adv_rss_list_head;
> +	spinlock_t adv_rss_lock;	/* protect the RSS management list
> */
>  };
> 
> 
> @@ -445,6 +453,8 @@ void iavf_add_cloud_filter(struct iavf_adapter
> *adapter);  void iavf_del_cloud_filter(struct iavf_adapter *adapter);  void
> iavf_add_fdir_filter(struct iavf_adapter *adapter);  void
> iavf_del_fdir_filter(struct iavf_adapter *adapter);
> +void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter); void
> +iavf_del_adv_rss_cfg(struct iavf_adapter *adapter);
>  struct iavf_mac_filter *iavf_add_filter(struct iavf_adapter *adapter,
>  					const u8 *macaddr);
>  #endif /* _IAVF_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> new file mode 100644
> index 000000000000..66262090e697
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/iavf/iavf_adv_rss.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c) 2021, Intel Corporation. */
> +
> +#ifndef _IAVF_ADV_RSS_H_
> +#define _IAVF_ADV_RSS_H_
> +
> +struct iavf_adapter;
> +
> +/* State of advanced RSS configuration */ enum iavf_adv_rss_state_t {
> +	IAVF_ADV_RSS_ADD_REQUEST,	/* User requests to add RSS
> */
> +	IAVF_ADV_RSS_ADD_PENDING,	/* RSS pending add by the PF
> */
> +	IAVF_ADV_RSS_DEL_REQUEST,	/* Driver requests to delete
> RSS */
> +	IAVF_ADV_RSS_DEL_PENDING,	/* RSS pending delete by the
> PF */
> +	IAVF_ADV_RSS_ACTIVE,		/* RSS configuration is active
> */
> +};
> +
> +/* bookkeeping of advanced RSS configuration */ struct iavf_adv_rss {
> +	enum iavf_adv_rss_state_t state;
> +	struct list_head list;
> +
> +	struct virtchnl_rss_cfg cfg_msg;
> +};
> +#endif /* _IAVF_ADV_RSS_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 357e66e866b7..1323778f461d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -962,6 +962,7 @@ void iavf_down(struct iavf_adapter *adapter)
>  	struct iavf_cloud_filter *cf;
>  	struct iavf_fdir_fltr *fdir;
>  	struct iavf_mac_filter *f;
> +	struct iavf_adv_rss *rss;
> 
>  	if (adapter->state <= __IAVF_DOWN_PENDING)
>  		return;
> @@ -1004,6 +1005,12 @@ void iavf_down(struct iavf_adapter *adapter)
>  	}
>  	spin_unlock_bh(&adapter->fdir_fltr_lock);
> 
> +	/* remove all advance RSS configuration */
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
> +		rss->state = IAVF_ADV_RSS_DEL_REQUEST;
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
>  	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
>  	    adapter->state != __IAVF_RESETTING) {
>  		/* cancel any current operation */
> @@ -1016,6 +1023,7 @@ void iavf_down(struct iavf_adapter *adapter)
>  		adapter->aq_required |=
> IAVF_FLAG_AQ_DEL_VLAN_FILTER;
>  		adapter->aq_required |=
> IAVF_FLAG_AQ_DEL_CLOUD_FILTER;
>  		adapter->aq_required |= IAVF_FLAG_AQ_DEL_FDIR_FILTER;
> +		adapter->aq_required |=
> IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
>  		adapter->aq_required |=
> IAVF_FLAG_AQ_DISABLE_QUEUES;
>  	}
> 
> @@ -1646,6 +1654,14 @@ static int iavf_process_aq_command(struct
> iavf_adapter *adapter)
>  		iavf_del_fdir_filter(adapter);
>  		return IAVF_SUCCESS;
>  	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_ADV_RSS_CFG) {
> +		iavf_add_adv_rss_cfg(adapter);
> +		return 0;
> +	}
> +	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_ADV_RSS_CFG) {
> +		iavf_del_adv_rss_cfg(adapter);
> +		return 0;
> +	}
>  	return -EAGAIN;
>  }
> 
> @@ -3776,11 +3792,13 @@ static int iavf_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	spin_lock_init(&adapter->mac_vlan_list_lock);
>  	spin_lock_init(&adapter->cloud_filter_list_lock);
>  	spin_lock_init(&adapter->fdir_fltr_lock);
> +	spin_lock_init(&adapter->adv_rss_lock);
> 
>  	INIT_LIST_HEAD(&adapter->mac_filter_list);
>  	INIT_LIST_HEAD(&adapter->vlan_filter_list);
>  	INIT_LIST_HEAD(&adapter->cloud_filter_list);
>  	INIT_LIST_HEAD(&adapter->fdir_list_head);
> +	INIT_LIST_HEAD(&adapter->adv_rss_list_head);
> 
>  	INIT_WORK(&adapter->reset_task, iavf_reset_task);
>  	INIT_WORK(&adapter->adminq_task, iavf_adminq_task); @@ -
> 3886,6 +3904,7 @@ static void iavf_remove(struct pci_dev *pdev)
>  	struct iavf_adapter *adapter = netdev_priv(netdev);
>  	struct iavf_fdir_fltr *fdir, *fdirtmp;
>  	struct iavf_vlan_filter *vlf, *vlftmp;
> +	struct iavf_adv_rss *rss, *rsstmp;
>  	struct iavf_mac_filter *f, *ftmp;
>  	struct iavf_cloud_filter *cf, *cftmp;
>  	struct iavf_hw *hw = &adapter->hw;
> @@ -3969,6 +3988,14 @@ static void iavf_remove(struct pci_dev *pdev)
>  	}
>  	spin_unlock_bh(&adapter->fdir_fltr_lock);
> 
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	list_for_each_entry_safe(rss, rsstmp, &adapter->adv_rss_list_head,
> +				 list) {
> +		list_del(&rss->list);
> +		kfree(rss);
> +	}
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
>  	free_netdev(netdev);
> 
>  	pci_disable_pcie_error_reporting(pdev);
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 9aaade0aae4c..54d2efe1732d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -142,6 +142,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter
> *adapter)
>  	       VIRTCHNL_VF_OFFLOAD_ADQ |
>  	       VIRTCHNL_VF_OFFLOAD_USO |
>  	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
> +	       VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF |
>  	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
> 
>  	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES; @@ -
> 1294,6 +1295,102 @@ void iavf_del_fdir_filter(struct iavf_adapter *adapter)
>  	iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_FDIR_FILTER, (u8
> *)&f, len);  }
> 
> +/**
> + * iavf_add_adv_rss_cfg
> + * @adapter: the VF adapter structure
> + *
> + * Request that the PF add RSS configuration as specified
> + * by the user via ethtool.
> + **/
> +void iavf_add_adv_rss_cfg(struct iavf_adapter *adapter) {
> +	struct virtchnl_rss_cfg *rss_cfg;
> +	struct iavf_adv_rss *rss;
> +	bool process_rss = false;
> +	int len;
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(&adapter->pdev->dev, "Cannot add RSS
> configuration, command %d pending\n",
> +			adapter->current_op);
> +		return;
> +	}
> +
> +	len = sizeof(struct virtchnl_rss_cfg);
> +	rss_cfg = kzalloc(len, GFP_KERNEL);
> +	if (!rss_cfg)
> +		return;
> +
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	list_for_each_entry(rss, &adapter->adv_rss_list_head, list) {
> +		if (rss->state == IAVF_ADV_RSS_ADD_REQUEST) {
> +			process_rss = true;
> +			rss->state = IAVF_ADV_RSS_ADD_PENDING;
> +			memcpy(rss_cfg, &rss->cfg_msg, len);
> +			break;
> +		}
> +	}
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
> +	if (process_rss) {
> +		adapter->current_op = VIRTCHNL_OP_ADD_RSS_CFG;
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_ADD_RSS_CFG,
> +				 (u8 *)rss_cfg, len);
> +	} else {
> +		adapter->aq_required &=
> ~IAVF_FLAG_AQ_ADD_ADV_RSS_CFG;
> +	}
> +
> +	kfree(rss_cfg);
> +}
> +
> +/**
> + * iavf_del_adv_rss_cfg
> + * @adapter: the VF adapter structure
> + *
> + * Request that the PF delete RSS configuration as specified
> + * by the user via ethtool.
> + **/
> +void iavf_del_adv_rss_cfg(struct iavf_adapter *adapter) {
> +	struct virtchnl_rss_cfg *rss_cfg;
> +	struct iavf_adv_rss *rss;
> +	bool process_rss = false;
> +	int len;
> +
> +	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +		/* bail because we already have a command pending */
> +		dev_err(&adapter->pdev->dev, "Cannot remove RSS
> configuration, command %d pending\n",
> +			adapter->current_op);
> +		return;
> +	}
> +
> +	len = sizeof(struct virtchnl_rss_cfg);
> +	rss_cfg = kzalloc(len, GFP_KERNEL);
> +	if (!rss_cfg)
> +		return;
> +
> +	spin_lock_bh(&adapter->adv_rss_lock);
> +	list_for_each_entry(rss, &adapter->adv_rss_list_head, list) {
> +		if (rss->state == IAVF_ADV_RSS_DEL_REQUEST) {
> +			process_rss = true;
> +			rss->state = IAVF_ADV_RSS_DEL_PENDING;
> +			memcpy(rss_cfg, &rss->cfg_msg, len);
> +			break;
> +		}
> +	}
> +	spin_unlock_bh(&adapter->adv_rss_lock);
> +
> +	if (process_rss) {
> +		adapter->current_op = VIRTCHNL_OP_DEL_RSS_CFG;
> +		iavf_send_pf_msg(adapter, VIRTCHNL_OP_DEL_RSS_CFG,
> +				 (u8 *)rss_cfg, len);
> +	} else {
> +		adapter->aq_required &=
> ~IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
> +	}
> +
> +	kfree(rss_cfg);
> +}
> +
>  /**
>   * iavf_request_reset
>   * @adapter: adapter structure
> @@ -1494,6 +1591,37 @@ void iavf_virtchnl_completion(struct iavf_adapter
> *adapter,
>  			spin_unlock_bh(&adapter->fdir_fltr_lock);
>  			}
>  			break;
> +		case VIRTCHNL_OP_ADD_RSS_CFG: {
> +			struct iavf_adv_rss *rss, *rss_tmp;
> +
> +			spin_lock_bh(&adapter->adv_rss_lock);
> +			list_for_each_entry_safe(rss, rss_tmp,
> +						 &adapter-
> >adv_rss_list_head,
> +						 list) {
> +				if (rss->state ==
> IAVF_ADV_RSS_ADD_PENDING) {
> +					list_del(&rss->list);
> +					kfree(rss);
> +				}
> +			}
> +			spin_unlock_bh(&adapter->adv_rss_lock);
> +			}
> +			break;
> +		case VIRTCHNL_OP_DEL_RSS_CFG: {
> +			struct iavf_adv_rss *rss;
> +
> +			spin_lock_bh(&adapter->adv_rss_lock);
> +			list_for_each_entry(rss, &adapter-
> >adv_rss_list_head,
> +					    list) {
> +				if (rss->state ==
> IAVF_ADV_RSS_DEL_PENDING) {
> +					rss->state = IAVF_ADV_RSS_ACTIVE;
> +					dev_err(&adapter->pdev->dev,
> "Failed to delete RSS configuration, error %s\n",
> +						iavf_stat_str(&adapter->hw,
> +							      v_retval));
> +				}
> +			}
> +			spin_unlock_bh(&adapter->adv_rss_lock);
> +			}
> +			break;
>  		case VIRTCHNL_OP_ENABLE_VLAN_STRIPPING:
>  		case VIRTCHNL_OP_DISABLE_VLAN_STRIPPING:
>  			dev_warn(&adapter->pdev->dev, "Changing VLAN
> Stripping is not allowed when Port VLAN is configured\n"); @@ -1683,6
> +1811,30 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  		spin_unlock_bh(&adapter->fdir_fltr_lock);
>  		}
>  		break;
> +	case VIRTCHNL_OP_ADD_RSS_CFG: {
> +		struct iavf_adv_rss *rss;
> +
> +		spin_lock_bh(&adapter->adv_rss_lock);
> +		list_for_each_entry(rss, &adapter->adv_rss_list_head, list)
> +			if (rss->state == IAVF_ADV_RSS_ADD_PENDING)
> +				rss->state = IAVF_ADV_RSS_ACTIVE;
> +		spin_unlock_bh(&adapter->adv_rss_lock);
> +		}
> +		break;
> +	case VIRTCHNL_OP_DEL_RSS_CFG: {
> +		struct iavf_adv_rss *rss, *rss_tmp;
> +
> +		spin_lock_bh(&adapter->adv_rss_lock);
> +		list_for_each_entry_safe(rss, rss_tmp,
> +					 &adapter->adv_rss_list_head, list) {
> +			if (rss->state == IAVF_ADV_RSS_DEL_PENDING) {
> +				list_del(&rss->list);
> +				kfree(rss);
> +			}
> +		}
> +		spin_unlock_bh(&adapter->adv_rss_lock);
> +		}
> +		break;
>  	default:
>  		if (adapter->current_op && (v_opcode != adapter-
> >current_op))
>  			dev_warn(&adapter->pdev->dev, "Expected
> response %d from PF, received %d\n",

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
