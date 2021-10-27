Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A23B43C6B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 11:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E8088401EB;
	Wed, 27 Oct 2021 09:44:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qIYPY90uN1f; Wed, 27 Oct 2021 09:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09DB403E5;
	Wed, 27 Oct 2021 09:44:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D7431BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 09:44:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B445401B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 09:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KI70kr1IOuyI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 09:44:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7FE4B4019F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 09:44:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217032838"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="217032838"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 02:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="597297407"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 27 Oct 2021 02:43:56 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 02:43:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 02:43:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 02:43:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=InFRQ4tyuaakqPP/olVdkl8xiaBfgW8PcP1g23DlJc5tNKdMpqrlEcS4yVCUcOcxveflH0A0E38kruj/KbOo+Vx2lUA9ou+7gH2+zVV/Phj0jml9gCiMObSpHWIBRUrsgYxp+vy2CArQkvNTOe5NPgimZXFzr2xjWkYDe1U7N/pf20Ali92wuc+Ghr3tXCNNk5KLCYeXuhASCl5VeDhipf4WZ2oERdAlEBZSye20y+RAGDBuhUeTcjQiiHwUrV1JCpu7V0Gal/ytpBiOOYDxtJtfPme3SEyjNumi31uWKPQPnTjU/Bs39TIzOITBDTIv0dsAtqH3iuxxzqo4SEouVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWgj+PCsU3FwXbrS6orunztaMM6INUwoRQqF3Y2NOWk=;
 b=jPHaPeq95Bzo8SA+gODtgEJY9Gj82hezUFyQtr9vKtdq5HeOjD+lQ+/dCBUSoT8ZfwYTf7HWp6yZiaFqKrjEbgnMMDsgg/cQ5k4Ogy0dkrw+JAop2PSjCJuW8Vdpha7IDZdtXq9jvuHdexUVYMnA8Ew4lFFlm5cPRKT5B+ebWU+3xL+sjCZ7VRqPdSBBV+ZRkcOI/ziKzlHK27+rLbkIViLSReP9u34R5f35eSixCzBbL4S1JzdIY7q6XKtUDQBKhsZLdojWYlH1+CjrO7STzrqyfFoD7i1TKwoVdtm2d9Td8XAYDdGOGGoyJG6bLBygID6InVfkpcvtSDN0aWJPKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GWgj+PCsU3FwXbrS6orunztaMM6INUwoRQqF3Y2NOWk=;
 b=bqyONkVeqR+NKOtIOqe+H/eN1nepVhub+kSTDRDaGNvt1AtwRVYYUXuPUbs9sqVEiOu6BoZeT4xF1FnxqG+sSEw6HNa2ULtvghYU7Syrl7hqfro/Njb/3pVqYNkGWZLCiSl11IJ0wse3lUDeTNmjwxrvVhc6cRbh42GMXjwJ/ws=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5576.namprd11.prod.outlook.com (2603:10b6:8:37::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14; Wed, 27 Oct 2021 09:43:53 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%7]) with mapi id 15.20.4628.020; Wed, 27 Oct 2021
 09:43:53 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] iavf: Fix displaying queue
 statistics shown by ethtool
Thread-Index: AQHXq6Gr1AZAGSkjRESOzU/WcbktSqvm1uMw
Date: Wed, 27 Oct 2021 09:43:53 +0000
Message-ID: <DM8PR11MB562193FB11AF13AF3E085E72AB859@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210917085252.96965-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210917085252.96965-1-jedrzej.jagielski@intel.com>
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
x-ms-office365-filtering-correlation-id: 46fd1dd2-de4d-4be5-1871-08d9992e49ff
x-ms-traffictypediagnostic: DM8PR11MB5576:
x-microsoft-antispam-prvs: <DM8PR11MB55769FF1044F5727EC2FF523AB859@DM8PR11MB5576.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XXEoRB08TZdJtY3ymVJWaRdAA/h6GHv0O7l7oVSvanJGC34YJN0GtCTdz45t8y/1BtPPkivP0pK06RvT3FENXyF2Mq+8T98fmTq84TPCJGzndYIJktcnwTP8c19cS5zXVvICpv2GT6mO8uBAzX0uXyAoyYe5C5ZBnDto/I0XWHahKuBzNS6e5G4tGrDs4YKBwCpgvZt7rgPE07LIoxt8AvRwTMi2AOCcCfNcUY2doeQYs7LIoB0CR9xGTmzPfS4xn3FWsLmJmYEQfoQDCbPUE+WPx8Ccmkew5YblStsrfH5VRcB/r/ni/zckpkhlJRz+W6vrom9BZ6f9xOPuli3lJK7vQmFv+U0XNU0jdP4twlR9Qsx2hG/oXXQKEkTlmgj/H7vJPCAnrY5ekEeWkPnATRXz0Zb+sBgOB5hmjMezwnaI+EgCwgz+kdhe1EKsBlTFO5Oa2cpEtKvgIuzVVtL6l8+DgtyYTCDQmNhP/tpCCjPy+AiSzbQJAi/Ai3qQVoc7x68hXLABk3QpiHB3TfxFLRLpEDUug9BvxW9wW/g+8nA8pngzYKznUuFyfj/m99zACxHMNzk6zf62qjWD22pjSEASqrw2bFsFdDexdC/LgZPTCvUANeHPAATSuAGTpRt+hmpPQuTC3UUh8NpeAuaJCNkQof6FNy1VTMO3Meu3fewBrLxOWryfbndHODVsQbNE3wrf5U+mju9bPAvHR2HnHw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(508600001)(2906002)(8676002)(186003)(83380400001)(66556008)(64756008)(66476007)(52536014)(82960400001)(66446008)(86362001)(66946007)(38070700005)(6506007)(53546011)(7696005)(76116006)(66574015)(33656002)(9686003)(5660300002)(110136005)(54906003)(8936002)(55016002)(71200400001)(107886003)(316002)(122000001)(38100700002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?462V1edgp0gCVItR/2IpQpHkVsM2827yLRNdyLhqw+FQaEWlkA0pd9MovZ?=
 =?iso-8859-2?Q?Ehn+cXvgRMdHHW4NCFhp+hrTpBc4ujcjimKmX+kt6s697zgwsJlsrK1WEL?=
 =?iso-8859-2?Q?zS2udxivxhE0AQf8Y7jTQ8biJlS7jxIVqKdyy6DIRHrtuuzCwqrDeik5XP?=
 =?iso-8859-2?Q?omUXZyzPtSTXIIigRVwO32qCnFSyoTzRXNnGnTDRT6FjV7LUJjv7NxRcsS?=
 =?iso-8859-2?Q?rWt3lejz8XwT0dr1hsmHPdCumKQEpj8rgyyt7QYBRDoiBSePxL8RRZmbfm?=
 =?iso-8859-2?Q?Plk0GhB7BQu4cdpXhbzVnidqTuzV8ARBlBjBAKWkyto53oenVHMOdVj/Gn?=
 =?iso-8859-2?Q?UJn5oUSDQ6mADRibAYmLvssHTIVJ4bmFi6e/kRsP9fe/ppdWENjjk/DSmM?=
 =?iso-8859-2?Q?HeRDGFRlM6HJm4M6jQZXzG86BnPhoG3mg7zPKQEb43dICckSHWZnFKMZPf?=
 =?iso-8859-2?Q?6RpFRy5QB4XXfEcEkJ9zsdVpkvpUO5tnOPNW8IvqPoLLQ1t+vLkXFSM76B?=
 =?iso-8859-2?Q?QFPqHOLEreJ84HSc3bj9kAXNSDyxWKB6R/HE+VSGs7LYHrB82kWfPx1k6e?=
 =?iso-8859-2?Q?gF/iNQLZz9NGbmvUYN69Pw9U+FJQVd/M24ZtI6dpZZXh9hJAEp3QJET2Rw?=
 =?iso-8859-2?Q?IhcaEB3wiPBn3p1o6LC/ZpoRNU6ccP85Ng94HnP+44EZpWfY02fxvR5gFK?=
 =?iso-8859-2?Q?ROrq/civwypEMv4YDoEQz7XKyw7/wojmgJ1rVMdzSiyE/o+7EdklocW5Xo?=
 =?iso-8859-2?Q?75VDUUiDwc1Q2eL5y0wrm6B76AUVzqLhyQh6Z2TmwuEuc0plG3rfweCOo3?=
 =?iso-8859-2?Q?wByj/TH3vp/2CF5sgrfvhs1mBsP7LY/mKPYXZD+GFxep8cV2u2NkxrkTPP?=
 =?iso-8859-2?Q?lJOu8aGoUpkxEP11VcI0T9bQM53bcREiWOAFOMJU7kxBnQc1qg7zam4WJO?=
 =?iso-8859-2?Q?GA6UIIAYn2SGgB8llOHgrQggMCoMy86ZISGYmk0ppNdBFKInzvEH61fSB6?=
 =?iso-8859-2?Q?qj4rt0MmKgpW45G+U/4ZIVKyZqnalE6+jaui6BqVbFxcVW11QoUcNKA0uq?=
 =?iso-8859-2?Q?5Bk1o4zfuFGWqR1IJ4Hz8UvGMjDNU9LwYAVA2D8Rhq9q7p5iKJ0QjCGHcr?=
 =?iso-8859-2?Q?VWnT8oqScpjTTpcxajgiy7uMjqO3dGmLHDEQD0/v38ZruEbJYri7iMEo9a?=
 =?iso-8859-2?Q?XslS1Cp84ymcVejLVZqIEx662OZAmKXvG3duhwtxCe+C8jGDkGI9qXHvOd?=
 =?iso-8859-2?Q?3HxGy9+xtY4noiuAPEIMEBQFlyBqMy8IRDFFROS0G5hst//dIcdFgwsKi+?=
 =?iso-8859-2?Q?gtgNvXrfSoVMiIVaShV0FtOl5sv9kFsxYZ3X067gDL4H5i9/HxhImoRxtt?=
 =?iso-8859-2?Q?tYI+fhagZ1Xf9tuCJQPPEn0YSpB2y6czWUmzFZGL0xLb7HDJDSlqznn14V?=
 =?iso-8859-2?Q?jORHNGQ26oKaquCW2TTQ1soQ++fNAj2WYJyZlri8VU9WCqHgg+6O6TnBH1?=
 =?iso-8859-2?Q?47irXDBbTl5zuc+RxFSgd0Drz6j+MZyr53JE8IsSn45R+yaNei7Z5/9Mg8?=
 =?iso-8859-2?Q?gF798CtSgn8Y2rew+i2a8VqSs4Q9KuS14G85yoobCCZTE2L+zjnmTMlhdu?=
 =?iso-8859-2?Q?BExbsnPfpeJAOSmjuD+NFplgCcZ1RB+bsn7/uiIq/rVUpDEj2OKj9la4NU?=
 =?iso-8859-2?Q?dZ9wmtK4kHSjJFb7Iexlv9WXSI6+R1kajkhViYx0PGpV4oztGq3fHiWSxZ?=
 =?iso-8859-2?Q?qnFQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46fd1dd2-de4d-4be5-1871-08d9992e49ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 09:43:53.7510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MgkGb05OU1/PIk52TwxrqPZibLlfl0KBnC7lut0lmXLZXgWAu0KpwlyH35vg0+UG7U+RhQ+eRqSixMIsW+VobUBTk3n/YYFAuAc/gI7JnX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4] iavf: Fix displaying queue
 statistics shown by ethtool
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: pi=B1tek, 17 wrze=B6nia 2021 10:53
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Patynowski,
> PrzemyslawX <przemyslawx.patynowski@intel.com>; Witold Fijalkowski
> <witoldx.fijalkowski@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v4] iavf: Fix displaying queue stat=
istics
> shown by ethtool
> =

> Driver provided too many lines as an output to ethtool -S command.
> Return actual length of string set of ethtool stats. Instead of predefined
> maximal value use the actual value on netdev, iterate over active queues.
> Without this patch, ethtool -S report would produce additional erroneous
> lines.
> =

> Without this change in statistics after showing them by ethtool -S will be
> displayed queues that are not configured.
> =

> Fixes: 6dba41cd02fc ("i40evf: update ethtool stats code and use helper
> functions")
> Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> V2: Fix commit message
> V3: Squash patch 5d12f51b9820 ("iavf: Fix ethtool -S output")
> V4: Remove one blank line
> =

>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 30 ++++++++++++-------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 7cbe59beeebb..014db92d33be 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> @@ -331,9 +331,16 @@ static int iavf_get_link_ksettings(struct net_device
> *netdev,
>   **/

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
