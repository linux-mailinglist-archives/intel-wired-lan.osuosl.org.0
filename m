Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F18AF6ED0D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 16:58:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A891613A3;
	Mon, 24 Apr 2023 14:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A891613A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682348308;
	bh=ix3UtqEMgZmFM/T0pdZvQxUwufCMx51XIMvqtBkj/5I=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hE38Tu1kmwvxjL7FT98Se6+327mYtOPPAtJMGSmNC8+kJALFz5rG3KK/GsFm1rC0U
	 WwFV0KxjNUyf4rg3+ZOidNatamjmI1SPmNp1Tt8b4waB6juZSocm4OnGRziyvFKD8v
	 sUeT7uTdpi0GgR3P8aVYOwFNEUcpK0GjzYu1DjkoTZATM+bfZewyPWvP0SGLrlPrDi
	 DathshfLpTZRNAO22KdzcJmWMk68eKNLVqXJp5NjOmUJeHDKfAZfBJzjm4ni9dN52T
	 l6St4bGdYHWSiqutUHOcGeri3jmphD7lX6a+w8FnXtZiEtZSy33hYBBSXZ1RbpmNIu
	 nmM/y+78vdE6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yOKZe_fjrJMv; Mon, 24 Apr 2023 14:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2FF2E61267;
	Mon, 24 Apr 2023 14:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FF2E61267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2AD3A1C2AA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 12:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0FF03416B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 12:27:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FF03416B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fp5q5xLe3IJx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 12:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA7FA40968
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA7FA40968
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 12:27:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="326046260"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; 
 d="scan'208,217";a="326046260"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:27:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="804603049"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; 
 d="scan'208,217";a="804603049"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2023 05:27:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 05:27:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 05:27:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 05:27:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQHsd7gq3dOyiQcXeoBhVIxuSe0TCAlP5/hKUo03BC7IGen5kgCivSPX4IOZ3jLaOzKx+gBTJQ8uQ2kYKiURMOJljL7oxRV+Wx2NfK+VkgB0dRGLch3cAu/SwVpgF8o4gYGTTc4T+DiMwPeARg9dGHAusmnY4lnwUNZcxdXahsEdAg3YSPGgeVmgMaN2w1usDXo/Ccnrk5Rd0XkXXw/uDr0n8ZfK5QHxCVuEduOaXXVGok4FYNhyPKWZndNDMwFekiE7uUww2PrYx25ZjGb18gWbB0yAi2P5eEJKT8yvs7TEr4v2MnbPYinGN1cJ52OPtnGDWpXz5cbc7k9N1h2KTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vWdzosLq9OrIBdy1/364zTnnISwbyoKnrz0LnBdyD40=;
 b=OBDZqMNL7uLz7XWgP0GT4G1gY1ExG5fWzaSCaKLDv4X2ES1utUv1lA6PRjOt2/sEHB7hDXp+kQFO1WHJEznXAXbuBcv4nTXlenWSb9Hdb82kBFjr84Pfa3O/liBa7Z2Lcf+N0k928fZEHXp/LoUPEK4aeJjZxcyf6If24tphk9Npl+uoEaC+2mOqXpYdedOVsurdTCLouVikXPJ/f2LHv29CrewWNPyUIGHJYwwKULJ5VoQ9/01jJkNeOW/KCOWxImx/nJW5cb7UnHkOuy/kYhecxYk1zKd7OF7nIM/jSGmJPXVe4iYufl/N83GFziqjR0C8yaHJOh1Vu1EjcSk9yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2700.namprd11.prod.outlook.com (2603:10b6:5:c7::22) by
 SJ0PR11MB5005.namprd11.prod.outlook.com (2603:10b6:a03:2d3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Mon, 24 Apr
 2023 12:27:09 +0000
Received: from DM6PR11MB2700.namprd11.prod.outlook.com
 ([fe80::e7e0:baa4:b6a9:bd1e]) by DM6PR11MB2700.namprd11.prod.outlook.com
 ([fe80::e7e0:baa4:b6a9:bd1e%3]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 12:27:09 +0000
From: "Wesierski, DawidX" <dawidx.wesierski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Maziarz, Kamil" <kamil.maziarz@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>
Thread-Topic: RE: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock
 rtnl_lock twice in reset
Thread-Index: Adl2qBVtqV6YIp7aTdepop1BD4/g6g==
Date: Mon, 24 Apr 2023 12:27:08 +0000
Message-ID: <DM6PR11MB2700DCD3A6E740829299103F88679@DM6PR11MB2700.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2700:EE_|SJ0PR11MB5005:EE_
x-ms-office365-filtering-correlation-id: 56dbf206-d263-4d4f-f0b8-08db44bf3926
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: noTwyqCOUl3VtSvn45qcjixvVUxWxpqpmABmn3jd+7PSeiptbW8CCupY3tUY9bSw5pRpbh73NQUYArubYze4U8HjMpu9Owl/jrxGIHjMixOMZKgjb5OyCRpM6+OyICcKHNPqs7hw3FDZ2kvjZ4NM7/pM93K5Q6wq1E4v9+rEsZkaQOWA2f3a8Wdek/hGpGPkei38Ylx9Zpg+jc3r2SVNc8kez4do657wQqkZV+YVUQgDjP4ugN5hVA34tFRwfsXiZqH3C+O8YK1PgYWRc/h0aNVKLx0MLr/4Zvx9+1biJgvINbR4vfs5bUfMGCK8HlU/ZClAVKzc9+fJcABcN/3N4CRbBmWTD26chaLay5a8+KV4ca2aSJyQLEsPoRl6qhXuCrH66NmZEQ2qK3y82vLbNT2uOP31W50pdz91nqY73CNuO0GyWSGpMgT+lP4HTZbbmA0Jne6DW6OZ2W0jy+yYxKEtCenYG8d3fY4Rk2WTaSovbzuwU5pjiJ0aFyXFw92L9HgfnTNKlV6dNRmpJZgGbV66plEhpvRm687CzN8Qq5WwRPKH3ovL66qWLn1NjpnmT5vpfFN8pVbAbkQxYqDfRd246Gy6Uqb/ZvW/AQ4XP2Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2700.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(346002)(396003)(39860400002)(451199021)(122000001)(316002)(110136005)(66556008)(66476007)(76116006)(6636002)(66446008)(66946007)(2906002)(64756008)(9686003)(26005)(186003)(38100700002)(166002)(83380400001)(6506007)(66574015)(7696005)(8676002)(41300700001)(5660300002)(8936002)(55016003)(478600001)(86362001)(71200400001)(33656002)(38070700005)(82960400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?EWs+C1DqmEZgWRq0VW10wljoE5WcbFZkzR1KoD9fq9wtzX+oNWH4YK0DoX?=
 =?iso-8859-2?Q?abFhLfhCzuml5+/YtMTE2r2yQDWWBsBCz2TyGC8gjrYldcy89zh2GQMUgm?=
 =?iso-8859-2?Q?5CWoApmI55UBeOtlo/8JMxmlVhEgpC1Yp6Gfl548miOVRRZb+DxPhbq0xn?=
 =?iso-8859-2?Q?Yb4m5EfKCgFYOU4sv6wWyPcrO2Y9qgNOZP/V0EQ9KgizFTcHWbC2JmRzwB?=
 =?iso-8859-2?Q?FBTyWhxs561i/ZVMknjv155/MAvwViOdu31qTQNz12DViuLiSHy9EiSMi5?=
 =?iso-8859-2?Q?yHLNt1te6Nr+s6mrLKW7aHKV4q2nHeEaTN+Do5s2HiFWLDNUZqKU2ZYapp?=
 =?iso-8859-2?Q?uRt/xQ6vcukPYQnjGIdr0R/imyVA+43cYF9uCXPiiSfRVyfm4IOx+rWFBc?=
 =?iso-8859-2?Q?iQQ8J03oGG7AoEjrIVAV/sNSsxJ7UX8ycQ79CEscMarG4DKnrnlqtWxj4L?=
 =?iso-8859-2?Q?FhNJ2TfkKfLjcfDrEOUnO3m8GZueqPVauez+DfT/5JA6Gf/0jpTPy1PuHg?=
 =?iso-8859-2?Q?NwsPYkZeziOfntTYrBpTKi49iShZA5q+xnrqcrWHHbYYypJMwQ9fhp42zA?=
 =?iso-8859-2?Q?fVII2IsHZVgVFDyDFC1C64xPDx3hLKN/Dr/5RPGnJTxSo0ky/Ym2PpSuxi?=
 =?iso-8859-2?Q?r2InPfIRANLJE1b2rwGd2xVK1w9HUZbJsTT6YLi/Mn2stMXXx53/xb5ZSp?=
 =?iso-8859-2?Q?Obpm2WOyJFXiYxaR6MsAOkYwi/dS+DhWYmDW04eaAcbBWGChHutRa7WwC+?=
 =?iso-8859-2?Q?GkAWu78vcZT5jxrK2bT4edAW0zvmCz157dN/zi055P21OQ8VsY45WYyFUM?=
 =?iso-8859-2?Q?tRzW3uDpOS6QmhfTS7WWjMAHkXkrVeuOJ6WghgDakbba0YwlscnZSH9o6s?=
 =?iso-8859-2?Q?Eng12R6pnrVp2uQwjkKphgqAu1bOGf8HaU6kXuvmKLfBsDw0w5jYg1YNx8?=
 =?iso-8859-2?Q?y/ijdzacoTX+VtN6Zbsdcd0AryDZpFYjMFmfMaARLfm+LNhjWtRdLTKudA?=
 =?iso-8859-2?Q?NK7sTyj8CxGl9gtyzCqvUyBNTkNCmDu3wi4uUJWeawrwDuXqSx/XUuYJmk?=
 =?iso-8859-2?Q?fO8Kkrj4Stzu12mHRJ/GM0pPUHz3z9/V2a2JItR3h0PCbRY1x5eIWQ9slP?=
 =?iso-8859-2?Q?zAYpjf52nP1FEMYZn48WW3rfFKFF3cv/Hs815YTrEcCDd6JtnCNiCAHauZ?=
 =?iso-8859-2?Q?4TLOPDMc5Rvba0k9w4/+nV34vSavVX2q64E9k1FeBq5OAHOzbOHQJD6uAG?=
 =?iso-8859-2?Q?T0Zf+4x4LQ56JzBk/NulgohuIumiKuK+Hvo74i2lNpkVs5mEQyZpoSUfsq?=
 =?iso-8859-2?Q?l1podrMUm0U4qn94FrVhiI9RjB0E+Bp1kiiXXGC3ikIdP8eXi96x0zLvC2?=
 =?iso-8859-2?Q?bxBmDZIfRF95H66wDdKc1EpntGGb5wmHcbAh2eX7CMl5OuyWXFrik+esfN?=
 =?iso-8859-2?Q?88ILAlj+DRCb4jPsleWZssG1770AI4dk05cF3ugb9DXbpcag478XCzH/B7?=
 =?iso-8859-2?Q?KvLCCllbLwl/HeNgciZ8+xDRjBqDIRwLqBI6dKRqt2fgXdHDyYVB0gOx3u?=
 =?iso-8859-2?Q?k0NBH2X9h3ABdCORyAZD1mKcegP9cvpJ/UIJMh2PoE2kdkNzqvxRsvDXze?=
 =?iso-8859-2?Q?2nq0svrHzvAZrEKoixZDVYaOpyTAYoUrE8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2700.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56dbf206-d263-4d4f-f0b8-08db44bf3926
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 12:27:09.0791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZfKWQel5bn706YQWNdMkvJpOoR1ZP2qvGOMc+/9M+t3mCHvmzEiKwIwZ/VvnO+vXmtrGCUeYNjQDpPqBXJSFhZMmnKs8ipatadIwokAKx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5005
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 24 Apr 2023 14:58:13 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682339233; x=1713875233;
 h=from:to:subject:date:message-id:mime-version;
 bh=rVv2dxyHsz6PDpy8smEcVyQV0F9uApTPRZBaC6Y7x5k=;
 b=Jmy6LPsT2W/9Hs6UkyqcXjkBDQWfFclv42X+Q2HTr/rs6HK6OYcEEvbR
 CeknjRxBQtQbqv1IlqmehbGGgoT+TUqq5nVqrZzLWFaSFe6nVQ1jGs/t4
 TLX65JUDoKQ/LPYYfD0nFBsESlr28bEWY/XYPjUC6/6ZCsN1iAI97tXz+
 3KTNHV+k5fYZ/ts8qDeKJ9mDWH0NirSAhSmpvJb7k5vkU7ivC07g1eTIj
 8OY+HrXxMJxGbLMxWsFvRXAdYzbRj6tV2sBDYq/V+zLE3QRSRdNfd2DP5
 PRO9jXyqPJi8PQsxtI2Zp97n+NYe53XgPubiYpLim9FVJ8brw0Dnwt0gQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jmy6LPsT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock rtnl_lock
 twice in reset
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
Content-Type: multipart/mixed; boundary="===============2018322132955002744=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============2018322132955002744==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB2700DCD3A6E740829299103F88679DM6PR11MB2700namp_"

--_000_DM6PR11MB2700DCD3A6E740829299103F88679DM6PR11MB2700namp_
Content-Type: text/plain; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

>From: Intel-wired-lan intel-wired-lan-bounces@osuosl.org<mailto:intel-wire=
d-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
>Sent: pi=B1tek, 21 kwietnia 2023 21:38
>To: intel-wired-lan@osuosl.org<mailto:intel-wired-lan@osuosl.org>
>Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4] iavf: Don't lock rtnl_lo=
ck twice in reset
>
>
>
>On 4/20/2023 6:08 AM, Kamil Maziarz wrote:
>>
>> +/**
>> + * iavf_delayed_set_interrupt_capability - schedule the update of the
>> +netdev
>> + * @work: pointer to work_struct containing our data  **/ static void
>> +iavf_delayed_set_interrupt_capability(struct work_struct *work) {
>> +       struct iavf_adapter *adapter =3D container_of(work, struct iavf_=
adapter,
>> +                                                           set_interrup=
t_capability);
>> +       int pairs =3D adapter->num_active_queues;
>> +
>> +       if (rtnl_trylock()) {
>> +                      netif_set_real_num_rx_queues(adapter->netdev, pai=
rs);
>> +                      netif_set_real_num_tx_queues(adapter->netdev, pai=
rs);
>> +                      rtnl_unlock();
>> +       } else {
>> +                      queue_work(adapter->wq, &adapter->set_interrupt_c=
apability);
>> +       }
>> +}
>> +
>
>This function still requeues itself instead of just rtnl_lock(). I'd at le=
ast like a justification as to why.
>_____

This function schedules itself in case it is impossible to update the netde=
v at a particular time.
This scenario could occur when multiple operations require the rtnl_lock si=
multaneously.
By implementing it this way, the function seems to introduce unnecessary op=
erations during
testing with operations requiring reset in quick sucession. However, my tho=
ught process was to
make it more error-proof in normal use cases.

Do you think this information should be included inside the comment or comm=
it message?

>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org<mailto:Intel-wired-lan@osuosl.org>
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

--_000_DM6PR11MB2700DCD3A6E740829299103F88679DM6PR11MB2700namp_
Content-Type: text/html; charset="iso-8859-2"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">&gt;From: Intel-wired-lan <a href=3D"mailto:intel-wi=
red-lan-bounces@osuosl.org">
intel-wired-lan-bounces@osuosl.org</a> On Behalf Of Jacob Keller<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;Sent: pi=B1tek, 21 kwietnia 20=
23 21:38<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL">&gt;To: </span><a href=3D"mailto:i=
ntel-wired-lan@osuosl.org"><span lang=3D"PL">intel-wired-lan@osuosl.org</sp=
an></a><span lang=3D"PL"><o:p></o:p></span></p>
<p class=3D"MsoNormal">&gt;Subject: Re: [Intel-wired-lan] [PATCH net v4 2/4=
] iavf: Don't lock rtnl_lock twice in reset<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;On 4/20/2023 6:08 AM, Kamil Maziarz wrote:<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&gt;&gt;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +/**<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; + * iavf_delayed_set_interrupt_capability -=
 schedule the update of the
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +netdev<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; + * @work: pointer to work_struct containin=
g our data&nbsp; **/ static void
<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +iavf_delayed_set_interrupt_capability(stru=
ct work_struct *work) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struc=
t iavf_adapter *adapter =3D container_of(work, struct iavf_adapter,<o:p></o=
:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; set_interrupt_capability);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int p=
airs =3D adapter-&gt;num_active_queues;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (r=
tnl_trylock()) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; netif_set_real_num_rx_queues(adapter-&gt;netdev, pairs);<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; netif_set_real_num_tx_queues(adapter-&gt;netdev, pairs);<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; rtnl_unlock();<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } els=
e {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; queue_work(adapter-&gt;wq, &amp;adapter-&gt;set_interrupt_capabil=
ity);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +}<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&gt; +<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;This function still requeues itself instead of j=
ust rtnl_lock(). I'd at least like a justification as to why.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;_____<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This function schedules itself in case it is impossi=
ble to update the netdev at a particular time.<o:p></o:p></p>
<p class=3D"MsoNormal">This scenario could occur when multiple operations r=
equire the rtnl_lock simultaneously.<o:p></o:p></p>
<p class=3D"MsoNormal">By implementing it this way, the function seems to i=
ntroduce unnecessary operations during<o:p></o:p></p>
<p class=3D"MsoNormal">testing with operations requiring reset in quick suc=
ession. However, my thought process was to<o:p></o:p></p>
<p class=3D"MsoNormal">make it more error-proof in normal use cases.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Do you think this information should be included ins=
ide the comment or commit message?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt;Intel-wired-lan mailing list<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<a href=3D"mailto:Intel-wired-lan@osuosl.org">In=
tel-wired-lan@osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<a href=3D"https://lists.osuosl.org/mailman/list=
info/intel-wired-lan">https://lists.osuosl.org/mailman/listinfo/intel-wired=
-lan</a><o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
</div>
<p>
    <hr/>
    <strong style=3D"line-height: 11.25pt;">
        <span style=3D"font-size: 9pt; color: #595959;">
            <span style=3D"font-family: 'Arial Narrow', sans-serif;">Intel =
Technology Poland sp. z o.o.<br>
            </span>
        </span>
    </strong>
    <span style=3D"color:#595959; font-family: 'Arial Narrow', sans-serif; =
font-size: 9pt; line-height: 11.25pt;">
        ul. S&#322;owackiego 173 | 80-298 Gda&#324;sk | S&#261;d Rejonowy G=
da&#324;sk P&#243;&#322;noc | VII Wydzia&#322; Gospodarczy Krajowego Rejest=
ru S&#261;dowego - KRS 101882 | NIP 957-07-52-316 | Kapita&#322; zak&#322;a=
dowy 200.000 PLN.<br/>
              Sp&#243;&#322;ka o&#347;wiadcza, &#380;e posiada status du&#3=
80;ego przedsi&#281;biorcy w rozumieniu ustawy z dnia 8 marca 2013 r. o prz=
eciwdzia&#322;aniu nadmiernym op&#243;&#378;nieniom w transakcjach handlowy=
ch.
    </span>
</p>
<p>
    <span style=3D"font-size:8.0pt;  font-family:'Arial Narrow',sans-serif;=
 mso-fareast-font-family: 'Times New Roman';mso-bidi-font-family:Arial; col=
or:#595959; mso-ansi-language:EN-US; mso-fareast-language:EN-US; mso-bidi-l=
anguage: PL-PL">
        Ta wiadomo&#347;&#263; wraz z za&#322;&#261;cznikami jest przeznacz=
ona dla okre&#347;lonego adresata i mo&#380;e zawiera&#263; informacje pouf=
ne. W razie przypadkowego otrzymania tej wiadomo&#347;ci, prosimy o powiado=
mienie nadawcy oraz trwa&#322;e jej usuni&#281;cie; jakiekolwiek przegl&#26=
1;danie lub rozpowszechnianie jest zabronione.<br>
        This e-mail and any attachments may contain confidential material f=
or the sole use of the intended recipient(s). If you are not the intended r=
ecipient, please contact the sender and delete all copies; any review or di=
stribution by others is strictly prohibited.
    </span>
</p>
<p class=3D"MsoNormal"><o:p></o:p></p>
</body>
</html>

--_000_DM6PR11MB2700DCD3A6E740829299103F88679DM6PR11MB2700namp_--


--===============2018322132955002744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2018322132955002744==--

