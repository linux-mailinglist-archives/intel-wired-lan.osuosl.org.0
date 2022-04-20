Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CED7550860E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 12:36:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C00361096;
	Wed, 20 Apr 2022 10:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EOSbha9jlTFZ; Wed, 20 Apr 2022 10:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2052E60B10;
	Wed, 20 Apr 2022 10:36:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EEB31BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B07E40B8E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caEVwBNPS53A for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 10:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2168401AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650450982; x=1681986982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrzvaQGcVVaWme3QMDaakFyZYvrXt6JZ2v9N886A0Hk=;
 b=XFzUY1Sb1n8nBV2/KrNTNJX9seSXI4HSIbNOk2BUOjvopiHypo29QQYg
 cyhAF0uifx5XZ9A3+moBkWgCIWRoaaVfYCtRja7ljJZezjoa4lJTYeR4A
 /QqUEjWFwEfwqf/2esxm3+KnR7UOMNHlB9CAakYZm8hEEonafbcKzLQDK
 Xinwxclm3Em8nF8rqAudnQ+Vu0XZzxT8sKNbO3GIQyg6/Q3gxVU2advEq
 lPABE/BgOT4qRh1hlzJ914gUOhEUix1irFxgDuMmQqlpxPGLWMdzmUHmE
 NhWvrjychYNi6X11HEQydQ+4yk+yK3I47cYLuiTXVQuHV+YrigREKIZ+T Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="350444580"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="350444580"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 03:36:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="668300282"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2022 03:36:21 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 03:36:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 03:36:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 20 Apr 2022 03:36:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Apr 2022 03:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I500MZOeFzawLnzbWd29COiHgC52amrUp5lMugc1eUnO5OF7KkZS3oWXambDWRNaw8xF35Y/9+fP87MQxaHOVALi4A+d8J216vYi0wVP7qWatqqnUbG4P+qy2PHqda+uPnMRn/hiGunYnLLMuW3GmILWr3llHTMwng6oKx0dvg2BvRloA5A1nkcDL3iHxJNwAPkMF5/intSDJZdaY2Gunwb37xHJf58vNU/dUXsETlwaxrqZyA34O8lm/Mgs5HD7eOxStFg56eT3Dkds45j6ER8IhyYtXe7tnb2T8wp+lQRwti2etGMXQ+Y3UiYKWSueusZnEplJ4mIq0mg7xUgH6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jrzvaQGcVVaWme3QMDaakFyZYvrXt6JZ2v9N886A0Hk=;
 b=Nyv42FhZfKgYMxE3lbNA4Ckj84r7u5Cndix8rLCJNago6FOLWzWFxyNJj+FV2m4q45rZZnjlve2gme+jYow7YLxAA5dQhpSOYAbAE8NkrU39nsmWTPPYRdv4XTHt/HT0KTyVl4Uj8VmyB815l2TQJWc/IWlKAL5P5Ov1y9mj6QuO9pvdUX/tsaPpEBC6u9QqkUg6+ylhFITTATpT7S/oR7DjDzjQ+kcbL+YAzkeeMTLDtiEErVL/mkt8z8ghvJXAGBt/Z8kz7ry0VDrmg/XaOjBtgt7p0bwsx9K6G/2Xrl1aWEyQObwqv1x6/1eREwx+1RBfC+gr/2YQfr9ucKyb6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CY4PR11MB1639.namprd11.prod.outlook.com (2603:10b6:910:f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.13; Wed, 20 Apr
 2022 10:36:18 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::788f:1960:fea:303b]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::788f:1960:fea:303b%4]) with mapi id 15.20.5164.025; Wed, 20 Apr 2022
 10:36:18 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: return proper error code
 in ice_add_adv_rule
Thread-Index: AQHYRa/ryrUHQ20S9UapvL6Lrk5cAKz4s/kAgAADnqA=
Date: Wed, 20 Apr 2022 10:36:18 +0000
Message-ID: <MW4PR11MB577638268472DE97373623B3FDF59@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220401095958.438230-1-wojciech.drewek@intel.com>
 <38b3db7f-af23-1ab5-ba5d-a79d02e90fda@molgen.mpg.de>
In-Reply-To: <38b3db7f-af23-1ab5-ba5d-a79d02e90fda@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91ce34ea-9d42-41c9-d28c-08da22b99add
x-ms-traffictypediagnostic: CY4PR11MB1639:EE_
x-microsoft-antispam-prvs: <CY4PR11MB16394DBAE1599DDC042390B8FDF59@CY4PR11MB1639.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jeKHslmnTJ1aA3hZo8hzbsyZhsS7Z9PsrksTNJTVx+raR7SkPoCbyApKEiQFN1mkYpvo8TURziZhkLbOU86bDcLv5Eubi8tZz4k4wIhmerrFff59fqhJF+8q5jg1IAyk3LWzDbaMrOU3FBNiMGbfGzBx3ZShm5kiDbTPaVICtgijs7n8fi4OjO1Itosvpr9Hz3xDi9Kcpzbx4shtlkZGE61hx623ew50HC3vN3P42J64vWRcn8NC3OaIZ2PPgR+SOALcseByAZ4VLIlYrGSkAv61Ois0UI8L6PW4sPK/w5US1J1Wd1f1owfYZ3Co9eKcjOoXqgG94KrAg6boWQHI62ACTyFjzT/H4ODKBvG7UrgOb0UBIZX2V0SGBtL5oRNqXsB8hA8uSRVRzaAun2HFXxpuBw0go89AFfARBcZaM3Aqa61GtJ3NKV6rarSKgLk8Klh7Qp2mTZD2D8cVu4UIYGdxUuU29Bgb1dkQlD5R5h3lmMe6nTgIgvLqDx2XRdpoB52hK5n3WHfKgWHYJtnp21t1xdj9BE6QBKbwZz+besrTA94vEQwT0Pz3y07MdBAn6mk0R2buLy3EPynMoGl9QwA9+X5d2mgE8ot3rCXzTMeLvo9c22kCAXTeQedIHWgm8DwuLE6TPF5yxw2VfQ8W/AHg5qvWh74ug+I2cA4Vxj50OLURB3FzUKKzIrVzUq1eRXNtJu1xU+o90iSdfEQX4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(83380400001)(186003)(2906002)(33656002)(38100700002)(5660300002)(52536014)(82960400001)(508600001)(64756008)(66446008)(66556008)(38070700005)(8676002)(9686003)(6506007)(53546011)(76116006)(6916009)(316002)(26005)(8936002)(66946007)(86362001)(66476007)(7696005)(4326008)(122000001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUgrMThYbUMzM0JkeTVocHJLSW5SZWY4cnl0Z1VnZmNZZ2NjaituTGljSjdQ?=
 =?utf-8?B?a29pYkFvNTljZWFxTnJqVFlaY0E5NzkxVVFyMnUzazhkVWEwWmdPRkRsWHRC?=
 =?utf-8?B?cUNoK2l5M0JkTE5tdzh4UDFjR2J3cGpkL2pZVHRSRHkyWjRrYlFaS3RRVFI0?=
 =?utf-8?B?bGYrZFcrdUFuVTYxWnRJMmdheDZHSDFiS04xemtoa3A1NzdOazRWQ0pCMEY0?=
 =?utf-8?B?UTRnYnU3RjZUNUFnR01PWmo1bXZwMDU5UU90d1pmVERWa2NuR0g0TG95aHNi?=
 =?utf-8?B?YWVHSEVpOWRRQTcrcGxSSHA0QzNTeUFQdkVxd25Xb1pEekJtN2NmT0hqQm5n?=
 =?utf-8?B?bWhWcGl4YVpoTzdGQ0pUM0hKSE1HbUVmbTlMbEg5ZmZYTmZidXhuTEI0dWpC?=
 =?utf-8?B?bkNnK2Z5cVdFellYNitZV1hXZCtpNTR4eVBDaTY5OG90TCs4M3hpd2JqQ1Rt?=
 =?utf-8?B?UVFpb3pGVWtFRm5raGQwMEdQMFBMNGJXaUhLY3kxcmt0QnJVdVFxYVg5VlA4?=
 =?utf-8?B?ZkxFY0J6VWt4SnQ3ZHdQaXlsQitIcjg0UGV3OXhnOTZsL3Q0RkduSUZHM25t?=
 =?utf-8?B?OXBzMEJRYkZjYkVock5Ib0lIU0JrR2g0M1VBcW9PYXFtQ2JrMVRjU2lqdzVu?=
 =?utf-8?B?TmRoaThFVmt6K1JMb2pqajZ0enJwSzdxMU9oeE1NakRDMkZrbGdYdkxBOExC?=
 =?utf-8?B?VnBkdTNBK0pLWHFmdUhNMHBmdlRqdm41Z0ZKMEVpbnBwdHJ3Z0lmNFpJcUp6?=
 =?utf-8?B?QzVaeGhvclVyZ25TRncxTG9JY1pmQjNMeW93dzRsYmoyczZSNVhPd2Mwc0sy?=
 =?utf-8?B?SjZMZ2tUdFlobFFWMHlhcGM4QjF0eUovZE10VWVycjk5bnFQMUtLdllPWFFl?=
 =?utf-8?B?dWZldUc2bkJSWmFtaU9oVktHdUxDNDZHQUJCeW1IRHF0di81bkhlc1NjQzRj?=
 =?utf-8?B?Q2RtZzZ2VUladW5rb0x2S1ZyTURqQ3JlQnpZWVJvMG0yRTFBQ0Z4elFNRllo?=
 =?utf-8?B?cEduMXV2aElMb0pRanpVTGtxRk0zWVRrWHRiLzJhd2tudm9LT1VlNVdsWHdX?=
 =?utf-8?B?eGUzQVU1S0N2bE04d21PU0VBRnhiZitJSm9VaXdIVXpGRm9HRDhjMk5Ua3FY?=
 =?utf-8?B?ZGJJZUI1VzczWGUrM1RnemZocldXWFFrbnhYcnBkWTlCd1FMN0ppd2h2VlFO?=
 =?utf-8?B?azhKdlZPV3lpa01sT0R1dGY1eFY3V0dqMFdGOTVrT0gwYjk4RXN4cHRRSDV3?=
 =?utf-8?B?N2lJZy9nT0ViYUtIM01OVU4zeWpQRUJtYXNFSFBOTVg0c1ZwYmxaNW1Kb1BE?=
 =?utf-8?B?VGsvQmRCMEN1MWd4RnR1ZVJnWlBLbVBuK1NRWWxxK1l1K0RmdkY2KzI5dHZI?=
 =?utf-8?B?UG9YNUM2OWxoaTUydml5b1luTi8yY1BJbENYRVNFRVZ0cmoxOFBtbXFER2Yv?=
 =?utf-8?B?UFAwYWpERGh3d1VWdVpIOVh6WEtuVnlja3RZVjNBTVVzcVJ5UjkvNXlZUitz?=
 =?utf-8?B?VXkxOW9GaXRZQ1EzMUtGbmJRYUVmeFByQmx0bThLQWp1Mml1NGhTTTAwZmJw?=
 =?utf-8?B?Z2Zidzljdnl6QjEveEFQeTI1M1RXZWpjcHRzeUNrWlVSdGFtZG5IUWJTQlQw?=
 =?utf-8?B?Z1JoaUxTUUw5d0FUSHJQbmkwQTdiOEgvODR5SXZnYmlyUG9jUExIRDJmQkdl?=
 =?utf-8?B?d0lkQUZTNytWSC8wNUlYTGliWCsvT0FESHdYTXhGMnQxSTJ4T2hydEZ2aC9T?=
 =?utf-8?B?OEJsVzR5NWZzS0JFTDlzZHRyQ3lzck5VVlF3THZBMG9mTUtpNjNhbG43Q2Nx?=
 =?utf-8?B?U1E4Z2VYTkRxd2NBa0xmcTYzNVNiL25KaElzdzVKVHpKWENxS1crRTIzbWFp?=
 =?utf-8?B?OXgxbG9MZC84NzE5WG9JRFBhL21FSnhEbnEzVmlzWXJ0OFdmSVVvb3NNRDFJ?=
 =?utf-8?B?RmRtZEU5aVlPSGttY3pGVytBbGVDUEZKVDQ5YjZxZlpkZUxhdTBLN0NEUVBD?=
 =?utf-8?B?ejFPY0EzR2RHRlFORVNvNWpLb3FseHptT1E5V0tVaTZscmdOZkRFSVpENlow?=
 =?utf-8?B?VGYvR1VxaUwzMTdGV1JybFVBZnR5Ylh3RVRHTzVXSlFDaEQzbE9NWTYzUE9N?=
 =?utf-8?B?YWZWbm9nd25xOXhRSlFOcWpIeXRnQ0EzdE9qYUFIWjBxYm9JUWF5UWpCODVh?=
 =?utf-8?B?UkcrZmtVWk9uWGR0aE9yYXNJRXRaaElZZGxmOTdvQ0Vaa0ZRdWppV2FDeDA0?=
 =?utf-8?B?N2k3UXk2MnRSdzJaU1VSVzhnYzMzZnpGNWwyZzhUaGhsSHVJektCR1A3aGEz?=
 =?utf-8?B?NHFhUHd0a1dmaXNBRWVlcjJRMS9kSmJHQmlvSlVScVp4OEgwdUZvQT09?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91ce34ea-9d42-41c9-d28c-08da22b99add
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2022 10:36:18.8088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p0iyt9vd7m81/kBpO5ysSLbRgDBbbwewJ3J7SoI0V1u2fGd/XAd6Oigs8VFN//Y14F1m585V315gEy14ob69Sujus8c6dxczH1DI/2bAKlE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: return proper error
 code in ice_add_adv_rule
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgUGF1bCwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+
IFNlbnQ6IMWbcm9kYSwgMjAga3dpZXRuaWEgMjAyMiAxMjoxNg0KPiBUbzogRHJld2VrLCBXb2pj
aWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
bmV0LW5leHRdIGljZTogcmV0dXJuIHByb3BlciBlcnJvciBjb2RlIGluIGljZV9hZGRfYWR2X3J1
bGUNCj4gDQo+IERlYXIgV29qY2llY2gsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5b3VyIHBh
dGNoLg0KPiANCj4gQW0gMDEuMDQuMjIgdW0gMTE6NTkgc2NocmllYiBXb2pjaWVjaCBEcmV3ZWs6
DQo+ID4gV2hlbiBudW1iZXIgb2Ygd29yZHMgZXhjZWVkcyBJQ0VfTUFYX0NIQUlOX1dPUkRTLCAt
RU5PU1BDDQo+ID4gc2hvdWxkIGJlIHJldHVybmVkIG5vdCAtRUlOVkFMLiBEbyBub3Qgb3Zlcndy
aXRlIHRoaXMNCj4gPiBlcnJvciBjb2RlIGluIGljZV9hZGRfdGNfZmxvd2VyX2Fkdl9mbHRyLg0K
PiANCj4gTWF5YmUgbWFrZSB0aGF0IHR3byBjb21taXRzPw0KDQpJTU8gdGhlcmUgaXMgbm8gbmVl
ZCBmb3IgdGhhdC4gVGhvc2UgY2hhbmdlcyBhcmUgbG9naWNhbGx5IGNvbm5lY3RlZCwNCndoeSBi
b3RoZXIgY2hhbmdpbmcgZXJyb3IgY29kZSB3aGVuIGl04oCZcyBvdmVyd3JpdHRlbiBsYXRlci4N
Cg0KPiANCj4gQWxzbyBmb3IgdGhlIHN1YmplY3QsIGluc3RlYWQgb2Yg4oCccHJvcGVyIGVycm9y
IGNvZGXigJ0sIGp1c3QgbmFtZSBpdC4gTWF5YmU6DQo+IA0KPiA+IGljZTogaWNlX2FkZF9hZHZf
cnVsZTogcmV0dXJuIEVOT1NQQyB3aGVuIGV4Y2VlZGluZyBJQ0VfTUFYX0NIQUlOX1dPUkRTDQoN
ClllYSwgSSB0aGluayBpdCBzb3VuZHMgYmV0dGVyLCB3aWxsIHNlbmQgdjIuDQoNClJlZ2FyZHMs
DQpXb2p0ZWsNCg0KPiANCj4gDQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCj4gDQo+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IFdvamNpZWNoIERyZXdlayA8d29qY2llY2guZHJld2VrQGludGVs
LmNvbT4NCj4gPiBTdWdnZXN0ZWQtYnk6IE1hcmNpbiBTenljaWsgPG1hcmNpbi5zenljaWtAbGlu
dXguaW50ZWwuY29tPg0KPiA+IEFja2VkLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kgPG1hY2llai5m
aWphbGtvd3NraUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jIHwgNSArKysrLQ0KPiA+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV90Y19saWIuYyB8IDEgLQ0KPiA+ICAgMiBmaWxlcyBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmMNCj4gPiBpbmRleCBlZDcxMzBiN2FiZmUu
LjAxZjcwMjllYzIyZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX3N3aXRjaC5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9zd2l0Y2guYw0KPiA+IEBAIC01OTkyLDkgKzU5OTIsMTIgQEAgaWNlX2FkZF9hZHZf
cnVsZShzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9hZHZfbGt1cF9lbGVtICpsa3VwcywN
Cj4gPiAgIAkJCQl3b3JkX2NudCsrOw0KPiA+ICAgCX0NCj4gPg0KPiA+IC0JaWYgKCF3b3JkX2Nu
dCB8fCB3b3JkX2NudCA+IElDRV9NQVhfQ0hBSU5fV09SRFMpDQo+ID4gKwlpZiAoIXdvcmRfY250
KQ0KPiA+ICAgCQlyZXR1cm4gLUVJTlZBTDsNCj4gPg0KPiA+ICsJaWYgKHdvcmRfY250ID4gSUNF
X01BWF9DSEFJTl9XT1JEUykNCj4gPiArCQlyZXR1cm4gLUVOT1NQQzsNCj4gPiArDQo+ID4gICAJ
LyogbG9jYXRlIGEgZHVtbXkgcGFja2V0ICovDQo+ID4gICAJcHJvZmlsZSA9IGljZV9maW5kX2R1
bW15X3BhY2tldChsa3VwcywgbGt1cHNfY250LCByaW5mby0+dHVuX3R5cGUpOw0KPiA+DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RjX2xpYi5jDQo+ID4gaW5kZXgg
ZjNhNTE1OTdmN2Y2Li40Y2VlMGZjZjkxZDEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90Y19saWIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMNCj4gPiBAQCAtNzQ4LDcgKzc0OCw2IEBAIGlj
ZV9hZGRfdGNfZmxvd2VyX2Fkdl9mbHRyKHN0cnVjdCBpY2VfdnNpICp2c2ksDQo+ID4gICAJfSBl
bHNlIGlmIChyZXQpIHsNCj4gPiAgIAkJTkxfU0VUX0VSUl9NU0dfTU9EKHRjX2ZsdHItPmV4dGFj
aywNCj4gPiAgIAkJCQkgICAiVW5hYmxlIHRvIGFkZCBmaWx0ZXIgZHVlIHRvIGVycm9yIik7DQo+
ID4gLQkJcmV0ID0gLUVJTzsNCj4gPiAgIAkJZ290byBleGl0Ow0KPiA+ICAgCX0NCj4gPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
