Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9EB445C28
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Nov 2021 23:36:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0BFB40623;
	Thu,  4 Nov 2021 22:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TVl8yOl_N2yJ; Thu,  4 Nov 2021 22:36:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D51C240613;
	Thu,  4 Nov 2021 22:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1176F1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F331C40192
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsWjI9mbyMwS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Nov 2021 22:36:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2CEC400F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Nov 2021 22:36:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="230530062"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="230530062"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 15:36:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="586123527"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 04 Nov 2021 15:36:50 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 4 Nov 2021 15:36:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 4 Nov 2021 15:36:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 4 Nov 2021 15:36:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ici1O8iCxvhHVqC5hh/DaPpoGvOndwviSNzknJ8ibMrDuooo4Tb/FT2s5xZaPR1F5HE3OgEEsJMRO3yQQsW2SGIKq/4IeK3Fq1lsJnoEf1gqWVdC7weaysYGEvG0ODJiCK4gw1JoiAZhSPyT5ji38k7CDoCVaY35nBaF9orKAnwHEG3VEPjeynghPCVycP0rqM2BkKlCcAlkE4M7gx3snsA8TL8jPnHNdy73PYB7yc/9oq9dyEcViI8NmDkNclAoMp74c5fcYxsbgjZhJe1670KKLlBdOV4m53oGJoyHUDqERl/27dDQnbDbYix4esagAXmZSWnmyZs+rFyzZoPPHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ji++VurnKDy6mh0tb+Wnc5gAc7MNVblorJlEChrmrtM=;
 b=Y2fKlcqx9V5IYZ2Ia+GuCEPajJYE/9XSUk/4fLJZsR019StDFyAYSo0Z7+mDDyNYeGeezu2PIBQPNBF/q14n5K8znPeEunxIeEb1FrDmUn8tozLC5BQNi7NAc0MYUYxOxntuSSVgHvuSeVpx6e9u+Rrr2PWxJGS84z7/aEXxoK1uLAFpVrVPRW/GBRczZ7OM4zwIpovhexmy3Zar5iOs144T9vETZJn7qj3BCbJShCGaRzN1jhrsMdU10kw5stZLEjSVeWVjsq9B5M6glutnR8o83v5KyI41TfHXnbuVzJGpH3K5RO5F0lxKqa7mpf2q/ACprZrItCxDF09ORURGSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ji++VurnKDy6mh0tb+Wnc5gAc7MNVblorJlEChrmrtM=;
 b=YQVGwirvCR2xiXmxNDkMUEsO00tAgbXqwVJrnhzawdeKvZKBktjt2ywO85hF3qV38BBIAmSL/MynrtFiMoZD2Tk+uUNT3y/jRAXdLo8THjkafzOI3Yl6CBmxniHIcXH8oHsLerBhaoyFG6LEWsF1ys8j1ZaCGpqQaeAOgcL3Gf8=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4648.namprd11.prod.outlook.com (2603:10b6:208:26f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Thu, 4 Nov
 2021 22:36:49 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.020; Thu, 4 Nov 2021
 22:36:49 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 4/5] ixgbevf: Mailbox improvements
Thread-Index: AQHXbYiH6Ek+m25CyE+mFiIc/gzkMKv0vcTw
Date: Thu, 4 Nov 2021 22:36:48 +0000
Message-ID: <MN2PR11MB4224C977A7BA9C351D9B8AE6828D9@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
 <20210630081532.3069914-5-radoslawx.tyl@intel.com>
In-Reply-To: <20210630081532.3069914-5-radoslawx.tyl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9de2e2bd-3795-4be2-99e6-08d99fe3970e
x-ms-traffictypediagnostic: MN2PR11MB4648:
x-microsoft-antispam-prvs: <MN2PR11MB4648DCE8139B044B99076EB6828D9@MN2PR11MB4648.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Oxd8+yhpG/SvSZmor1RH/b6i2Q+NQ0hCE071urLSel9KNMC5e6KMN4L0PpeEverjvnfroH6pPltZFjIm7oATBFW6RTWcqQS4t6R7DFLK0PxVwPlczSY512602YnAZyYrJbHvNXtnjnjq85LXZag5RyBRwqj0oD0Dzr1tkMtqyLCcS1jw5mamp5D/FzvboRvpsY7218//lyO82VLGWPMayI5wKAWmIfkra7eYWoituy1XRKvbqidQm7HGydL0r1tAy1Mme5zZVkpa3f18boUl+ysY5PHjqkI3/RU99nkKfsVJHmWWE0P0cDTM1usXHACkoQSxgPyHmTfDQEJNHh67oIq4oCgcKV38hoAewUDT+vSVT46kpZid+k4BaAZf38u/IdHRX9xvMQ5OtazZ2/ouluJcEAP+fLQnUkslsSws4atumaKhClwY1dog6J6rJyw82aAm69sFRQtcH8Lc2p4WHOHzvl6OvPdxJEstdyQIgLJO3e3B7WRlJDpc+eMCiIslrb5ON266gsnN1nYqqHlO8dtcR9Byq20NHT4dZPwZKwAu1utUg/F4n4BwizXhVX1UJDcj1VPMUyrs8g0K/cib8UPU3XaK71Dr1HZc1v8SytXddoe6Ewr3ydz0xAxGR7021egEBmzEfTDsX/uDHo255lD/qhpnVMPSN6QKGNiXSBi24Ckzu8fwuI/LYwz0hFSG2MYlOVkLcXJ/HQ89pCBdtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(33656002)(38100700002)(7696005)(66946007)(110136005)(122000001)(86362001)(15650500001)(316002)(71200400001)(4326008)(9686003)(76116006)(26005)(186003)(55016002)(107886003)(66446008)(66476007)(508600001)(5660300002)(2906002)(66556008)(64756008)(53546011)(8676002)(6506007)(52536014)(8936002)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xTdbjVwHXQr1ox6HW6T7qVgqikx3oyASSwqYYknx7baQyN2IXOaq0UtHtc6+?=
 =?us-ascii?Q?Ig0+i8QNS5DsWDoHE52WOEvzOCRzDpGFBhzLTbWQEC2F96SjrnKvD9PxsjiV?=
 =?us-ascii?Q?i6Em9S7eMFmTY1l5EJAksxo64XLafdYeMHt4K302rPW517VpbkqoPaWKKDym?=
 =?us-ascii?Q?U5l4TmQf4IqS6SxS7/9xZJg19zoR697Pugb4HCN05W+snCRSaKIjGGCgUuNM?=
 =?us-ascii?Q?XXKrxgvcXxmyMPPy4mGPZryezrJnr3ZpHXzhtkuleYf0jCBN52DxEImhnt+F?=
 =?us-ascii?Q?efHRZBq7zWREDQhAL+NSuwwr8d8Id/YHKsRSenbC3poItO0PAtCXe4KnJzrO?=
 =?us-ascii?Q?0T86t968ZskoPlJ2buLXSlLcNTveYTYEtmTqEAFw5gzwVCiZVMa05FUa1ZKI?=
 =?us-ascii?Q?+H+/nkNpX5VpbQKqYyfBh1NdyNoVVaNhG4zfSkAoG92v1/QSV4vr5WRcA1ZB?=
 =?us-ascii?Q?g7waF0iVbJOl+8BEiwlsS6BAhIDrA7QCbNlsUIzyD6iSOBHfSTstKTJNn8Qw?=
 =?us-ascii?Q?N4gBVsnuqqhF/yL9iwusdXM6QMLJKMiFhuw/9yaJR/bksclLy2x6SPPHJcFp?=
 =?us-ascii?Q?bP77rB74Wgsqlc+ypCD6W8zXFB23QRHp22Ug1V7KShbjaWn7ZPQpI7pMWMV7?=
 =?us-ascii?Q?e5H0hN6JX5Px/duMqZRmpHFB3ohjAFKzBILIXAbn+BCrQhKLp8Fsfaa+b2sS?=
 =?us-ascii?Q?TG28pGpJdUCpeqVilUBPScjQx9mhHoV6v1eDwYuQ3V7FM6gjaa+OHwu6dzwP?=
 =?us-ascii?Q?flERhFS7q2NhHGWW5mC7aP40CIao12HfaIi3iNiCN6Nt7Wm22Wm9xdQ2G0jB?=
 =?us-ascii?Q?WFj8N2mtdmxlOl8voNryx0XuVxorJdyB69YktjnN9bk5QVPQQFTMrapOx2gk?=
 =?us-ascii?Q?ja1UGDd6CnnsHuRgN1LRHRUgXvZdAld68EnwljxE3wg+IxeblEwJglrt8kn7?=
 =?us-ascii?Q?TWAnYUm/Ql7G8LhbNz4s9xHVz2cm1WKg2L1fOpAW+ZGc6IbvVF9pmh/pFokg?=
 =?us-ascii?Q?KDN2zfhbge2qxNveDsDdDh8IYc27BRTAu9JhRNaPij7eB+7s3oIcWnMzEeIO?=
 =?us-ascii?Q?bUWjvB678Mcf2uDEtDP77TxoL/khYU05s5q6GkvoBbRuJpKM73kGzj2MJBmV?=
 =?us-ascii?Q?x/YYhlzUnxQdl5QwooJid1A249wI05nkt/Eulfr+GWL9HHjo8JE+esGX1wNp?=
 =?us-ascii?Q?Y1RSPy+TnJba+o1N8x5sUX3kBI5eiOa1SCU0SvT9q4b/GBXfYEIxXOLWSkHn?=
 =?us-ascii?Q?bkm8R/smmDBKDAbRHbmvawx7g1pMcCQpK40dpjofoYHyRtxJ6KOmcbIWmTvv?=
 =?us-ascii?Q?dy+6OPInreO+tgD0NXsMRNarKxR29eP4Bai61rnAYpVEtwlshsQDNhiJDZ/E?=
 =?us-ascii?Q?dZ8JPi0DoSXSj76dIrhY4nEsbbjdUv9UMniThfcgK3Q2YwH/0zgrkjQxP9DM?=
 =?us-ascii?Q?hXhxfi2DtmiiVA1PBUkoad/blXwl8WCbh9SqCy2vmDC6qVumcH6iBkfNx+Yc?=
 =?us-ascii?Q?2BB2XbEw8jMfIYskAIa28chkbfL7fjUfJnK7G5MlfAypJ0js6GPPWckI7t0p?=
 =?us-ascii?Q?gbaHeshq/B28Rs1M2Da1VHc0WwZYnO6VW7/Ug2h+c1d8gLD+wPIaI+gErEzJ?=
 =?us-ascii?Q?BQP+dRaY9QQiikt4zeug5Wgf568bb4ls5qAOCMNNPRz9zKD9z8Ndn5V6vFuh?=
 =?us-ascii?Q?9tnXCw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9de2e2bd-3795-4be2-99e6-08d99fe3970e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 22:36:48.9145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Bzod8QazrK6HAc5boKJlhjl59yTCxTuBuD1Vo0y/VTI5JOf+biEod/MzJzTV05qEkSOV5WfjOZrfCTdX1zSlU5nHWMmBT189CJyxLeKSPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 4/5] ixgbevf: Mailbox improvements
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
Cc: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tyl, RadoslawX
> Sent: Wednesday, June 30, 2021 1:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Tyl, RadoslawX <radoslawx.tyl@intel.com>; Skajewski, PiotrX
> <piotrx.skajewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 4/5] ixgbevf: Mailbox improvements
> 
> Improve reliability of the mailbox communication and remove its potential
> flaws that may lead to the undefined or faulty behavior.
> 
> Recently some users reported issues on ESX with 10G Intel NICs which were
> found to be caused by incorrect implementation of the PF-VF mailbox
> communication.
> 
> Technical investigation highlighted areas to improve in the communication
> between PF or VF that wants to send the message (sender) and the other
> part which receives the message (receiver):
> 
>  - Locking the mailbox when the sender wants to send a message
>  - Releasing the mailbox when the communication ends
>  - Returning the result of the mailbox message execution
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbevf/defines.h |   1 +
>  drivers/net/ethernet/intel/ixgbevf/ipsec.c   |   8 +-
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf.h |   5 +
>  drivers/net/ethernet/intel/ixgbevf/mbx.c     | 313 +++++++++++++++----
>  drivers/net/ethernet/intel/ixgbevf/vf.c      |  17 +-
>  drivers/net/ethernet/intel/ixgbevf/vf.h      |   5 +-
>  6 files changed, 265 insertions(+), 84 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
