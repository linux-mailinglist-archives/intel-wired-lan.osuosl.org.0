Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DACB3B83AE8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Sep 2025 11:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8C52341534;
	Thu, 18 Sep 2025 09:04:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MM4AB5Nhz4nb; Thu, 18 Sep 2025 09:04:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0322941615
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758186290;
	bh=4G+Bm41erNcjByCDIcM+1Wo46KSitlrtxOyL6sOBaAg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UtJidjj6qY55mMAyZUNxTmS/nH/6/8xasFeULersth3GVQeTYkYLCZtg68PkW3ldC
	 1lK5tVr56earowJVbUZ1zQQeMjMZrB0eaRzgkvyxUQF2gNJCZ4cMT+vt/BZb8vwgYO
	 Y2RImoqaI0HcY55Aw8BjznGu+Lv6S4ULdV7qSj9p9n3KX0wU0nsTT7z8dGubeJaER/
	 KJdWnrGMCXEnmRwA5gRgalUzjiyv5QZQvMN36t4dUDITRnKsln1B79jtqpR1Xyv+FW
	 DLm6ik8fF/W3/5mfmyTVMZwJje1R3ZHGc97ypxSKNxGZsJn3pCmpVDQQlIliS5kwkd
	 Ir9HRkL/j/8yQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0322941615;
	Thu, 18 Sep 2025 09:04:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 32C8F199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24D7F81E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VTy9daAzGF_T for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Sep 2025 09:04:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3955C81E25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3955C81E25
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3955C81E25
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Sep 2025 09:04:48 +0000 (UTC)
X-CSE-ConnectionGUID: UqmoJLZqT5OOrqYZvoC7IQ==
X-CSE-MsgGUID: Wj0qm8Z0QZqdlRyxY1esDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71613857"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71613857"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:04:47 -0700
X-CSE-ConnectionGUID: zwQMhYgYTxyvjqmLUlw6Kg==
X-CSE-MsgGUID: l0sSyzMSTayqIPm1KwVEKQ==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:04:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:04:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:04:45 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:04:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G/xAr+eYqV1QmsuXL0bKt7mEDij1eYifJjnzKTgveSqIS64RSPnpH8OWr8bM7QYSQlLA1JtikooCfp+lTKURSeye6LrgVBY4p/HdYBuTkSJyI7Ne3rl7vp5nBsA2fKPHK42mSta4SyuKJYLcf2vFo6hkBGry2jE0txWAfKN6Wel/9DmebVo8BicNypb22MIrwkn4ALD3yyIjN6KAtaCUImHki9k2v7pABU1josFPsFhEv9gtQG/a6TO+XYziMBkbcuBP3mFjhNd2bLp898nl6503u44T8cU68f5enIFA50aUELFY+AoJybyVmP9uQ3ow0KzvOP2NSwxzx6eyp+LN6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4G+Bm41erNcjByCDIcM+1Wo46KSitlrtxOyL6sOBaAg=;
 b=UlzARvVJ1+0YeosxhZFYdpMjeBebj+uQv7ya6iQ/lZr9nRD/4x80MdCeIsCytDaMfHiyRJEZOJs5OY0F1EjMxS0YVs8m/TOIx6UTFq/gbqGUN8zluvIoXFx68h5pFq2TmZBEwYI/Od4ymtAPXjjXqyLV0CX18SiSnSTNKSxXObY+tiYwuPGmsUXxNcSBGWHQ9d+ils7PdnRpXU9CocyeP3P+1Z/4AWXT5DgxxX9hmixRJPPTnx6fGtt3GzUWfhc9EqrC+GQDKTgpgQCd9aqcE3U1nDt73oD2vMSqQ9K7plVRJew/LUg3CJNAjeUuyPtLEaD621xou+hSQajU6KVPGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:04:42 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9115.022; Thu, 18 Sep 2025
 09:04:42 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, "Kyle,
 Jeremiah" <jeremiah.kyle@intel.com>, "Pepiak, Leszek"
 <leszek.pepiak@intel.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 8/8] i40e: improve VF MAC
 filters accounting
Thread-Index: AQHcDD+P2fIGJHCmm0KaUCEiYI8xHbR1Nr8AgCOnQNA=
Date: Thu, 18 Sep 2025 09:04:42 +0000
Message-ID: <IA3PR11MB8985E8CC26FD6E4099CFB0058F16A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-9-przemyslaw.kitszel@intel.com>
 <20250826163650.GL5892@horms.kernel.org>
In-Reply-To: <20250826163650.GL5892@horms.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: 8a371412-f140-462f-11b0-08ddf69267f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?fuyE4n0u4bdCm7GqZExRXJi22dw8yEV3oKXuRWgR4vEip91rwqT0GCrnD8uO?=
 =?us-ascii?Q?n2vUkcZCrCVG1Az6hCkV9DBvNJPcoyJm/g9eTzczRc6TA9OeUGoEAeyXsexz?=
 =?us-ascii?Q?Y9THtnkkR0nXiSN3sfDYCn7qdv6fmIBuiAs9W7zQ4LQr1nkikICsBU3fA6Zd?=
 =?us-ascii?Q?cbdR+r2LvwvZ4bGqwVhNKNuxYs4eKKOkc+uEP43qSLyk7xnMW8AIkkiDEzb5?=
 =?us-ascii?Q?Puo7oa+bWxg0eic6ZzJKNYeUslRkCdvLfy/MJgdnbsXfqX0F5jogtp7HceAA?=
 =?us-ascii?Q?8jEW1i3UGsEoCZ3C/vGSLfq33eqx3H1Cut9w+1v5U7E3Vko7Hy1wFY/vwKlf?=
 =?us-ascii?Q?AU6bgDNLweO/JnwdF5UC2VtBXxPugwbTVdH35lG63A5UIFHArH2TRkXzOeA8?=
 =?us-ascii?Q?RANhgiqV0DmPRqERccX8bhhngXssSSxhtxJoGCoggc0XPAbAqf7ZzUxL643/?=
 =?us-ascii?Q?cbeLzyK+4ymU3OUA+AUmKYSPc6popbvHaHejJRBTPZTABbA2SS84zjd9hp11?=
 =?us-ascii?Q?FgUbJa9D1tmpVXv/HL6lTsAQG5aD/x9k1YTGu1goGRbqujZOWdNdJ5JaEmop?=
 =?us-ascii?Q?qavJGTOQlUV8OeXSzwRYOK4HG8sDY/RNVdCssuKoABEVMLj5yfbpJTNIOiWi?=
 =?us-ascii?Q?0bEBG55Q1ijE5HqvHBvQl+VBLS9hb/GQDqFJr7LcaeVTPOhoLdFIyTo+EB5+?=
 =?us-ascii?Q?JjbgVMZDMYQPF6aqStfh8Bwb0Ep5MRBMnwdQo5jUOLUzKE7gA554BR2wZKQR?=
 =?us-ascii?Q?o92xKYYsw9gzLH7smUmOh2z/16vueb15ovjLtAGBRke5sySBzGeQ/rL7bc45?=
 =?us-ascii?Q?R2TOqodmo0ixd1IRXMUOQiYg8tUGnBNiFVDnDy3F04sVj38Lo0jtoBW3iZim?=
 =?us-ascii?Q?FYIZMGUjT9ySL4DvDkRb2IUED4lF3K7JFL0vNA6B3cNknS6EHLNxlYovBjd7?=
 =?us-ascii?Q?qal2rs/CXi81tP6EqHfL56WcnVwGIWggyp/Eo/Xni3teRNsRdw77J13Uvp3Y?=
 =?us-ascii?Q?KIb4FcRT1TQSi9Cl/21jnqM0OBSj/vRcZauBZ95EU5S6jOz/9czJRXJTVcZV?=
 =?us-ascii?Q?jDa25i1XhGAG1IhTFbMrhzoKOPn6GY7gAjM1DWbqfB3SNjDpVMMuftxn1+jy?=
 =?us-ascii?Q?wIR7mGIt36zzCeSY9pBdTtByUTbe3OY2Hxe6XWdedB6wQZWeaZp70JpVZSR5?=
 =?us-ascii?Q?PjJr7Rf92uIAxPYH/pTERwP5UvykmrOHZh2TDGANoGEledYiQb+5c5cOS/2T?=
 =?us-ascii?Q?75o/gr8H6fy9GjEG35KDAft8as+g8xlNKRFZsC4g9i/AWsPlfz67P/iUHJbo?=
 =?us-ascii?Q?JIZ8DadypNMx+Lri3Sjkpq9wxPhBb2HgN0X0XzLal20Ad5XEDv322u6Ua9UD?=
 =?us-ascii?Q?HtjbilOAiklUbdlX1qA0F7SY1zROoqDdHL4xnEo0Om/oyn7N8TuvMCqWurnW?=
 =?us-ascii?Q?NU9QHBDM+Mhtso7Vjiw2qawhbN1Uzjvp6UCzlZc/Q1zmZg7cGUyIig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CuY1XuPuluU/Ih2dOC9ncSXOT9mW9se59SZ32TW1iQmfCnfGhO273EZXs7U7?=
 =?us-ascii?Q?J+uYdkTLNAiGSMmjtAOfsQPiQUiJ7mGRNDOHBCYvWfwjQS12+UGcupIjvWBa?=
 =?us-ascii?Q?4n4qkZjkQ0mqa2IFEeB+Iyy0durAFniuok4AU6hZF6vqONjErfr1Wb970LY5?=
 =?us-ascii?Q?gxodudkztcdERmi47SbJwXrNsAFXALe8KS2HIG8U/A1a0hadygX6aM9D7Cok?=
 =?us-ascii?Q?3awq3yyDRLSh3UM2VwbYWet1k9gQ4UEMW/+yoN12VU46By5d3QdtppjdASZ5?=
 =?us-ascii?Q?qAdd9V2uB/YXhMi3aSlsbvL1squVL3hkRzbyCQjvJfG0BK/IhkQUOhfZ7g+v?=
 =?us-ascii?Q?QYqOIvJYJNuaq9pKFJuZpgNbbSEB14JIUAureUpaRCVxrkSMdxtz2PGrENKC?=
 =?us-ascii?Q?fwdcFgXNtMh6DaVc8g3uHAZIEa0SsJ5Dub/rjnEDZgppQEVAwkwUQ1NuQ1l4?=
 =?us-ascii?Q?69lHVYJ8avsMyKtu5JpXs1E1sQY/c1WeNKRlqkECpU2/FRa7OFLHRvCZbugW?=
 =?us-ascii?Q?C/JuTg7wznl5f0OrSMejwnlddWh9Au9X/bMgMszVX0ALVsY7HD9SQQINQ3Nc?=
 =?us-ascii?Q?S+HNju4eYXwSYqBbqOnU8Oy/vveILlNNvRFCbkItKT76owlnri5/BOKjL8cx?=
 =?us-ascii?Q?7RPrFPD5u3tiie6pNSExT8jVZg4lSo3Icx3os472kfHUFruVpUZD0LfBeyj1?=
 =?us-ascii?Q?lE/8Zw9B6VWgr0tR0jndunGWjuR7fR23ROcheAZX6tH/A2obZQdKY6aDnKxQ?=
 =?us-ascii?Q?1U/oyCvCI/jK50x+f3tEbWE96XQngWmv79LToFp4IfnPg4hbE01rrQVndPnO?=
 =?us-ascii?Q?BHC01gWO8BfJ7f03+9MIQxwyPe5a0UyjvECSUL9hmUcbTH7ehg7I5HdWvNyc?=
 =?us-ascii?Q?UBhjk7PjLOMkKLQexhyFhRwBjVOn6PzUBpjF0tEfbn+zz7Ip57JgAX6au1Gt?=
 =?us-ascii?Q?bctkCOIAO+9lmbpCSl0H3u0Rgxu54I4Ncpe+eEqtLLi0w+fJy81Q8LelYDRE?=
 =?us-ascii?Q?5lEHeXOJ70eFjPLD8+IC7+eTDd2Mp8VtUXhHKEx/0K4uKPs0haJ6aLyMNjOk?=
 =?us-ascii?Q?7plAnBHdZjMicngRZOzzG2KcmMUZbceB6oZYgYXC+4EVFF9C27zfjXEUog14?=
 =?us-ascii?Q?jp3NWrcBiwzfQv72mveNdU6ruWI1TI5jVjKxGcCZdqRzm+e0lH66Wc5e7min?=
 =?us-ascii?Q?XtZD9fTbBLiXh6omBu8Z+JlgS9+aJSi+Oq/ZUGk+ag1owvw8KZJ8maY3Z3W5?=
 =?us-ascii?Q?TZQsD95Y5Z1ukJ0XaK3YuIk5q1ZTJmv6satUriJTjmOvRYsJueofMt0H5OHN?=
 =?us-ascii?Q?5jkSoyVxpA8BXwmiTCDa/EChu7XrbTSf/ok0cUMUTpmHOFO4j+7WVhvVKL9r?=
 =?us-ascii?Q?v7CpIwEBwM+TLIuRRI6tmHMGzoaBQpHBXDnv4lr10EZzcjFkGtYMt+x5mMFT?=
 =?us-ascii?Q?rhSJp4AeIYGge/uMVch/coeoi/ENcq7bPeBB9/KxcXcC3WAki5BXzVS3eaKU?=
 =?us-ascii?Q?Vqk/D4+lO4aBVmAZmnhAf+0gQZdx3kmuZvcWmCLn9aa6l7f1j44FHcrWEm8z?=
 =?us-ascii?Q?Q5qcwQ6qk7KqqKkgz9llA2S+qV9o1UJ13TFLbv87QBXl/FU4lunToxhCdXKM?=
 =?us-ascii?Q?Kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a371412-f140-462f-11b0-08ddf69267f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 09:04:42.5896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPnYTjintGU5KOeYe+1C+hzt4+KOLEfMWhIsgDp630uzawtJvH/1u6lvHGUuwf19CQxhbsLRg3/K/NB6k10cuPbynaG67hieOEmUgGSNG8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758186288; x=1789722288;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4G+Bm41erNcjByCDIcM+1Wo46KSitlrtxOyL6sOBaAg=;
 b=Iq7A3fFZc4TK+QYm27AN68agpl3YsdFQZqWL95Y6TYSJtSroUsEuf/T7
 aGDMdYjCpSXz6HZS3Mf28Zk4wUuqiDm18dB5kGy48vfR/XjhxPiwnxMBv
 hgAsAUa+T5bg2baGgYOMFRWHuKqZFgTxW2WNmCiz6nR8KYH+ZwnoNFqFP
 8LknkmxuXajP6x0irnvt87NDl2aUvbZc+7pPWbV8k3r6mmJVrr3V6nE6n
 CED1jn/qQ5X+n2V9s2XgEhEZgMBPOLm0lG9wN+iDFrDAXMM7Af3JPrP3O
 BNxd3XEmbPUWuXziNIw9ZTVNv1nPIdT1FdSpVfuepuJ8oQJE/9mHTkOQC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Iq7A3fFZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 8/8] i40e: improve VF MAC
 filters accounting
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Tuesday, August 26, 2025 6:37 PM
> To: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; Greg KH
> <gregkh@linuxfoundation.org>; Kyle, Jeremiah <jeremiah.kyle@intel.com>;
> Pepiak, Leszek <leszek.pepiak@intel.com>; Czapnik, Lukasz
> <lukasz.czapnik@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net 8/8] i40e: improve VF MAC f=
ilters
> accounting
>=20
> On Wed, Aug 13, 2025 at 12:45:18PM +0200, Przemek Kitszel wrote:
> > From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> >
> > When adding new VM MAC, driver checks only *active* filters in
> > vsi->mac_filter_hash. Each MAC, even in non-active state is using resou=
rces.
> >
> > To determine number of MACs VM uses, count VSI filters in *any* state.
> >
> > Add i40e_count_all_filters() to simply count all filters, and rename
> > i40e_count_filters() to i40e_count_active_filters() to avoid ambiguity.
> >
> > Fixes: cfb1d572c986 ("i40e: Add ensurance of MacVlan resources for ever=
y
> trusted VF")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


