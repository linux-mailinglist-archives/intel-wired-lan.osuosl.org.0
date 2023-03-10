Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0748E6B4017
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:19:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88AB540459;
	Fri, 10 Mar 2023 13:19:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88AB540459
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454343;
	bh=uHByroRJ4PNEPMvpNbp+NKSjs+fHqEwaf46l3W52od4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qcm2Re+lWX7YVUqquI95ohNXl3lH35RevEDLjCLWmDI428eqYKinCcTDEM3iFe/L4
	 WB5qezWNcyVTt8jaH//n0Ay3fxRibfbHy1AYQBwXzNQEP4Uqc89HBXUB0bqHV24Zyc
	 Wo4/tW9MfGOdpijcF6ujV2pdc/1dM+7ER+QHSpx1SJmI7JUNBireQJk0fu+CoX24ia
	 VCp+LfLSbADNwtMu2WWoxAhLE9og0MbE6u+8Y/nFojEDd3r4gFPgnYZpIHliK9bee5
	 AVyfZ0MLowxJ/tTtcfGhJDWirDYWfqg9sCaBhTx2IZ8oEjGcYXhvXGwH4UnzfWvJ85
	 omZpsg88o3D8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HopL_00k9ndM; Fri, 10 Mar 2023 13:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7DEB440374;
	Fri, 10 Mar 2023 13:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DEB440374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A06D01BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 75562617BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75562617BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOwViudM6_hs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:18:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC31661799
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AC31661799
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:18:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="325075108"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="325075108"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:18:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="788014944"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="788014944"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2023 05:18:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:18:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:18:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UNQKX+0oqPfRZzwcV/GeBFMBtftARPBHqyyMg2iCaAg/6gUb4zpwj0F0ZaTF4iDSWf/3C7OTMOWykM8R1U3Re+YBz0rokQCkkFXenQm47oujILThwAsibUF0N7P50JhGaTxVoXarofRhYcF7GT5FtyaPtPUD5qfLqn5zyRSZQFJ2lzCFuCZ4DgimB9Awsa4W3OBFJhW+fdAqIlt1q18HNZHHc1KBU5ASMdspQhq7ZEhAuev2xxrMELs3vOX3qo3eco7IYG1WcLTpbXZ6znBqxSIloL5gUTEqHT7pnslyZxLDA4tTQHa01rcn3gr6cncNr3ScUvVuAekaAsbp6d+WmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Idi2lO5uO/aGVt3+SDkYep9jNZSRyJ8dF5JnOGi0+DE=;
 b=XFcFDowjBmstzW8I7MRbzg8dwB+VK2oQ5ttY+FV59U5tORtMArOh/k/8XLqofHTtxdCuOMkGjfiq03t7Cr7XjqudQg1osby8bkimZhv+1pnbh/v9S9S4Mz89D3VrvkSFghp70IRi2gQ+GkCV2D9oVcvtVERKNN51qp+x13kAn1vt6LjiZ0k8Un0sKO9sp2u4JszA+YIyYtKn8XD6IE3ip3px8C4bFntorLTrsSXyzF1R1Xh2R/dTcMurUdcCpyfoMd+hs9+C4XZFaleTMYjIw7418R9L0SQS8VQeZeLKDlUTFaZFOA1GPwez3SsnB84VrF8S/JSjc4ZN3MTFegMA0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by CO1PR11MB4996.namprd11.prod.outlook.com (2603:10b6:303:90::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.20; Fri, 10 Mar
 2023 13:18:53 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:18:53 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 12/14] ice: print message if
 ice_mbx_vf_state_handler returns an error
Thread-Index: AQHZRuGVNvcWDal2vEaxTONSmh+wZa70F+Pg
Date: Fri, 10 Mar 2023 13:18:53 +0000
Message-ID: <CY8PR11MB7364EC6E2C5D0BCCCB33C8FCE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-13-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-13-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|CO1PR11MB4996:EE_
x-ms-office365-filtering-correlation-id: ae16ae2f-e7ce-4c1d-8948-08db2169feb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nT4G9MW5vTdsKE2Q/AH6wP8eVjJ0Jh7XNXlk8CiS+GjlSk+iorcf7186vj0prKfYvprXjaShuI8LGZkjKacWjgtaZHkfm7nOMfea0cil23dkveJ3PrEKtL3MaESPaODjjFVPaLLfpQvtC5Qqd1xh63S1R5DkPm5Y96gSf7XRxSHdha5by5HBraDpmFcZEfypgTBkiTrATxsNJ5Y3E+M+zAp5SvSBiaNq7bZGVm2STDKmegb+QDUHZgle3bLSRfOrkuQsrAKTUwCc11OE/D1yWiClwZGbenEyMMB6cq8lIFa0YRdlq56TgeKTlxoczOQMRMh2rWrrMqOiWX6/YFxUD1biALQ5BjLKJa57znW1gSEOXH5Zvf86NhZ1y86SVubnW7NCR2EMZAlEtPInWiUnmYaCPWKkop/r1KOLwJgd8U9kyzKgfOgJv8n5LVFrPE+bQkVbjzgb8waIx3rKp7//P+wk7kI6h/1/wIbP1fJP+x92D/wlYOjQnD2QltDAE/tgYhxlwUCGTRXGr6kcUfudIfK54D0mXqYVMlFRNQOV2LKVcBVRzrgsyWwrIDZU+eMR7mtGQtrsiFa/xv/CUcB1p3VwmEnwl/7gkOYkgsI2z20ACVEsccdzTeHbapEHnLxsjbBLehFU0b8HYbCV+yXbm7T8bEVRlc85dVxq8LU0iNcNns9wENObeQfx6oO8dqTp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(366004)(136003)(346002)(39860400002)(451199018)(83380400001)(55016003)(15650500001)(2906002)(6506007)(7696005)(52536014)(71200400001)(53546011)(5660300002)(316002)(186003)(26005)(9686003)(38070700005)(8936002)(33656002)(86362001)(41300700001)(66476007)(66556008)(66946007)(66446008)(6916009)(8676002)(64756008)(76116006)(38100700002)(122000001)(82960400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Uwj9MOUlIYcXUCFGMVFuldJMmo7GKaQk73eW7/YynnuMMwjavHWTV3p4th?=
 =?iso-8859-2?Q?WzjLZvywJm+WsTZc85R2tmoyowz2zqnD7pTA71a/xmDaLPh9o3qnRW17m7?=
 =?iso-8859-2?Q?lvvu4NQpmluGJerUD5hvGAB/2KlalvftJNdwPjqAgJ3b4lMAolqEfrYfb9?=
 =?iso-8859-2?Q?JjPGP2X2pz70HWdeS5t6H3UHUJpz6COc+PEuL4QAVcsKx/TEpltlD4F0fE?=
 =?iso-8859-2?Q?g5KOt7/F6vEeDDxUfliu2zNM+HFeuC1ePr9Nb5j6kDKBYAXqVaplUU3R/j?=
 =?iso-8859-2?Q?fzPEE9xNm05sKSdLDoe2lu2UzwH3WJYbw4yxI+HSfBLHoCDRNV25MwXcHQ?=
 =?iso-8859-2?Q?lvRGs7+h9wHkmj22zZzmYlZF3PMMNTtyiSuFIKrJIidY0qOPCXh4gIOlj6?=
 =?iso-8859-2?Q?muoVIifT5t01rh8pTv+E5PUklw8326e7bEfzfdqdSbfMlUk65oOxuDacIq?=
 =?iso-8859-2?Q?QnGfU6H9o5q8MjBDyHNTUMM9JUxhIYY3b4fNRFG56DeYQvdAlGY0AHC913?=
 =?iso-8859-2?Q?7dtdPkGUHcD+IhAfTl0WorYcNDZqRQoVY+Otfa20WKlr3gmaRu2k8dGUZ9?=
 =?iso-8859-2?Q?qYNXVZAPpof15Mp7EZ4UmfRLWCsPgy1Hd5nYX6zxFrVEsBn0Zu/9IsdHpJ?=
 =?iso-8859-2?Q?1bNjHCYN4V3zx32QHB5QJOjhAvYVIqOsCal3u8DEAnvFJamYrNp3A05t+H?=
 =?iso-8859-2?Q?WV6B5bZJnflnWWQYD6agcI+xHRX3slCu87O9g6RaDKceKPDbUiUbFxdNIU?=
 =?iso-8859-2?Q?vhtkuOj6uKiHwmRKShKsL3+gYjeIwJON9ICOv4gQVU1HFh5ZfUPQsy7F5W?=
 =?iso-8859-2?Q?OMSGGgRZLFEwNItiwLzHXHOL11RIZYDd0ZzbO6u0ikbV22SVNbF/V0YfN6?=
 =?iso-8859-2?Q?iIwk3UGN9N46C6/e2QkH7LyDcYsgkaTNW3BFC1BxE2b2AnHB3AAZxWOEc5?=
 =?iso-8859-2?Q?T1UTKv6x0Ca7JB1Si5oZciNhUt7ra0OtHGtzJ7BrqziKbzdJTfFO6bAYP6?=
 =?iso-8859-2?Q?CE8XFKO9dFcWDVYQjqa2BzFMGb+W+sgUMjKJ5j5BVoHDnZ4DNgKFllF36K?=
 =?iso-8859-2?Q?xrKXNO61w45ct6qqXdxQ+/dJ2gCNGLM1TjJ676m7ygAc7bT7GTltcfPGa2?=
 =?iso-8859-2?Q?uxoZYbq+BqCgEUbxsh46m1KL/IwirumsGWW14Co7dfbMBgm9kf/i82c4x9?=
 =?iso-8859-2?Q?Lr1uOn4uG2M+ugfs0pmm1gL1Chk8ASHBQYoCCvaBO2AVV3rnQ/l7Y3+TWZ?=
 =?iso-8859-2?Q?XBxH7eRg/5buQISTHRrwCsyELUO8t6zUmlSwC98V4zlpMFtoPniljROIC4?=
 =?iso-8859-2?Q?79fScxMCAxMMHIj7bAfmNOtHJNyjiIQ1WlpxZvl04WwQaHU1j9vr+ZVvKx?=
 =?iso-8859-2?Q?1shdNAeqtkCcVdiGIl1B+Idco0XsYO3Ev8vKsi0sZikt0BXtfzTdxM5tB4?=
 =?iso-8859-2?Q?xY3UKtsE7+2KiKwJK2ccjZ7VP/HR+wERfAjbHSxDIU7bkgBy0komZvxaIN?=
 =?iso-8859-2?Q?uVZfcfvyetA+lrc17yJxu50BDBxGo314D6G7USvRNkeWWYm7kjM4E4D7fc?=
 =?iso-8859-2?Q?/AJBmalzFndSV7iARtZLMrWHDheYZncAXIa+kq33p5bUrYDxq6H4ckJmzl?=
 =?iso-8859-2?Q?tOWeOpa2W6n2pcOcS98xFUaQRXr5Z4tfuI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae16ae2f-e7ce-4c1d-8948-08db2169feb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:18:53.1090 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6F+rG6ZHRL45DP7JQHVbmNqEQLDJoANU31keFJptLAdif1ye8llWQysrPxP7aRc5A4hCzw6xw1VWQN5WtYwLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4996
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454336; x=1709990336;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GkuJuh0Bzt/OnVbF3kWtfKN9PmY2pCA4OdzEB9eBJn8=;
 b=nig0auP01IBuS+bDCyY2FHWqF+M81/yayjoqCl6t4zda2iZe7K7kHUcd
 tiuGwK1hqIPcIF3LGMb7x9NKk2vGgaGs+oX1l5Dz6NiRBKhYkq/Uqqg1Y
 vPQ0t4Rl7anFQEutVXJil0r4W7AXyjybU+31dP9JYD5FpELhGdr/iDf+c
 wEIbnIR4Y4GSR1zxa4fbPwbVt6ml9ZXYM8ZmRAJZKKPsuitshW4k4CtPm
 U4mn3rKpyGkWEkRzznr3tM9h6zrfCrvcDgdrpgh+ozn7dRdYLK4mcM75C
 iEHoEbe4TPMGyXsmcP62iH3tTbaC3q9aL2Wp0FY95c/yIlPByitYO68GI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nig0auP0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 12/14] ice: print message
 if ice_mbx_vf_state_handler returns an error
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 12/14] ice: print message if
> ice_mbx_vf_state_handler returns an error
> =

> If ice_mbx_vf_state_handler() returns an error, the ice_is_malicious_vf()
> function just exits without printing anything.
> =

> Instead, use dev_warn_ratelimited to print a warning that we were unable =
to
> check the status for this VF. The _ratelimited variant is used to avoid
> potentially spamming the log if this function is failing consistently for=
 every
> single mailbox message.
> =

> Also we can drop the "goto" as it simply skips over a report_malvf check.
> That variable should always be false if ice_mbx_vf_state_handler returns
> non-zero.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 5ae923ea979c..f0daeda236de 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
