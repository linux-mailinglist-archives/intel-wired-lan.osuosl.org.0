Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F6643C5BB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 10:56:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 841A980C8C;
	Wed, 27 Oct 2021 08:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeK5f7tGTmQW; Wed, 27 Oct 2021 08:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A81680CF7;
	Wed, 27 Oct 2021 08:56:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 288521BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16DCE80C90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x4ldcj-Pp520 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 08:56:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B420D80DC2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 08:56:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="253661978"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="253661978"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 01:56:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="465661597"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 27 Oct 2021 01:56:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 01:56:09 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 01:56:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 01:56:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 01:56:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RYMrcQV11pNHvIJgPg6HOFTPbRbhLkBRsMcdDTJGOixPk4G0U9fE++Sc3IielLP6XIqHeuiX6X6WhVcnSnQtMXpoTH0ndn/W9Haejw96JiKAVn/NkZdq4k3TRTyBj7+1LWpiBayR3w+TMHa9tQ6WJs/AohLkJqZn9QKwrLfACW2g3VIoPbuWDwsovVTsDx553o2tRX/fXNUJvxA9oY8bp6wg2j7B0UOg9Nzzwonx7TCmwKgIpbaLBSY3/5wDJef8NgexGRUN8yOgl9i47y8sbaz1RY9P9woEMgGwiLgJRK4Y4sGknzmJMFkGWCo7x4JG6LHKbwz47yW5liMkS/K+Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6GmSOLTAPiRIDzenJlN85LrwyIElqpsbGOxjZwyJS/M=;
 b=CahIM/Wcxb+zeTtwbI60gRmTilghTpuwK0+ZsQe9rBQV8n7ATKp2K1BF8UMtRgSB+APPWj43aXr+l4S0JrvEt+2bAOe8YLU08dxs07hZvSj5beWPKjZqEfoyxR+FFXOnrEIhV1mKauIwER/anmAnNB5ciQ19p8FMDsZsJybeTopVK/SAFttlLkqaYrmCEk9lp0j9ubyqWBga+nZpPY01uQlKRcjfTMPQRHuxir7YKPeYZ1k7g05ArY8n4nAtGfUuYtvq0WMW+r9v3GNCycKZDSRvA3PVTFraAty6QodMImS6B31Cud9iagDYqMUbxc32RvHm4lbPi6WsJYWNoew1PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6GmSOLTAPiRIDzenJlN85LrwyIElqpsbGOxjZwyJS/M=;
 b=DZ2OTjBfV4/6Kzd2GSmBIt2BMm8dyVhwGrlLCL6QVCZpDG/0AXXpSc4YaOEGGu7UetA0jtxoRug504x2WaFTxEBnIqAjPaMj98OHxXdK/du1kJlZc0MPjE04NhjMp+uhLlPWURzkSjoN2xoA4uNVtGF+piSgNnGtp68afmv9L8Q=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5640.namprd11.prod.outlook.com (2603:10b6:8:3f::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Wed, 27 Oct 2021 08:56:07 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 08:56:07 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper function
 to go from pci_dev to adapter
Thread-Index: AQHXqfzE1bm2tmyXDU+Dvr/VecrdR6vmzLUQ
Date: Wed, 27 Oct 2021 08:56:07 +0000
Message-ID: <DM8PR11MB5621D240B634033A5BB9B029AB859@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210915064123.69945-1-karen.sornek@intel.com>
In-Reply-To: <20210915064123.69945-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df2f08fb-8340-4acb-1160-08d999279d70
x-ms-traffictypediagnostic: DM8PR11MB5640:
x-microsoft-antispam-prvs: <DM8PR11MB5640D890EBE89FF5ACB45062AB859@DM8PR11MB5640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7ZSpSolT4BhMSN3XRTQDp89NoZKXNOpHhAX7iXzkFXXCF2BE80SozzSSzchBelSppNHDw7jc/q4xeZ3H+Jz507QUtSqFxot3fNsiQg/+3nl14mnFckIALGVTyNX74nDNrnC48hOAFIAySYmCqhige0VFIp/ElIpziP3pA4ICZs5C07rr2DxEnrJVi2UrPMYM/SDhuByuOa9CUK3+0f7HiJqc+5DhA0tPujQsdEzFz3cb4TvYrSffTgreB4X8LcdDmRpVDKUuntbLDfSVPMhhmqyXUsc7dFuHGajq03mn8vNPzYvN+jPJmnFFCiP9RZsdIAJol2JReKmq1FWmk12+MYwvGDRmocu/vpYpM/jeLvepb0qBKLEOnt9iUhhghmf30+h1UMsYNbZwGjiJsUno9EtZBx+kMfwzKSH/s69KvLGr94hbpkW2ChGvjOSGRVFeZDRgAhS5JfUkH0gBgTgZhGabvPxl8sU8Wv95Xjr6bO947mve7XjzoTqnzG6mb2LNpDl6mWLnUdj8KRPQ8ZS1BAbqUyTsJmhJC2k5npd4EW1qwye3shkSIRhf4zbUdO8euHjWSJ1HjRF9Jt6nobrWQoO+/0ZcjUrL8ctyQ8E2jlBc1+l24KjxmaamAC8KluttQ0Vlk0Hr0gYCmWECNYOdmKmD2f7a37MNmqOmCWxtzB6Ao8E80HlUALO66PGbwunlz6cb2hCcFYZYnX1E8iHdfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(86362001)(82960400001)(316002)(2906002)(5660300002)(7696005)(8676002)(4326008)(107886003)(33656002)(110136005)(186003)(66446008)(76116006)(66476007)(38070700005)(66946007)(6506007)(64756008)(66556008)(122000001)(55016002)(53546011)(52536014)(9686003)(83380400001)(71200400001)(8936002)(26005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?kgRlNjahEC43ch6ADhoFTz1JxcxUWYKbiy3oIDrum/eJNe1U39p+dPgM8Y?=
 =?iso-8859-2?Q?lGgfJfJDydyxB+/tIFn82nx50MCNKHLyBqqk8b+LcL5SHdG3v8znE06if7?=
 =?iso-8859-2?Q?VggnXVqcidLE4D9wSq9e0h/cAFayFvHUDPC8b7JQuwAetNh88BdVXiZyUo?=
 =?iso-8859-2?Q?Xelnbk8Nyr7yfU27s3A8BrC70vPcZdDVANcg1NU2JAIMUpgXNU1xdseSo+?=
 =?iso-8859-2?Q?470tCClajs/5gUY94WC7ltu5PTJ8lzvlNSEmFZIFWZzaif3QoohAx0gFO8?=
 =?iso-8859-2?Q?PzCA+mI2ZdKS6h0qD3ldhvEdWzCiiaaJ9GfURmUp4G86d24qoy9XmCLfPx?=
 =?iso-8859-2?Q?bbwr8XV2pF+X6UfihIkfmaniFbMWMw0iQdBaP4AoSYFRYhjx4sl/WFRwla?=
 =?iso-8859-2?Q?RoFbQ7amcdEnfIcxMTQhHuzaE4Y5c9usz4dxEgMMGboaf5opO8y/RTNsd0?=
 =?iso-8859-2?Q?Jdq1ilcgNkreOvamWCDOvHjy5Z/u0JwSFZUvXQCe7bDZ2zuaU7+LLDPc+5?=
 =?iso-8859-2?Q?3YkgnIs009S2X/lv6P9++NKUaBVyr0Dhz64Xj574kT43HMM8NxFSbYKO2s?=
 =?iso-8859-2?Q?DpfBJznp4qjpQR9pUfZUF5FscIAcw3rNaXKCZ3rJoghSkxbPArBZ2dE2OO?=
 =?iso-8859-2?Q?g+z5TRbenFdD/UUCv0WvEq3QR6mHXLM6ij59iOzY2w8OHk3dZvKfkEQYt+?=
 =?iso-8859-2?Q?G77b3lm6rIwbM5ZodS+8eHyFI7Rcmp7NfpmHw8+7WWv2Me/Oe3op9Yb/zE?=
 =?iso-8859-2?Q?fLT/VRU0IVHIdRyA4e7Ku6Aq1HY1WOYVEnDhchcQu426RVdnzPab3ei3xL?=
 =?iso-8859-2?Q?yGqMWqLHKyeN4ys3XAYNflWTmDSdiuAmi0j/0pSZIzixPZZubr8qo0BKTX?=
 =?iso-8859-2?Q?wY0rqpfvyLpZ6Y9Yl7lAfEBswjBetYRM+3mWGqW89jgPOzbxFdSU18RSQc?=
 =?iso-8859-2?Q?7iuuKWAEN5CGYctWy54HTgoxBeV8sNXt4d87hVhUbXg6jLWCcIuvLSvp7l?=
 =?iso-8859-2?Q?otl4ZrUJ0xFyqayMVKp6n6MjFsaVy5j1zSVpZgW5tN74z9iW1+k2ezXeIT?=
 =?iso-8859-2?Q?ThnofKduujitkCYP/ysQHWdoLeqMR+SGi677j3fBVemtZJuFqlmfwzKDWt?=
 =?iso-8859-2?Q?DX423nblMgU9PBqCAczlDa9AjpTQVXOI0Ck88R83EcyWRPFps0U+vwgl8x?=
 =?iso-8859-2?Q?h1JDBvLcAbtb0iFlObgES1VFzotiCXZZuueGpCs4lEV9WUbBlir9UonWlL?=
 =?iso-8859-2?Q?EGsWJP1pYk1Y7xUfe2lTmxPXjC6V3pgDTzNI67K9QpVQlGDuMfHGMefMNR?=
 =?iso-8859-2?Q?W7REfWa+AjnDJSp0jpel40weeLsTkAInh3UuuzkGHcEw3JDiDn/waQb4DZ?=
 =?iso-8859-2?Q?uu0P5MDMx0c63zk7iij7amytG8BbQJPLAcJV6CRXIsYQDl9hZmDW9enxnB?=
 =?iso-8859-2?Q?fjeptPqSjhbBjW5PN89IlPwEcDyu0ORJIG1k6dA1l9SoeYSaxGTFI9Wxd8?=
 =?iso-8859-2?Q?qknTWnCDt3hZxX42RQMjYxTgE5J1jNh3+hV/HU73KvIX9imom8ef9A457s?=
 =?iso-8859-2?Q?o2TuWhIpctL1PVyLmRTHHt0kb9L5gGevZERwGpXXtg84lmn2nUpC8+CIb6?=
 =?iso-8859-2?Q?n2NTi4vmm04SvZzBSj3zMD/YSqZkE8jRrP1WQcripSXNIozOAIoLKsxeTJ?=
 =?iso-8859-2?Q?2PIW6lJiwQbSsoJdFZ+QFkxhHZ4nXoIsJJ919j9e49qXOSBX27jOefX26C?=
 =?iso-8859-2?Q?BrgA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df2f08fb-8340-4acb-1160-08d999279d70
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 08:56:07.3210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U3kDK7zhnwM/eaZS5GM284vMG+vBTVf2pdsSu6qlcWEqITiT7Y/Dcy4XnB5v4CnE6Xa4DEyhVWu16jjem6bSTfbbBCrlxandLcR/PQnYAMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper function
 to go from pci_dev to adapter
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
Cc: "Sornek, Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: =B6roda, 15 wrze=B6nia 2021 08:41
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Add helper function =
to go
> from pci_dev to adapter
> =

> Add helper function to go from pci_dev to adapter to make work simple - to
> go from a pci_dev to the adapter structure and make netdev assigment
> instead of having to go to the net_device then the adapter.
> =

> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 24 +++++++++++++++------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 80437ef26..39620fe6c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -51,6 +51,15 @@ MODULE_LICENSE("GPL v2");  static const struct
> net_device_ops iavf_netdev_ops;  struct workqueue_struct *iavf_wq;
> =


Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
