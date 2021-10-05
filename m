Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E904422E04
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 18:33:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15442405F2;
	Tue,  5 Oct 2021 16:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwEUnB39WB_W; Tue,  5 Oct 2021 16:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEFDB405B8;
	Tue,  5 Oct 2021 16:33:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EB631BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6995660715
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mt8rtNXbPLbp for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 16:33:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8131A606A7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 16:33:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="206603448"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="206603448"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 09:27:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="477743944"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 05 Oct 2021 09:27:23 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 09:27:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 09:27:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 09:27:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKDsC8x+4+iyAOoemDbD6hl+qA+yW1FVfNj8FU0PIb+gAq9S6Y61oC+BtAZeHDdwumnKqKl6qp0UPtB9eQRZjXmfxSTHPiO63BrqGcgPpPz+wEzKNU3Up4NbWrvSapTahTeAdwkExztDmgYE1cJp3xn3jESFYxtFCLlm3Y3fOcVorN4pqAdmlnQEcszySD4WL6Z9ajIADO7grNeffCgp8NM9TKHkU95MKAvUP/qaJ/b1TzEWeBavCAjDgU4cHaV825CLgNbHmyA2AQM9O8MQb3r+1suy8edV2kzi7yyCEiSa58VH4TayLlWCXVjljwjQ4JFj/9gu9FZP3/IKyDGVWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pW/KCoFhPo02UgZLKY+Ua3owJn4Yzz7RkCll2KQuUs=;
 b=ncn2T81UF7l1vmcG4jBjpIaHuXTSR+3rU2wwD+fUQCFKSzb2cWIYZ08etqgKIGxSu4+zHXbPsL27/u3lCYA5H2NrJO7tReHoIseskRQqRafo0bDHIVHob2QsNuckCeT95sd85sbkHjtT/+MDXWr2emmNrqNfuZtzNC06xAR4g5Qq6A721HQKVGuYnHbYcYDZ+hlBIbxBtk+geg6O+HfzvFokEmVNO9pJcwqBJFU6MU9cyT/jcenJpYteMUUuA4JCgD0/pLBUQ2WKsZ7/ZR0bixPZ68uRxuH4zqmPRue94Yv8ILf+WIpZroV6f0F1HTE/QNupOInFutHCcYPaE2Q6fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/pW/KCoFhPo02UgZLKY+Ua3owJn4Yzz7RkCll2KQuUs=;
 b=eXTakgDT4e00EnKfR8+6e0ql8ndnrqcQddpsoV1dgBL24Ilfvnn/AejiGXSlPrOAdC6/M7IjSoKlwQUxzr4bn9rNKKB9TiQTcVpw2r3/8H5zyUCkUHFyDbUzFsi+lFob+d+D3pD8Xrv/k5dWCMODyJyxjhg7yxze6tK66DcE+7I=
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.13; Tue, 5 Oct
 2021 16:27:22 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::e892:b78f:aaf9:b34b%3]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 16:27:21 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-next 3/4] ice: Add support for
 SMA control multiplexer
Thread-Index: AQHXk1qh+EYuwrUZgUq7celWizN3d6vE43pg
Date: Tue, 5 Oct 2021 16:27:21 +0000
Message-ID: <CO1PR11MB502886072DC33688FB7F8BFEA0AF9@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20210817110918.1937113-1-maciej.machnikowski@intel.com>
 <20210817110918.1937113-4-maciej.machnikowski@intel.com>
In-Reply-To: <20210817110918.1937113-4-maciej.machnikowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55c3441b-a755-4b0a-6461-08d9881d0206
x-ms-traffictypediagnostic: CO1PR11MB5042:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5042735AE14074894EBA1095A0AF9@CO1PR11MB5042.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:765;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mitfGx8bwAaVS7pvodCvHGOVfsZ+Sr0evM2eRwMsd2Cltqe/FKXqWFh6rRvCQ4LT/t+LnXBQ8nIIM/oqWyglqhRGjaxFHBTvj0Rpc/Cp0Zl6lzl09vDYmlEUsflkDFcwIjrW/WxvcqLWJOcfQ6qr4xud0w0v5+gu8IOi/cSxItM3Ir+q25UKPQq/ZNFHn7QruqO24bMWf6Favy9rxL8XN5A+TdBlwExQfc6YNs5YfVp/YZMDoXdUjksopNAF2ixr32taunenKLiG6mGorG0i6VzXLxGxeCdnBQjNoEVcCXPypH+84xFQyCzqOGb4CUsgpYPNNuib5gIqHZ5HNLDdZwwbK5CBOX8OhF9zaH1JLsfeU/R1LZf9vmIDWx3FcuWeKjuFSPcxKUvGtGhGWUDWLpdCy/OHr/Y4wMRdP9rTrf/ooXRECmSkLicS+khttyxbGEibrFyKx/uHYkade/s6KYReQ2av04i5iyf8FvTJ6YIffvrX3DWwdg+DHfAKEYfr2kmdMGDWz/PFqKz7JIHHHxRy4ML82s23JTiBxlc9oovJzxtab0IJ97U/d5a4Tk8lqXpRkKPBePcXwRZvNnRAIP74y7GFAqVM/iWos6OW1N83ijm2r+sJqeQK/qDu99LDRO0Ew2UEln2d7TUIm393Dk1FzuNnqrqAlVRPyYTMGZ7ikMcksXIGmwfQ2xl8gh6P9QWEeqCjwVLkM08R9A7y+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(316002)(7696005)(33656002)(66446008)(64756008)(76116006)(38100700002)(66556008)(66476007)(2906002)(71200400001)(508600001)(66946007)(8676002)(6506007)(9686003)(8936002)(26005)(52536014)(110136005)(53546011)(5660300002)(38070700005)(107886003)(122000001)(83380400001)(4326008)(55016002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zAfFKDYiHKZHxOSpuWpV+d20jKpShuwGO2WEbomU3M6k2IgLj1HjH0i+dcOv?=
 =?us-ascii?Q?Vm+m9wptXsvuIDQaJhBe8MGIBX3o/NIIpOFUquYFSfr778xsZEitgFuVWS95?=
 =?us-ascii?Q?Qv+D7rzLFvjU0WLpeL5/+CehVigOVsNEoWYQWDkyHzVMlQheRiW13uExhPeS?=
 =?us-ascii?Q?UniU58fTc/B0s0jA48+ODRkIWwTexCUnKEDf8ZuCE0aX5Bj75KHVLEN3UG6r?=
 =?us-ascii?Q?IobHsIotHTZ/yNlRdQSkbHXmYMiEjyieHgYBbhA8GHabCTGqDckGl15+XGq6?=
 =?us-ascii?Q?oW3K5oKtKC1qvFIjD4rR4QFCz9qlM97kOwfj+v8SLugpmKlyjW6/0xwQkd4o?=
 =?us-ascii?Q?NSLO9HNv2FqPIQIrrfy1vD9hdHHk91d0tnFbo5bDQj747pkqRH+8S/J5cXLC?=
 =?us-ascii?Q?4pURqGyoc2qd2ixwybjZkwpj7YJSyC7T6W24DpXL4hsj/xRQaLv5P/7aSdGx?=
 =?us-ascii?Q?uGFZh5qh9UYp7jTh6cc7ntf5frbjjVXT6dNaHoYxIys7+RPN9GkVTvHLWtM+?=
 =?us-ascii?Q?JERnsgRrioey9/jxhkwx4YsDYXknDtZHOfnYmjXymcLzm9PXMCYvBgdH0KLz?=
 =?us-ascii?Q?u/jktQq0C2/ZAH4YIddcvGcq3sK3OJ5w01GSowb3C+E0y0Gj3cvZ/ViK5y8Q?=
 =?us-ascii?Q?XFjnIkPsBNA7ecmX15e6WyaAoXY2KJ5cmN4LzArbw0TvxLui2TruRvmZ9LVd?=
 =?us-ascii?Q?flYKwanZeEGKf6ioBGwZINfNCsGOqoJi7pGds35vHiTYc5J+9oasbXmyVkUm?=
 =?us-ascii?Q?deVUoqZYwcC025p4rlxvWgDoMK1At0B9LbpW5Ufa+F/DZMi4Be9MaNnmg3Nh?=
 =?us-ascii?Q?LcJQ0VUfOSKI97Vdk+iDgu5u/95fTQ8qOgkfsW6/Jm6lia9ydBdvHvc2YYdo?=
 =?us-ascii?Q?aqcdqYbrq3PRWP9y7Xb6lWx6h+stgYg1UmJuiZJzuJ/I916ojkzpBcklR1dA?=
 =?us-ascii?Q?lf4Sm338CkRCQUAOMJqLlMpe9ZZorMVNTxWPtN9nSzNfl4hthKm3gpNFwlQU?=
 =?us-ascii?Q?mmtMlo73KllrLi6vW5DiEMs8Y3kKb+fwxBFv7q19G4M3mZakkI8mlY8iZ93b?=
 =?us-ascii?Q?Zfq3LHguxt1XDDZewpoD+/XWPzYwIDBUKUeb4Kc7EbfENEVVlsR5dhRuveSp?=
 =?us-ascii?Q?ho8IksS6+gnINk0d5woj2oBEId5035XduVrunHU0MhycVLXM16xww8Pzztr4?=
 =?us-ascii?Q?1wYZz69wCnH2asZahgit/7zjTDBMjA9rUXCZQutbfHPoZ6fxr4yj0XQr1rAI?=
 =?us-ascii?Q?+o/StyGdDeTROHDFLCiLDn5A9wqc8Gm1/YxMKzC7KtBNslp/gCAbql1IGWnY?=
 =?us-ascii?Q?n0p2nXYHvRdUtNj+8Eb9FMCc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c3441b-a755-4b0a-6461-08d9881d0206
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 16:27:21.7057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4d85XD7MXkJZKmlTg0HqhpJmXzq+z0j0T/odoAY8CalKuzbGlU+3nHq02e0ePxL9HkqeSp1NHpaQx8/OlHvATRyxlI9P8CAlxxYwdVtKH8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-next 3/4] ice: Add support
 for SMA control multiplexer
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
Cc: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Maciej Machnikowski
> Sent: Tuesday, August 17, 2021 4:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-next 3/4] ice: Add support for SMA control multiplexer
>
> E810-T adapters have two external bidirectional SMA connectors and two internal unidirectional U.FL connectors. Multiplexing between U.FL and SMA and SMA direction is controlled using the PCA9575 expander.
>
> Add support for the PCA9575 detection and control of the respective pins of the SMA/U.FL multiplexer using the GPIO AQ API.
>
> Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_common.c   |  21 +++
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_devids.h   |   2 +
 > drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 156 ++++++++++++++++++
 > drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  22 +++
 > drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 > 7 files changed, 204 insertions(+)
> 
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
