Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D4D80E86A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:00:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 47930614E3;
	Tue, 12 Dec 2023 10:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47930614E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702375214;
	bh=sqd3+yVnJLKcwUz4eM0bYQuPhRGDxePDveMYq8L5AJQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lYUSDPJm8nGZV6HeFd00UMulvsdrbtbVp3lA2dgbB8cGhPQkah+AoX5Lpu/mHFQrw
	 au5yfvLXgTQPQBx6/SbF9QkwUhXfe+cUg77lBjrX+V07XbqRsKbjwhpfpbfIw84M4h
	 imyrTW+PQr959qQdhINvCP5o0WPAabvyFySRvgCYmzaeoq9NQKi3rZe44Fz8qRTYzl
	 XJgyMLIepyde0h6yFMeuQnZ9oMrl9Qx2gmaVIkH1ftmA7BfibDujF38IfKrk2+Panx
	 Tw5Uv1G2mxiH1ZNl1s6ilk6Gg1RmyVcjsFPKUrmSddqlMzwju4/tH6yd8MEcpf9lbN
	 vqb+1yX+o4Tbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBhnc9h69H7Y; Tue, 12 Dec 2023 10:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E460960B69;
	Tue, 12 Dec 2023 10:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E460960B69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5255C1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:00:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2864C4357E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2864C4357E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOhiSoh3-Ha9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:00:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A597543548
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A597543548
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="385192505"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="385192505"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:00:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="896855665"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="896855665"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 02:00:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 02:00:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 02:00:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 02:00:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acm4VYa7ZZVEgT2ZcMKwmoL3WE2Kx8fFT9Sd1m3pIzYyTJFPAlVf/y3ymSwP8LC9clwVT10WVzjd8voBf8Q/TYieArb5tmg4nGhGB8nK1ij+Xi0SOpE+mlP3TdGRdQeKKt/MjNv5fiOeEDD/6hBHg8OtUU85o/JvWYbPcbqIB2SXgOKxICIYiRM9sdlC/KcyJRxzWpB8fG/vtiDwxvBVeuk/DFRm0BBwvU2Yztric0qE531jPDsw1/2FCeUZTQqpH/ASylQeDovX4Dx5YuJUpSVejnFhLBOOPZwbl9aJg65HLF5ehcJNRUGBSsPS7RTvDVp3d5ScvELNqZfu24/ZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ETlRTSpyHva2wdv1I0Giw4pxRX958Trt3ZIGNkYZal0=;
 b=JzTL49ShOmbd6S2uIbKktJ1hUFOoWPQn+ysFbv2CFcDzu0RonLNogrKREr8ck/RF6+sJZgW7W+PmahkaSsB7ZlmdkO3hseG0+o2x+jMvQ35UcJ8z7Jf8blpnuCYBDm7EwRFNYMWOXYyGxX/D1WMM+DoKRrcN273/bgibpgyk9TXIlxaTcwu6QaUmRc/H/myWm3eAzF1cjKR9Fns0GE8WSAGuPUsaUPk9PBT9jIn0cf25tSLkTEiRxebJp/TRD5aOXZdbngUVIke0lNKtJLTRsEcSy31fQJXzuPyufcyRDvswashZJ5M3T2bkidAhr+NHlbwY1ZhLJvb06GwfkJcgkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 IA1PR11MB6291.namprd11.prod.outlook.com (2603:10b6:208:3e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Tue, 12 Dec
 2023 10:00:01 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::d315:1202:838:9b76%4]) with mapi id 15.20.7068.031; Tue, 12 Dec 2023
 09:59:55 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v3 1/2] ixgbe: Refactor overtemp event handling
Thread-Index: AQHaKbbUapXDIsgTSkm9rVA3FeW0I7CfKSSAgASnxOCAAM94AIAAzoHw
Date: Tue, 12 Dec 2023 09:59:55 +0000
Message-ID: <DM6PR11MB27311DFB55E477A8E8CB671BF08EA@DM6PR11MB2731.namprd11.prod.outlook.com>
References: <20231208090055.303507-1-jedrzej.jagielski@intel.com>
 <20231208090055.303507-2-jedrzej.jagielski@intel.com>
 <f63dca8f-0082-6e22-5ab5-3b940b646053@intel.com>
 <DM6PR11MB2731EFF4B5E7BDE8886EA913F08FA@DM6PR11MB2731.namprd11.prod.outlook.com>
 <3a899036-be91-4ac3-1ced-f32df9ba9c13@intel.com>
In-Reply-To: <3a899036-be91-4ac3-1ced-f32df9ba9c13@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB2731:EE_|IA1PR11MB6291:EE_
x-ms-office365-filtering-correlation-id: ecd23603-5b1e-4aeb-472d-08dbfaf917cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oGG56oA+InjYbBo/ioBGNgOcNIxLxn4jnPz5PeHwp9C7lcAjP2k61vfr6vCOqDpKLKwSo1ja4zuQ510T0K1H1c3g8gXJT3986r0RmaKw+bpLWDRlyPK7CO+CPSXMzC0amaN3DVVnEL9e70SDwwuuUWe2WzNV1RE9jrrqgt/jTqaKw3qcb1Xp5xtMx6BJisxmfW8VoOCalnwgtCl/AiJPBDYlzsRz16nSuzGZIJAeEHGW87F98x0xQgCSSy7mQXOHb1Sdyu/t09cffomAHh2IrA3VwLUsM7HqNlo9SRtHD9u5C4W3WeohVi1BBFwzP6f+RxzrPwaRPZRIOz+Hc7RyZi7lUV8Gq1J1v0CUwccHBx628IEnVB2hi5HxRd9Mv7vKzLuvXJMEjjqh8wihenX9NNeq0mdzS+veuoq9fcdmhHhdchIriU5NO50JZ1rcSHQ82XQSaOSBH9n2DjvE1GxTXZ6iW5pzbMLlgAe4KxzuOdGSnEWWUVEsvqv7EFjYyEAj1YNJ1wb1Jqf3W3Zt+2jvUzjHLR+VJilEFlsiDr9//0rrS59wnE9vdIflRifP+0qJOXR2u+4vbjzTsYfYj7pQeTAXRnkdGdGXi2Hv+EikOTB6qMMuPu4VMxR0l/3eoMy5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(346002)(39860400002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(5660300002)(55016003)(52536014)(2906002)(4326008)(71200400001)(122000001)(7696005)(6506007)(38100700002)(41300700001)(38070700009)(8936002)(8676002)(86362001)(33656002)(316002)(478600001)(82960400001)(83380400001)(53546011)(9686003)(110136005)(66946007)(76116006)(64756008)(66446008)(66476007)(66556008)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y25kYVNwT0dyZ0g0TjZuWFV5anpaRHk2dzdLOGpVMmduQXpZY1NBbnFlTmRH?=
 =?utf-8?B?WGtTcFlab0JmN2JTTDIrNXRVSEZXVVRGNng3VHZKYXdyU2lpZ0pIWld2ZWho?=
 =?utf-8?B?ZXc0bDBNYUdIRXcrbTNWMFBpUitIenFkbWdrMW1uTHhTYXJpQkw0dnl1VEU0?=
 =?utf-8?B?UUVUSmIvZzMrbjUxTDhuUGQzamxHcVRQN2U5TE9NRWV1WW1mTExrV0p0NS93?=
 =?utf-8?B?MTdqdnhRSHNmNjdUUjQ1b2U0SjkzTnJFclA3bVBNMlZyUHhNR05tWU1EM0dD?=
 =?utf-8?B?UC9lbS83TkRLRVoyWEdzZGdsNGR6ZDVBbW9OUkJEZFVjb3Y2bm1nREs0TVN6?=
 =?utf-8?B?azNwZWovU0NjaUN1TVBZRVVJaWcvNEl4Wlp2QWtMb3pqejBpV2FFenhya09C?=
 =?utf-8?B?cU8wTXNKWmpiR3Y2ZlQvVmtpNXJocTFoT3BMK2pUS0NHR3lXNjk1SGlWQTJD?=
 =?utf-8?B?akN6WnJla21nckJoN3RiTlI5QTlTMkl3Rk9GM0FkOTNtUi9NcU4vMENPR20v?=
 =?utf-8?B?T2ZhVmhpY3AzaVVWaGo3bVRkYlphYnNVdXppZkhERmR5cnJ6ck9qRFpXazNj?=
 =?utf-8?B?cW9GVDY1REQrVTZVUE1UVnVPNC9reTRFbHdzSkJQazRnMkZ4TzRtMkU4OVVO?=
 =?utf-8?B?ZlZSWUViRjc4c1N6dTNFbHE1TWRBQUQzbjlXck1UL05haWozS053MUlJNXNy?=
 =?utf-8?B?SEFwME9UNFVGbUpwUk9OWTJEMjJzdUZvM3NwK3cxcmJiWmVxckxwWEc3UW9C?=
 =?utf-8?B?aXVVNHNOUWd6S0RKLzVWUUdYMmYxaU1uZkpXei92ak8wNFdxM2oyMklLbXY4?=
 =?utf-8?B?UitrTlU1UlBSbWRmV0trZkY5aEZ5dDFuTUVJSm9teFI2c3hDZ3oyaWNXeGhq?=
 =?utf-8?B?WlY5Y1MwdUt3L0JmeERzdi9Nak15SkJPK2FMQ0Y3MmVRcXc5dFVBc2Z0eFBO?=
 =?utf-8?B?c0JPOFVqZ3JTRlhjUU15cWdzZkNEdTUwUVQ5aEIxMW5sL0tYeENyRXdHbDVa?=
 =?utf-8?B?MkcwUWhGaDJ0aWptL3FNNE5BTFBtV2dLTDhyTThJQ1VvYnFrYVVQSFNpZGhz?=
 =?utf-8?B?anMvY01VUmY4bm9ZRWFyZVRJVkh6YjJ4TnVJdWYrcXQ3MnQxclU5clh5Snk4?=
 =?utf-8?B?SG10ZUkxVkZKVitneWVsblk1WEFOMGtxa3h6TEwwVmpFNjNQU1NmZ1lqamlX?=
 =?utf-8?B?VWgyTGFRbzZzNENVNUdudnNROXIyQVBkL2lnQ2pyVU5HdXBSQ1JUQW54a3Qr?=
 =?utf-8?B?T2swQUpob09rc2FJbGpiT1pmUUNzQS9DS2FaaXVnbGQvVnRHNGMxaitrc0tJ?=
 =?utf-8?B?Vll4aTg2QXc0OEliQ1dPbFNMNTllU3N2cElucjh4eVVOWVVUNlRqc0dzMzZF?=
 =?utf-8?B?ZTZQVXJkQjQ4cS9vNzg2S3hHM2E3T0p3OE5tOE5LeHZUVXB6M0JucXFGUGk3?=
 =?utf-8?B?Qk0vVHNaL21XRFlpRkpJblJ2bFpsNzNock5QZnpob2IxMDlJdklxNXUzbVRm?=
 =?utf-8?B?bkhhNU03NXhPRU9IRE1OTzRzb1MyNXQweTllZWNyRDVYUmd2blhKdmt5SmlT?=
 =?utf-8?B?anJDOXJXSDhOMHJaSllQN2dnMnpyOFVVZnIxa1BPZjJNRlgwbVN1RlZaWHVh?=
 =?utf-8?B?UVZlcUhxQXFiS2ZsU3haZDRmanVFMnhZblo3aUVqMU1ZQnJEZ0ppRmhNWmRE?=
 =?utf-8?B?OThEZXdlbzlOSFlkY2p2WDc4SUhrU0pLeTdIWCtVNFNXUUZicHpoOW5aRzVL?=
 =?utf-8?B?T08zd28vS29reE5WMDFVVi9DbnFld2pUS2Rtdks2aFQ0SnVSOHZHbWl6R3g3?=
 =?utf-8?B?ejJjSTA3MVYzUGxMNEJ4YStOdThBaTF1UWtBT3NuTDJpT1p0bGpIaUlUN0Iv?=
 =?utf-8?B?RFhpK09LUWk2Q1NjUlJzL1lENExtck5yZUJSQmdCWjcyM3FtSUdRbWNtbzhU?=
 =?utf-8?B?bW9raGpnUGFiUksxZlJMTWpXT2tpaGRaZXo2VTRwaW1wa1IxWWpzVVVQQmZm?=
 =?utf-8?B?UUVrMkVDYVNrU2Ftczl0ejhuMmIyVEVJTVhKcFJYNFdmWG1IRFVtUkF2Yk0r?=
 =?utf-8?B?OS9waURZMHFaWUlpRzhNTE1GaFk5d01uc3FxdmgxdGZQSGx5Ly93L3Q1MDFZ?=
 =?utf-8?B?Sk8yOGlvV1VmcUd5RTNuMFJvYlV1cnpteFZubUtsL1REdC9LbFVuR2F0eFFL?=
 =?utf-8?B?cWc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecd23603-5b1e-4aeb-472d-08dbfaf917cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 09:59:55.5632 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mM0xH+HzZsG7njQQ9LDxIDezMo5J543p2TDY2C4SYotxOr1bIx9TU62NQetF97zTgUmXEJ+Pbyo37doOngduXMr6Z8/k0qE7Pso8e4sUTZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6291
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702375205; x=1733911205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ETlRTSpyHva2wdv1I0Giw4pxRX958Trt3ZIGNkYZal0=;
 b=L0JshpsEn3JdER26iEuq+NmbiHhmM4q7Ff5mKQ9E7OxJMIeOOczltInF
 vDwinon4ZL26x9YfC6C2TV2ct0MN1pNo/Sx3d9kBePJU3AalUgG+zPQra
 jKYTZY1/RU1J72WEeVkDMTveP/3JbwX3rccCCPkTnfK9B/6bmydP7p2B3
 UWLJNLNwT4uHAwlMwbx3NHSc4PCd77K00pdGQQXtN73wtvcXsQ4yzChaE
 x10pOp9Z34oXx2A0nMBGyyKXd6fPZYDHPVTgeExm6iCft9eRI+LPK+gD1
 jGU5wIU1YoaFPfHOQ7ZC5pHONgR92XpEaBYewImenWKFAjJeSGwh5IlwP
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L0JshpsE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ixgbe: Refactor
 overtemp event handling
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Monday, December 11, 2023 10:35 PM

>On 12/11/2023 1:45 AM, Jagielski, Jedrzej wrote:
>> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
>> Sent: Friday, December 8, 2023 11:07 AM
>> 
>>> On 12/8/23 10:00, Jedrzej Jagielski wrote:
>>>> Currently ixgbe driver is notified of overheating events
>>>> via internal IXGBE_ERR_OVERTEMP error code.
>>>>
>>>> Change the approach to use freshly introduced is_overtemp
>>>> function parameter which set when such event occurs.
>>>> Add new parameter to the check_overtemp() and handle_lasi()
>>>> phy ops.
>>>>
>>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>>> ---
>>>> v2: change aproach to use additional function parameter to notify when overheat
>>>
>>> on public mailing lists its best to require links to previous versions
>>>
>>>> ---
>>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 20 ++++----
>>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 33 +++++++++----
>>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 +-
>>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  4 +-
>>>>    drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 47 ++++++++++++-------
>>>>    5 files changed, 67 insertions(+), 39 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> index 227415d61efc..f6200f0d1e06 100644
>>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>>> @@ -2756,7 +2756,7 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>>>    {
>>>>    	struct ixgbe_hw *hw = &adapter->hw;
>>>>    	u32 eicr = adapter->interrupt_event;
>>>> -	s32 rc;
>>>> +	bool overtemp;
>>>>    
>>>>    	if (test_bit(__IXGBE_DOWN, &adapter->state))
>>>>    		return;
>>>> @@ -2790,14 +2790,15 @@ static void ixgbe_check_overtemp_subtask(struct ixgbe_adapter *adapter)
>>>>    		}
>>>>    
>>>>    		/* Check if this is not due to overtemp */
>>>> -		if (hw->phy.ops.check_overtemp(hw) != IXGBE_ERR_OVERTEMP)
>>>> +		hw->phy.ops.check_overtemp(hw, &overtemp);
>>>
>>> you newer (at least in the scope of this patch) check return code of
>>> .check_overtemp(), so you could perhaps instead change it to return
>>> bool, and just return "true if overtemp detected
>> 
>> Generally I think it is good think to give a possibility to return error code,
>> despite here it is not used (no possibility to handle it since called from
>> void function, just return).
>> All other phy ops are also s32 type, so this one is aligned with them.
>> 
>> @Nguyen, Anthony L What do you think on that solution?
>
>We shouldn't carry a return value only to align with other ops. If we 

Sure, just thought it is standardized some way in that case.

>there's no need for it, we shouldn't have it... however, aren't you 
>using/checking it here?

actually there is no need since just overtemp indication is checked

>
>@@ -406,9 +407,12 @@  s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
>  	if (status != 0 || hw->phy.type == ixgbe_phy_none)
>  		return status;
>
>+	status = hw->phy.ops.check_overtemp(hw, &overtemp);
>+	if (status)
>+		return status;
>
>Thanks,
>Tony

Thanks
Jedrek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
