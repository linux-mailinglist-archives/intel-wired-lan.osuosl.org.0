Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7543509A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:39:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEC3B849D1;
	Wed, 31 Mar 2021 21:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i_DuISY5tN31; Wed, 31 Mar 2021 21:39:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4193849AB;
	Wed, 31 Mar 2021 21:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D24CD1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD89C60B86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dFbV_hqMk5Fq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:39:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FB2560B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:39:49 +0000 (UTC)
IronPort-SDR: E/59ZloEZ/Og5iGZCCW9FwOwBudU0leqqSbmNB9BaKehsDLpWbGYGjBwXsMyseuqZX3ov+XLBF
 RYoQ0tLWTIgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="172128493"
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="172128493"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:39:48 -0700
IronPort-SDR: pQe/VhrZImV1Dec+osHCHDJDzA64DeoWXtFwYSDwuIPr6+W2y36xTWzNGVR4iHe4cb+cxx62lT
 WuVnMVBa9uVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,295,1610438400"; d="scan'208";a="445908048"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2021 14:39:48 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:39:48 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:39:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:39:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:39:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRrxkAvwoYT7iqDMH1CFQR4jJ/bR2cVSQPyurSoQw4v1vuOpgJVkS7Rnv3PX2YARGlO5jnSZe9P4YECFV+BMyn+SpnQS3FZrwBn778tFv7NNm+jfesR5I6ePuntWU6l/sd9VpqYe8ES2ambDwy9d25ztAXs1dpycW3wDyMZEWML5oduw/eBH/Ayk/Np2TKQFcaIuYvc6jC5gKvfr/uj4JX43Sqt0Q/l6Z1ZXRd7sOjWoX/ZBixi8qSpp0di8SEab39ZueodXkk/WElWF7k5E4Uc31gugdZdk5de22ll4RRhmEfT8UbKloQ/LDejXpBpSnDnXnaUGEY3aZX3+bAUFQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b8ekFkKC4qilTmrNSdlcWjNeC1TiR8iDP4F5fmAF0gI=;
 b=TvtStDcyU1icLWQdGBk0sbYLty2bgdmRCnVAoYZB5YBVIH8Mj+9pe+kQ1Bi4qZCb9oKxiMU9QBpucnlrdg19XHqGUvZBG+FHolcNDY7toRywuv6/LHEIoQmUcUlp9No+k8a2TiaLjsrk+hYDbJYLjbJHkM9Be9f6amaFxEktyjV+xJmO3zE4N36ReZ5/7meBaDWFNTPm1j/PGBEI3i0SXt6yGa1Zwr5FX/sDK9k9AX077FSdT57v3Pup+nWLNPJpwSHcGQT0+XXM3iPVWJ7cp+/EFp6IQNUOUxoJxb8F1IuKodfouAng9lb2DtApqRNLHkKTBZ/+qdaHYFFYKL/Dig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b8ekFkKC4qilTmrNSdlcWjNeC1TiR8iDP4F5fmAF0gI=;
 b=bFpUt2UE5vfc/0ATg/MC/hrlujQ9XrryCR09ONohs/lkzTu5IGfm4x8Ih3qVvl04g+ntxM9Awp631cin/Q1yVGsvfj1PvS0WLk0bg3evwa6p7oUYPmVI1B6Yex8fuCXpqulbSus6uiwXqpCQmL0OgpqUC/4lpFXV0IL9Beb7A/Y=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4897.namprd11.prod.outlook.com (2603:10b6:303:97::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Wed, 31 Mar
 2021 21:39:46 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 21:39:46 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 08/14] ice: Replace some memsets
 and memcpys with assignment
Thread-Index: AQHXIciS1ygkAFYp9kW2iBphQWP1TaqeqRUA
Date: Wed, 31 Mar 2021 21:39:46 +0000
Message-ID: <CO1PR11MB5105AEDCB5E9C7BBCAC0F048FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d8a27c47-6d16-44d8-277e-08d8f48d8110
x-ms-traffictypediagnostic: CO1PR11MB4897:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB489701F9ABF2555ADD91AC70FA7C9@CO1PR11MB4897.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:374;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DkEbbfpNicwLVHdhgOJFPtG4hCXHaWI056Ie58vVipO9Ocq6LGxjuWRd/uzxBCUgi+pzq0O1T7UmZk1nkvyZbaoD+ysFndkXQQL62lq6FhLhqVYOrHR1aLR8fmcbyD556C9Rq7JU2K7XBPvnz+btjgmNqoWJD5gH4ggGVx/iNAKFulWN7QV2PJTssbbGmm7sQpUmI9xDZUWNzVbMO02lPAlBjKoTLVK78N6Tu+ae8iP5m8v+87wScNMYeWLfu8OSzTHLGwsBh64z7dirs7S7T9NMffxsqDouszXsO6oTr8tYSboOSwoiUNrynM12z8tfb7VtRcy2QKaRU9zaUifdoouGjr8ISurIVkk3fOqHMTbOMffu2Pl0byTo6nqE39yLEwF9dgkLQsRKHnxrJtMAJWCbdJMTud4TvfsQGTb4TX1Ryp6IffFEjbP6VlzbJP5r7f+NSwlIhhQsixxODGGhoQ0mu+rPkmXLyVQpl4MrnscDzuHCetPump7FonBdv8uUs3gC3vZAJiKVmLSNIxSQDHxxusoxlrLlo/AsH548lKmKjTyChisx2oa7NVG3qmjKuRVNfnJ2/F8m7tyy+BwvxEoYVzzTd9NSy3qR1znyju3lj6skhP6d3i9wIGWdyqZevGvjAiSfDoj8X06YvMu4j6a0vtG4el/960PW+tHgeKA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(346002)(366004)(39860400002)(396003)(55016002)(64756008)(7696005)(478600001)(86362001)(76116006)(66476007)(8936002)(8676002)(5660300002)(33656002)(38100700001)(6506007)(52536014)(66946007)(316002)(110136005)(66556008)(66446008)(4744005)(9686003)(2906002)(83380400001)(186003)(71200400001)(53546011)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?7LFsZrTDg1XwdriTK1hlGb2wrlM26W6u1FLEVSOagsJkSq5JNwKzZYMhArTR?=
 =?us-ascii?Q?YdgaPG/JeAltzblX+f6QKKpWs6jEMeOeNkL7t8ni1zUYTvCmjVqOoU3tVKi7?=
 =?us-ascii?Q?+QZBDKhl9VTRRV/3GdqK1AI1VDShJ9r/Yrd09qeT108YYu88wBgXm9Xx5FY/?=
 =?us-ascii?Q?MXaj4wjo3epYSZfYaWhvjwZq0r1dgEh19d10wI67g5r9xuyj/94b2ukdXofU?=
 =?us-ascii?Q?vqCQTWSpJ/DbJt1VNRDON3NwGp6RP5k6WP/t19ldKqx0wa0mWcuq7Jm8saVV?=
 =?us-ascii?Q?DkcfU2KYyCfCd2hsvLaD7RJMwTP9YkqESyQ2CZw/kjJ7y0Vk2nqrK2dx5uh5?=
 =?us-ascii?Q?BkaKAbdOH1mVjkKCRmGbgDgqRcBzxprDnvmuv4hcoClkAVDl5+c50t5GqiiX?=
 =?us-ascii?Q?1sDWojuCwR5eUi7rcpOLCdehba9TXWtkImMeg/Lw1cS1xYNv4M4EowRutiag?=
 =?us-ascii?Q?JJ6s4YHXkEjz3Oey7Q/aX8GpfU83HEs0fka31dGeyp9H8RAMI3MQYV+V/jok?=
 =?us-ascii?Q?lv0TeBMDtp8eo6IJNAvK95JlRpEe90l6dvLKO8GkyxwUejZVVBb/dQvyjY5X?=
 =?us-ascii?Q?452dpRf1FopVflU/VPoY4E9YsZwbrz1/lf88UzfjlXqvCWmgYqgKPK6CLZj1?=
 =?us-ascii?Q?K+Yi3+n9O5xOfqm8LE2bTk6xKIk62QZjv0vygJhv+9K0IdVQwPu6jqxLYBPA?=
 =?us-ascii?Q?1d2ux/jE9HlEAeJYwF+wTR7S1fgGz2zjKPOYsdfKTkmUhy/VjcBbBJPDWjoq?=
 =?us-ascii?Q?KA6SwPPoo1Qgf7cVkVutj3FmNyg0awHYZ22gQfLyIiERYAEI7q+sGraDpX+Z?=
 =?us-ascii?Q?4P3QD4zK/45bCvRqRyTAr9oszSwN2qzNs4gGXM8a5+VnA+n3UAYY+/iIG/KJ?=
 =?us-ascii?Q?nF+T7HTm2WH2LrIfiYVAu7C+UlwCYk27E6SHP3h3AUaLr/r7ih85hvuJD49e?=
 =?us-ascii?Q?62ATD227Gc6ZT9M1CioENjpP/9XCKCq6jh2njK8S3+WOyQhi3RelBa6uxCkn?=
 =?us-ascii?Q?CIpIuU3260YQJu8H2usybFLCmECPJPtCCSiUR9F3Ay+vlg8IuAUloeTe1bU9?=
 =?us-ascii?Q?SZJEDCunXmaiscKu3SVnkQeaMl05B+b5gpm78cVnbb+YO+Lq/f7GrwbWJLzn?=
 =?us-ascii?Q?7T3IZlIYvRutHKscrK4qn5EHcTpfFek9jMAjetQNj6nfHML80YJS7gCgrbqq?=
 =?us-ascii?Q?LhN26bhgr4+CDQ2UPJQNm00NCWSkxLuVdoqSCGu/bhq8yQe/WqpRKkzWEn0A?=
 =?us-ascii?Q?oMiqkAY+6hNJLmCce00GMSAcZqnn5DO9qAhmIFg1uxrERKsffzC0FH8dJcQi?=
 =?us-ascii?Q?HCL4N30w15t6oMAE4UIePPcI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8a27c47-6d16-44d8-277e-08d8f48d8110
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 21:39:46.5014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OUzd1gC3LII2OqWuoHkg7Tv2D4Ua3GcI0K4QaPHFy/gtmdfqRzFr3wqlSzxCuooVrgmTqFyxXxuJrBoWz65gzdSnTJoHjLbQ/1AELbdZJ/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4897
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 08/14] ice: Replace some memsets
 and memcpys with assignment
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 08/14] ice: Replace some memsets and
> memcpys with assignment
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> In ice_set_link_ksettings, use assignment instead of memset/memcpy
> where possible
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
