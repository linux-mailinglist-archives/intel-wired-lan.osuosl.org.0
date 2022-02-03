Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9CF4A7E5C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 04:35:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B58260776;
	Thu,  3 Feb 2022 03:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hd-g5zBdpVnS; Thu,  3 Feb 2022 03:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2991F606CB;
	Thu,  3 Feb 2022 03:35:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FDDA1BF97D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CDEB40230
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Odq8aI6aabd8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 03:25:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FC37401E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643858703; x=1675394703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+6oQQhkKwAY8UCDEsPh0nRedFHi9JGGwcpCcYmeR1M8=;
 b=NTm6pkWZ9Fxi8fTn97lP0Fen9hMnT0oRbuhnUBrMpwXbmrXTaSuWr4MN
 Sq/t3MSXBms0QIl4hVbd06u5rZxKU7gSVy9URyEL4JxZgqPZJ8/RGmXep
 yEYtUeWjVu9fndM3rKDiyfSuct+ntEft8zZF1ZM0BNaxucF3Aq3pINt7o
 /8slW797n8tmGAmTiARDIVW8IMDQp/A8lWR+jQ4k3lJiamdy9KEy+MDtn
 AHvl+8Os2luPBw2NobN64vCj5dQK0PcbKX0zEDgzFrxWTDNW9iIvJu890
 uRv7Qm7ZADpOWRJix3kJEjMZoPtXH0BHhHQiMkNcVtBa+T1jERvhypBna w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245664649"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="245664649"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 19:25:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="538579346"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2022 19:25:01 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:25:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 19:25:01 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 19:25:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8U3RUmNcuQkb5eQEVGBUmbn2T0eSUO4jD1FD67UBb2jtmcvcWC7RtlATi7erpkBIyzEsreLynf4NIyT7ODAyJXgCfY7bBnjA7i20LsmIyzK2hMCJ+GWVRgtJEHTW2MUl37HWRNffvJay1QYibRGpIH7vFvMmxr0kiPKBYEWllXNPyokkTW88GZj4lv0cGEyhpuYL/1wCrFVXk3M051OVtxaO3ohMJfBw2z7ItiJsNDcOi6vBCQ7L5STSr1ltXGCFhL5S7yY5FvakDr3n3RIydCIZFHujuzs+Fx90EmopMKsFgTmJr/S0ruOpDolVlSwXGpG9UtenejHrzl+nix1Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+6oQQhkKwAY8UCDEsPh0nRedFHi9JGGwcpCcYmeR1M8=;
 b=k+VU0YSV2D9DtaI9CttAjYZLosSh+BvmISvUCBXMwgWJ5LC6xMza9Ex+L4aNWM8ONUavicIGaz/5Z9CTTkfa8+9ir+MZOwCsZaivpKg50JE3Jk7XJOn7UIIsz2trC0lCeF0s7dGkde4GXavVU5GIH4X/FlP6wfyHSCBoV9WBoUYPKKRzBwm1BRvaKSI69A5LgdkqXbdmYrA66ZTjiavuU74HoCYHfmC9B4E4eqajqpvJXglrECiJc6IFddn0xj1WJj1gxdpndOAEZKjx4vqTH88ZHj0zlcZCSouoWz5LwzbW+PgU72quZBkNgeSMU29y8sHJGw65yMTIpSKWS2RBoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 3 Feb
 2022 03:24:58 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 03:24:57 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
Thread-Index: AQHYE97YRa01f2+p/EuTRTcc8O6KfKx/PRQAgAHzIbA=
Date: Thu, 3 Feb 2022 03:24:57 +0000
Message-ID: <CO1PR11MB518657515DD2AEBF539B9B768F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-5-alan.brady@intel.com>
 <CAP-MU4MB=vAFb7B92yhx+CfX+NnRSJNzA3HH_X9geMaR6p4RTg@mail.gmail.com>
In-Reply-To: <CAP-MU4MB=vAFb7B92yhx+CfX+NnRSJNzA3HH_X9geMaR6p4RTg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03590958-b654-483f-ab08-08d9e6c4c12f
x-ms-traffictypediagnostic: DM5PR11MB1945:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1945461C135E7D62DD05557A8F289@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wpoc4boDNhUI6BEXtBnmeJcWPXs8fdRY+5FvpOrOrQ3vB1Xt2RdNjWWafZ2lyzifPbUP4o5+eahZIRZ/p5HSoBVVXE1/QvA33F/nPtMU1a59UPNJuDBO9xHKVU5vomDOErZYjrp+o/MGpWoJK8Sta6dJdOLkTCWyh9dcKP3hQlSJmCAW7r+S6kEcLHlw1Osliq1ZNluuXj8nErib1s4ZAXK52jDs7Vqb2PjaLIZbp75hZFqtTuIrDO0kOzj1fpZjR1CXx5iMo8FFsldweYzTkidmACINhM4wIgki0F85l/CIxYjnJDMwaC/JC3XlrtizTm93gbGc2/Bixoog+TTss+m8oO8nt2s0ASE8o75E1VTd2alHz95HDAYIbYansTalLbDzWk30Zhm5FPejkCQuO0KY6RzYpXJyQZGjAy+DKAOmyQh7Ipsn0ijuuyv1TzE1nbXzA1VdH59qyRkdONjjyS99n9gj2C9ZrpPZK45ssGnhioqpiL6OZuIOo7Zcx5vPjLjvZOhmHE+gvvKlONu4YvnKaRBIDYTgzfl67xWfn83fEi+WmBUT5SpQIKxFam7FHZjBbm9swZWluyD4i9+nF0KGJ/MQJ0iA7PfDE778M0QqC/RZ3LYpVzta3/z5fsvnq56nMiJJJX90Gwj6ALafRJFRHsN6NCF4Jv/0/3nJx7+d0hcC2Z5vVhlEHjcfmXHpfDCYFku0biUHtVp5GrCOdX7wSZzja+x1dbgi3vGaOZNQ+wcuQK1EnnCzp3+slF/86QNwhwnZ5UcPw6gVQnlDCUSHW+VyozHgYh2k6px7b58=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(66556008)(38070700005)(55016003)(38100700002)(8936002)(122000001)(8676002)(4326008)(76116006)(66476007)(86362001)(64756008)(71200400001)(66946007)(66446008)(5660300002)(9686003)(52536014)(7696005)(53546011)(6506007)(33656002)(508600001)(966005)(30864003)(107886003)(26005)(6916009)(186003)(83380400001)(316002)(54906003)(2906002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0xKdldxUmVrSW05b2pOTFBoalR1OS9GUGthYnVLakphcHBONWNlbjlWUzJz?=
 =?utf-8?B?QjRzR0xHTC9iNnp6cGxDL0FQRTd5WWZCN2tXVmgwUlE0WG9EVFhnKzRaRnhB?=
 =?utf-8?B?eldvUFQ3Mjl2czlKaUJjcFh0WnA3UG9vUGRWUEFnRnVRRis2b1VOZm5rRGlJ?=
 =?utf-8?B?SHo5SVdjQUhNUmtVQytXdEtGWm9CVUV1cWlyOUEydE8yUG5tQ2RWSFpwMG1p?=
 =?utf-8?B?UktCRU50Tm4vQVRZVnFkQjlYaytEUWNFeUVtNk1JSGxkUVBFSkJiMENSWG5L?=
 =?utf-8?B?S0k3N0NLYmI2c2FKZStkZi9NUFRZdTkySHZvWkJNVTFoK08vbEo4cDNqV3FI?=
 =?utf-8?B?bk9MMnNkaGRoM0JDUDFicG01V1NKUEdOYjRWcmE0bVBIZHhldFpRSVJrY0xQ?=
 =?utf-8?B?WFlheDJZeDI2N0ZNWDBIeGhhRTVlZlZhakw3aFVKTnZOcGdRb0psRGxMWS91?=
 =?utf-8?B?QTZRMGxxb2VvTUR5L0JIUHkvMHQrV3RDUFBvS3ZTclZGNG1UMEhnSzZZUkNM?=
 =?utf-8?B?amhTcEUxUXFUeDloSXRMdW9lYUZDMFV2T2tsdk43R05WQ1BuOHBsZ3o1K0VX?=
 =?utf-8?B?YzJyeCs3c3VtSnVYMU9YTGhQWUlFSjhudStxSVBwcG9FTW1uVHZXV2UydmIx?=
 =?utf-8?B?aFlZdVdiWjZBSGRJYmZVcTBxMU9nNWRJc0l5VXJyaDd2VnNCR3I1d3pGakRB?=
 =?utf-8?B?dEhxTmxRM1M5N2FWTzc5dGZzejk0M1RyclVzNENNeEYrbW9nYmxTSUc1aytk?=
 =?utf-8?B?cE9KZHU3L3UrWm5MM2krVkhHcVdDK3g4RHk3NVRPOWN2cllyLzEzcmJqVGdt?=
 =?utf-8?B?SlZ5MFBBdk80ZS9hWFdyQ3VKQVBlTkI4ckdtMm1WRm5FUEdSdkNBRDNrbmhT?=
 =?utf-8?B?akg5N0c0VjUza005eUtYbytWSWNHNkNxaCs2VVg0czV3NVREaWEzQjZHQUVa?=
 =?utf-8?B?Z2JUeU1JNXpKRUNBWGVqdEhUZ1F5Z01MM2VjK0N0bHRYV0RLRTQ1OTVSRUND?=
 =?utf-8?B?b2c3cXVWd0tQMCtmZzY1YVF1NVdYWTloNVBCbVJUTTlRUDVVYXlCNmtvKzNp?=
 =?utf-8?B?bitMdURrTndSQ1RjOFVQSWRTMkJSckZmck1qUDVxUFNMa0JwSHN5ZDVzdXd5?=
 =?utf-8?B?TFRaaXNPeVpHaEJCZkNpaGNISGVuWUhqOVVIemh4SXNBcE42T2ZGbVhOQisr?=
 =?utf-8?B?bDhkakw2Q09LMHhnekpWY1dLaERMcXA3U24zRTI3Ny91NHZ5dmxnZnpUMkVY?=
 =?utf-8?B?RUU2MVpGQWpjU05ZTTlaWU1QN3N5WnJRVVRhbHltb0haVG43QTRXTjdzUE1C?=
 =?utf-8?B?NGVNVzg1b2xZN2lXWW4zd0xqRlBZbFN0RzNzUkdCV01JWkdIWi9kYVVleEhU?=
 =?utf-8?B?N01vbU5GbFB0WVVVaE5FSm8yd0l1MUhlTjdKUUhSZTJKNUtJdmlxQTFLSHBB?=
 =?utf-8?B?Y3Q0Mi9EaXdTMEtvZWRvOEVycDAzUldEWlZIQXdNbVdBSENBM3dUV1EwRGFE?=
 =?utf-8?B?M0F4R2xVamFFQUZHT0dHSDF0VG5BVWpnSkh0amNuVHhiTmRJcGh3ZUR2SnZi?=
 =?utf-8?B?OWVhdmd2L0lVUGZhTHdFcGt6Z3UrK1dHdGZoT2ZpZ21qZlVpcEtPRmdXMHE0?=
 =?utf-8?B?NHNmWXYrR1hVUVR4TDFFT1dLQ1oxNi9xQTdOclNsYnU1dmdEbFRhRE95SW5t?=
 =?utf-8?B?Mk11SHRWWjJjNXh6aGtGZGVSWWhsSE45MmY5YUVkQVplM3JjV3ExdWpMRW1J?=
 =?utf-8?B?ZDZyU0tUamc0WEY4MDBZTDhNMEZYVEM4VWN4d1hzNjQvQjNVZ0dxWnoveHJm?=
 =?utf-8?B?U2ZQeS8xTjhaZEh5M2V0T0g3QXdURVp0OStHSmRtdkRWemltT1FVMXpKSkJS?=
 =?utf-8?B?ZGMzbWQ5b0ZiZjJWQnRtcGlZTEs0MVpIUnBHZlNobU54T2Z3aHhlUFkxMSs0?=
 =?utf-8?B?c29EekxGMVkvbEZzbDZTVFJ6TllxdVJpN20rMEpTNEhQNVNLWm5uSmsyOWFz?=
 =?utf-8?B?aWtOS2RKUEF3WVR6VFFycGM0UkQvVkVaaGkybjZXOHlpVHA4UE1wNVZDNDFU?=
 =?utf-8?B?UVdyODFpUktVd3gxZHFuY2dncEZ1V1ExZmlHdWxFVWJiU3ZHNDg0ZG1xanlz?=
 =?utf-8?B?TjZPVlYvaStDSTgrK2FWZld5bE5PeWp5Zlc4RlNxQzBtQ0NPcTBzSFlKR2wr?=
 =?utf-8?Q?3q/FPORmJEO1iSFUKU8dH08=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03590958-b654-483f-ab08-08d9e6c4c12f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 03:24:57.7022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LvFlvK5kXbKVNaK47FXCtBU9UfMmFKtWqgpn4Nwugqber7J6pICropnixTJWcCFIqcLSghTVFqoKH+Vf2bgkkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Thu, 03 Feb 2022 03:35:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
 controlq init
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Shannon Nelson <shannon.lee.nelson@gmail.com>
> Sent: Tuesday, February 1, 2022 1:27 PM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 04/19] iecm: add api_init and
> controlq init
> 
> On Thu, Jan 27, 2022 at 4:35 PM Alan Brady <alan.brady@intel.com>
> wrote:
> >
> > Initializing device registers is offloaded into function pointers given
> > to iecm from the dependent device driver for a given device, as offsets
> > can vary wildly. This also adds everything needed to setup and use a
> > controlq which uses some of those registers.
> >
> > At the end of probe we kicked off a hard reset and this implements what's
> > needed to handle that reset and continue init.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/Makefile      |   3 +
> >  .../net/ethernet/intel/iecm/iecm_controlq.c   | 649
> ++++++++++++++++++
> >  .../ethernet/intel/iecm/iecm_controlq_setup.c | 175 +++++
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 191 +++++-
> >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   | 172 +++++
> >  drivers/net/ethernet/intel/include/iecm.h     |  52 ++
> >  .../ethernet/intel/include/iecm_controlq.h    | 117 ++++
> >  .../intel/include/iecm_controlq_api.h         | 185 +++++
> >  drivers/net/ethernet/intel/include/iecm_mem.h |  20 +
> >  9 files changed, 1563 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_controlq.c
> >  create mode 100644
> drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
> >  create mode 100644 drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm_controlq.h
> >  create mode 100644
> drivers/net/ethernet/intel/include/iecm_controlq_api.h
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm_mem.h
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> b/drivers/net/ethernet/intel/iecm/Makefile
> > index 4f497723419d..db8fecb075a6 100644
> > --- a/drivers/net/ethernet/intel/iecm/Makefile
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -11,4 +11,7 @@ ccflags-y += -
> I$(srctree)/drivers/net/ethernet/intel/include
> >
> >  iecm-y := \
> >         iecm_lib.o \
> > +       iecm_virtchnl.o \
> > +       iecm_controlq.o \
> > +       iecm_controlq_setup.o \
> >         iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_controlq.c
> b/drivers/net/ethernet/intel/iecm/iecm_controlq.c
> > new file mode 100644
> > index 000000000000..f9682a7b3e44
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_controlq.c
> > @@ -0,0 +1,649 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#include "iecm_controlq.h"
> > +
> > +/**
> > + * iecm_ctlq_setup_regs - initialize control queue registers
> > + * @cq: pointer to the specific control queue
> > + * @q_create_info: structs containing info for each queue to be
> initialized
> > + */
> > +static void
> > +iecm_ctlq_setup_regs(struct iecm_ctlq_info *cq,
> > +                    struct iecm_ctlq_create_info *q_create_info)
> > +{
> > +       /* set head and tail registers in our local struct */
> > +       cq->reg.head = q_create_info->reg.head;
> > +       cq->reg.tail = q_create_info->reg.tail;
> > +       cq->reg.len = q_create_info->reg.len;
> > +       cq->reg.bah = q_create_info->reg.bah;
> > +       cq->reg.bal = q_create_info->reg.bal;
> > +       cq->reg.len_mask = q_create_info->reg.len_mask;
> > +       cq->reg.len_ena_mask = q_create_info->reg.len_ena_mask;
> > +       cq->reg.head_mask = q_create_info->reg.head_mask;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_init_regs - Initialize control queue registers
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + * @is_rxq: true if receive control queue, false otherwise
> > + *
> > + * Initialize registers. The caller is expected to have already initialized the
> > + * descriptor ring memory and buffer memory
> > + */
> > +static void iecm_ctlq_init_regs(struct iecm_hw *hw, struct
> iecm_ctlq_info *cq,
> > +                               bool is_rxq)
> > +{
> > +       /* Update tail to post pre-allocated buffers for rx queues */
> > +       if (is_rxq)
> > +               wr32(hw, cq->reg.tail, (u32)(cq->ring_size - 1));
> > +
> > +       /* For non-Mailbox control queues only TAIL need to be set */
> > +       if (cq->q_id != -1)
> > +               return;
> > +
> > +       /* Clear Head for both send or receive */
> > +       wr32(hw, cq->reg.head, 0);
> > +
> > +       /* set starting point */
> > +       wr32(hw, cq->reg.bal, lower_32_bits(cq->desc_ring.pa));
> > +       wr32(hw, cq->reg.bah, upper_32_bits(cq->desc_ring.pa));
> > +       wr32(hw, cq->reg.len, (cq->ring_size | cq->reg.len_ena_mask));
> > +}
> > +
> > +/**
> > + * iecm_ctlq_init_rxq_bufs - populate receive queue descriptors with buf
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * Record the address of the receive queue DMA buffers in the
> descriptors.
> > + * The buffers must have been previously allocated.
> > + */
> > +static void iecm_ctlq_init_rxq_bufs(struct iecm_ctlq_info *cq)
> > +{
> > +       int i = 0;
> > +
> > +       for (i = 0; i < cq->ring_size; i++) {
> > +               struct iecm_ctlq_desc *desc = IECM_CTLQ_DESC(cq, i);
> > +               struct iecm_dma_mem *bi = cq->bi.rx_buff[i];
> > +
> > +               /* No buffer to post to descriptor, continue */
> > +               if (!bi)
> > +                       continue;
> > +
> > +               desc->flags =
> > +                       cpu_to_le16(IECM_CTLQ_FLAG_BUF |
> IECM_CTLQ_FLAG_RD);
> > +               desc->opcode = 0;
> > +               desc->datalen = (__le16)cpu_to_le16(bi->size);
> 
> Why the typecast to __le16, aren't we there already with the
> cpu_to_le16()?
> 

Yeah this is weird. Will fix.

> > +               desc->ret_val = 0;
> > +               desc->cookie_high = 0;
> > +               desc->cookie_low = 0;
> > +               desc->params.indirect.addr_high =
> > +                       cpu_to_le32(upper_32_bits(bi->pa));
> > +               desc->params.indirect.addr_low =
> > +                       cpu_to_le32(lower_32_bits(bi->pa));
> > +               desc->params.indirect.param0 = 0;
> > +               desc->params.indirect.param1 = 0;
> > +       }
> > +}
> > +
> > +/**
> > + * iecm_ctlq_shutdown - shutdown the CQ
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * The main shutdown routine for any controq queue
> > + */
> > +static void iecm_ctlq_shutdown(struct iecm_hw *hw, struct
> iecm_ctlq_info *cq)
> > +{
> > +       mutex_lock(&cq->cq_lock);
> > +
> > +       if (!cq->ring_size)
> > +               goto shutdown_sq_out;
> > +
> > +       /* free ring buffers and the ring itself */
> > +       iecm_ctlq_dealloc_ring_res(hw, cq);
> > +
> > +       /* Set ring_size to 0 to indicate uninitialized queue */
> > +       cq->ring_size = 0;
> > +
> > +shutdown_sq_out:
> > +       mutex_unlock(&cq->cq_lock);
> > +       mutex_destroy(&cq->cq_lock);
> > +}
> > +
> > +/**
> > + * iecm_ctlq_add - add one control queue
> > + * @hw: pointer to hardware struct
> > + * @qinfo: info for queue to be created
> > + * @cq_out: (output) double pointer to control queue to be created
> > + *
> > + * Allocate and initialize a control queue and add it to the control queue
> list.
> > + * The cq parameter will be allocated/initialized and passed back to the
> caller
> > + * if no errors occur.
> > + *
> > + * Note: iecm_ctlq_init must be called prior to any calls to
> iecm_ctlq_add
> > + */
> > +int iecm_ctlq_add(struct iecm_hw *hw,
> > +                 struct iecm_ctlq_create_info *qinfo,
> > +                 struct iecm_ctlq_info **cq_out)
> > +{
> > +       bool is_rxq = false;
> > +       int status = 0;
> > +
> > +       if (!qinfo->len || !qinfo->buf_size ||
> > +           qinfo->len > IECM_CTLQ_MAX_RING_SIZE ||
> > +           qinfo->buf_size > IECM_CTLQ_MAX_BUF_LEN)
> > +               return -EINVAL;
> > +
> > +       *cq_out = kcalloc(1, sizeof(struct iecm_ctlq_info), GFP_KERNEL);
> > +       if (!(*cq_out))
> > +               return -ENOMEM;
> 
> You might keep this as a local variable until you get to a successful
> end, then set *cq_out when done.
> Else, you need to be sure to clear it back to NULL on error return to
> be sure no one uses a bogus value.
> 

This one I'm not sure I follow.  If it's NULL we fall into the if(!*cq_out) and don't need to set it to NULL (it already is?). If it's not NULL then we go on to use it like a valid memory address so I hope it's valid.

> > +
> > +       (*cq_out)->cq_type = qinfo->type;
> > +       (*cq_out)->q_id = qinfo->id;
> > +       (*cq_out)->buf_size = qinfo->buf_size;
> > +       (*cq_out)->ring_size = qinfo->len;
> > +
> > +       (*cq_out)->next_to_use = 0;
> > +       (*cq_out)->next_to_clean = 0;
> > +       (*cq_out)->next_to_post = (*cq_out)->ring_size - 1;
> > +
> > +       switch (qinfo->type) {
> > +       case IECM_CTLQ_TYPE_MAILBOX_RX:
> > +               is_rxq = true;
> > +               fallthrough;
> > +       case IECM_CTLQ_TYPE_MAILBOX_TX:
> > +               status = iecm_ctlq_alloc_ring_res(hw, *cq_out);
> > +               break;
> > +       default:
> > +               status = -EBADR;
> > +               break;
> > +       }
> > +
> > +       if (status)
> > +               goto init_free_q;
> > +
> > +       if (is_rxq) {
> > +               iecm_ctlq_init_rxq_bufs(*cq_out);
> > +       } else {
> > +               /* Allocate the array of msg pointers for TX queues */
> > +               (*cq_out)->bi.tx_msg = kcalloc(qinfo->len,
> > +                                              sizeof(struct iecm_ctlq_msg *),
> > +                                              GFP_KERNEL);
> > +               if (!(*cq_out)->bi.tx_msg) {
> > +                       status = -ENOMEM;
> > +                       goto init_dealloc_q_mem;
> > +               }
> > +       }
> > +
> > +       iecm_ctlq_setup_regs(*cq_out, qinfo);
> > +
> > +       iecm_ctlq_init_regs(hw, *cq_out, is_rxq);
> > +
> > +       mutex_init(&(*cq_out)->cq_lock);
> > +
> > +       list_add(&(*cq_out)->cq_list, &hw->cq_list_head);
> > +
> > +       return status;
> > +
> > +init_dealloc_q_mem:
> > +       /* free ring buffers and the ring itself */
> > +       iecm_ctlq_dealloc_ring_res(hw, *cq_out);
> > +init_free_q:
> > +       kfree(*cq_out);
> 
> Probably should clear this back to NULL.
> 

Will fix.

> > +
> > +       return status;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_remove - deallocate and remove specified control queue
> > + * @hw: pointer to hardware struct
> > + * @cq: pointer to control queue to be removed
> > + */
> > +void iecm_ctlq_remove(struct iecm_hw *hw,
> > +                     struct iecm_ctlq_info *cq)
> > +{
> > +       list_del(&cq->cq_list);
> > +       iecm_ctlq_shutdown(hw, cq);
> > +       kfree(cq);
> > +}
> > +
> > +/**
> > + * iecm_ctlq_init - main initialization routine for all control queues
> > + * @hw: pointer to hardware struct
> > + * @num_q: number of queues to initialize
> > + * @q_info: array of structs containing info for each queue to be
> initialized
> > + *
> > + * This initializes any number and any type of control queues. This is an
> all
> > + * or nothing routine; if one fails, all previously allocated queues will be
> > + * destroyed. This must be called prior to using the individual
> add/remove
> > + * APIs.
> > + */
> > +int iecm_ctlq_init(struct iecm_hw *hw, u8 num_q,
> > +                  struct iecm_ctlq_create_info *q_info)
> > +{
> > +       struct iecm_ctlq_info *cq = NULL, *tmp = NULL;
> > +       int ret_code = 0;
> > +       int i = 0;
> > +
> > +       INIT_LIST_HEAD(&hw->cq_list_head);
> > +
> > +       for (i = 0; i < num_q; i++) {
> > +               struct iecm_ctlq_create_info *qinfo = q_info + i;
> > +
> > +               ret_code = iecm_ctlq_add(hw, qinfo, &cq);
> > +               if (ret_code)
> > +                       goto init_destroy_qs;
> > +       }
> > +
> > +       return ret_code;
> > +
> > +init_destroy_qs:
> > +       list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
> > +               iecm_ctlq_remove(hw, cq);
> 
> This could call iecm_ctlq_deinit() rather than repeat the same code.
> 

Seems fair, will fix.

> > +
> > +       return ret_code;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_deinit - destroy all control queues
> > + * @hw: pointer to hw struct
> > + */
> > +int iecm_ctlq_deinit(struct iecm_hw *hw)
> > +{
> > +       struct iecm_ctlq_info *cq = NULL, *tmp = NULL;
> > +       int ret_code = 0;
> > +
> > +       list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list)
> > +               iecm_ctlq_remove(hw, cq);
> > +
> > +       return ret_code;
> 
> Why is there a return code here when there is never an error?
> 

Yeah this is weird, will fix.

> > +}
> > +
> > +/**
> > + * iecm_ctlq_send - send command to Control Queue (CTQ)
> > + * @hw: pointer to hw struct
> > + * @cq: handle to control queue struct to send on
> > + * @num_q_msg: number of messages to send on control queue
> > + * @q_msg: pointer to array of queue messages to be sent
> > + *
> > + * The caller is expected to allocate DMAable buffers and pass them to
> the
> > + * send routine via the q_msg struct / control queue specific data struct.
> > + * The control queue will hold a reference to each send message until
> > + * the completion for that message has been cleaned.
> > + */
> > +int iecm_ctlq_send(struct iecm_hw *hw, struct iecm_ctlq_info *cq,
> > +                  u16 num_q_msg, struct iecm_ctlq_msg q_msg[])
> > +{
> > +       struct iecm_ctlq_desc *desc;
> > +       int num_desc_avail = 0;
> > +       int status = 0;
> > +       int i = 0;
> > +
> > +       if (!cq || !cq->ring_size)
> > +               return -ENOBUFS;
> > +
> > +       mutex_lock(&cq->cq_lock);
> > +
> > +       /* Ensure there are enough descriptors to send all messages */
> > +       num_desc_avail = IECM_CTLQ_DESC_UNUSED(cq);
> > +       if (num_desc_avail == 0 || num_desc_avail < num_q_msg) {
> > +               status = -ENOSPC;
> > +               goto sq_send_command_out;
> > +       }
> > +
> > +       for (i = 0; i < num_q_msg; i++) {
> > +               struct iecm_ctlq_msg *msg = &q_msg[i];
> > +               u64 msg_cookie;
> > +
> > +               desc = IECM_CTLQ_DESC(cq, cq->next_to_use);
> > +
> > +               desc->opcode = cpu_to_le16(msg->opcode);
> > +               desc->pfid_vfid = cpu_to_le16(msg->func_id);
> > +
> > +               msg_cookie = *(u64 *)&msg->cookie;
> > +               desc->cookie_high =
> > +                       cpu_to_le32(upper_32_bits(msg_cookie));
> > +               desc->cookie_low =
> > +                       cpu_to_le32(lower_32_bits(msg_cookie));
> > +
> > +               if (msg->data_len) {
> > +                       struct iecm_dma_mem *buff = msg->ctx.indirect.payload;
> > +
> > +                       desc->datalen = cpu_to_le16(msg->data_len);
> > +                       desc->flags |= cpu_to_le16(IECM_CTLQ_FLAG_BUF);
> > +                       desc->flags |= cpu_to_le16(IECM_CTLQ_FLAG_RD);
> > +
> > +                       /* Update the address values in the desc with the pa
> > +                        * value for respective buffer
> > +                        */
> > +                       desc->params.indirect.addr_high =
> > +                               cpu_to_le32(upper_32_bits(buff->pa));
> > +                       desc->params.indirect.addr_low =
> > +                               cpu_to_le32(lower_32_bits(buff->pa));
> > +
> > +                       memcpy(&desc->params, msg->ctx.indirect.context,
> > +                              IECM_INDIRECT_CTX_SIZE);
> > +               } else {
> > +                       memcpy(&desc->params, msg->ctx.direct,
> > +                              IECM_DIRECT_CTX_SIZE);
> > +               }
> > +
> > +               /* Store buffer info */
> > +               cq->bi.tx_msg[cq->next_to_use] = msg;
> > +
> > +               (cq->next_to_use)++;
> > +               if (cq->next_to_use == cq->ring_size)
> > +                       cq->next_to_use = 0;
> > +       }
> > +
> > +       /* Force memory write to complete before letting hardware
> > +        * know that there are new descriptors to fetch.
> > +        */
> > +       dma_wmb();
> > +
> > +       wr32(hw, cq->reg.tail, cq->next_to_use);
> > +
> > +sq_send_command_out:
> > +       mutex_unlock(&cq->cq_lock);
> > +
> > +       return status;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_clean_sq - reclaim send descriptors on HW write back for
> the
> > + * requested queue
> > + * @cq: pointer to the specific Control queue
> > + * @clean_count: (input|output) number of descriptors to clean as
> input, and
> > + * number of descriptors actually cleaned as output
> 
> Rather than two meanings for one parameter, can the number cleaned be
> a positive return value?
> 

That seems fair. Will check.

> > + * @msg_status: (output) pointer to msg pointer array to be populated;
> needs
> > + * to be allocated by caller
> > + *
> > + * Returns an array of message pointers associated with the cleaned
> > + * descriptors. The pointers are to the original ctlq_msgs sent on the
> cleaned
> > + * descriptors.  The status will be returned for each; any messages that
> failed
> > + * to send will have a non-zero status. The caller is expected to free
> original
> > + * ctlq_msgs and free or reuse the DMA buffers.
> > + */
> > +int iecm_ctlq_clean_sq(struct iecm_ctlq_info *cq, u16 *clean_count,
> > +                      struct iecm_ctlq_msg *msg_status[])
> > +{
> > +       struct iecm_ctlq_desc *desc;
> > +       u16 i = 0, num_to_clean;
> > +       u16 ntc, desc_err;
> > +       int ret = 0;
> > +
> > +       if (!cq || !cq->ring_size)
> > +               return -ENOBUFS;
> > +
> > +       if (*clean_count == 0)
> > +               return 0;
> > +       if (*clean_count > cq->ring_size)
> > +               return -EBADR;
> > +
> > +       mutex_lock(&cq->cq_lock);
> > +
> > +       ntc = cq->next_to_clean;
> > +
> > +       num_to_clean = *clean_count;
> > +
> > +       for (i = 0; i < num_to_clean; i++) {
> > +               /* Fetch next descriptor and check if marked as done */
> > +               desc = IECM_CTLQ_DESC(cq, ntc);
> > +               if (!(le16_to_cpu(desc->flags) & IECM_CTLQ_FLAG_DD))
> > +                       break;
> > +
> > +               desc_err = le16_to_cpu(desc->ret_val);
> > +               if (desc_err) {
> > +                       /* strip off FW internal code */
> > +                       desc_err &= 0xff;
> > +               }
> 
> Why not simply
>     desc_err = le16_to_cpu(desc->ret_val) & 0xff;
> 

Will fix.

> > +
> > +               msg_status[i] = cq->bi.tx_msg[ntc];
> > +               msg_status[i]->status = desc_err;
> > +
> > +               cq->bi.tx_msg[ntc] = NULL;
> > +
> > +               /* Zero out any stale data */
> > +               memset(desc, 0, sizeof(*desc));
> > +
> > +               ntc++;
> > +               if (ntc == cq->ring_size)
> > +                       ntc = 0;
> > +       }
> > +
> > +       cq->next_to_clean = ntc;
> > +
> > +       mutex_unlock(&cq->cq_lock);
> > +
> > +       /* Return number of descriptors actually cleaned */
> > +       *clean_count = i;
> > +
> > +       return ret;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_post_rx_buffs - post buffers to descriptor ring
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to control queue handle
> > + * @buff_count: (input|output) input is number of buffers caller is
> trying to
> > + * return; output is number of buffers that were not posted
> 
> Same comment.
> And the return would make more sense if consistent with the previous
> function where the return is how many were successful.
> 

Yeah this seems more sane, need a little time to see what the refactor looks like.

> > + * @buffs: array of pointers to dma mem structs to be given to
> hardware
> > + *
> > + * Caller uses this function to return DMA buffers to the descriptor ring
> after
> > + * consuming them; buff_count will be the number of buffers.
> > + *
> > + * Note: this function needs to be called after a receive call even
> > + * if there are no DMA buffers to be returned, i.e. buff_count = 0,
> > + * buffs = NULL to support direct commands
> > + */
> > +int iecm_ctlq_post_rx_buffs(struct iecm_hw *hw, struct iecm_ctlq_info
> *cq,
> > +                           u16 *buff_count, struct iecm_dma_mem **buffs)
> > +{
> > +       struct iecm_ctlq_desc *desc;
> > +       u16 ntp = cq->next_to_post;
> > +       bool buffs_avail = false;
> > +       u16 tbp = ntp + 1;
> > +       int status = 0;
> > +       int i = 0;
> > +
> > +       if (*buff_count > cq->ring_size)
> > +               return -EBADR;
> > +
> > +       if (*buff_count > 0)
> > +               buffs_avail = true;
> > +
> > +       mutex_lock(&cq->cq_lock);
> > +
> > +       if (tbp >= cq->ring_size)
> > +               tbp = 0;
> > +
> > +       if (tbp == cq->next_to_clean)
> > +               /* Nothing to do */
> > +               goto post_buffs_out;
> > +
> > +       /* Post buffers for as many as provided or up until the last one used
> */
> > +       while (ntp != cq->next_to_clean) {
> > +               desc = IECM_CTLQ_DESC(cq, ntp);
> > +
> > +               if (cq->bi.rx_buff[ntp])
> > +                       goto fill_desc;
> > +               if (!buffs_avail) {
> > +                       /* If the caller hasn't given us any buffers or
> > +                        * there are none left, search the ring itself
> > +                        * for an available buffer to move to this
> > +                        * entry starting at the next entry in the ring
> > +                        */
> > +                       tbp = ntp + 1;
> > +
> > +                       /* Wrap ring if necessary */
> > +                       if (tbp >= cq->ring_size)
> > +                               tbp = 0;
> > +
> > +                       while (tbp != cq->next_to_clean) {
> > +                               if (cq->bi.rx_buff[tbp]) {
> > +                                       cq->bi.rx_buff[ntp] =
> > +                                               cq->bi.rx_buff[tbp];
> > +                                       cq->bi.rx_buff[tbp] = NULL;
> > +
> > +                                       /* Found a buffer, no need to
> > +                                        * search anymore
> > +                                        */
> > +                                       break;
> > +                               }
> > +
> > +                               /* Wrap ring if necessary */
> > +                               tbp++;
> > +                               if (tbp >= cq->ring_size)
> > +                                       tbp = 0;
> > +                       }
> > +
> > +                       if (tbp == cq->next_to_clean)
> > +                               goto post_buffs_out;
> > +               } else {
> > +                       /* Give back pointer to DMA buffer */
> > +                       cq->bi.rx_buff[ntp] = buffs[i];
> > +                       i++;
> > +
> > +                       if (i >= *buff_count)
> > +                               buffs_avail = false;
> > +               }
> > +
> > +fill_desc:
> > +               desc->flags =
> > +                       cpu_to_le16(IECM_CTLQ_FLAG_BUF |
> IECM_CTLQ_FLAG_RD);
> > +
> > +               /* Post buffers to descriptor */
> > +               desc->datalen = cpu_to_le16(cq->bi.rx_buff[ntp]->size);
> > +               desc->params.indirect.addr_high =
> > +                       cpu_to_le32(upper_32_bits(cq->bi.rx_buff[ntp]->pa));
> > +               desc->params.indirect.addr_low =
> > +                       cpu_to_le32(lower_32_bits(cq->bi.rx_buff[ntp]->pa));
> > +
> > +               ntp++;
> > +               if (ntp == cq->ring_size)
> > +                       ntp = 0;
> > +       }
> > +
> > +post_buffs_out:
> > +       /* Only update tail if buffers were actually posted */
> > +       if (cq->next_to_post != ntp) {
> > +               if (ntp)
> > +                       /* Update next_to_post to ntp - 1 since current ntp
> > +                        * will not have a buffer
> > +                        */
> > +                       cq->next_to_post = ntp - 1;
> > +               else
> > +                       /* Wrap to end of end ring since current ntp is 0 */
> > +                       cq->next_to_post = cq->ring_size - 1;
> > +
> > +               wr32(hw, cq->reg.tail, cq->next_to_post);
> > +       }
> > +
> > +       mutex_unlock(&cq->cq_lock);
> > +
> > +       /* return the number of buffers that were not posted */
> > +       *buff_count = *buff_count - i;
> > +
> > +       return status;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_recv - receive control queue message call back
> > + * @cq: pointer to control queue handle to receive on
> > + * @num_q_msg: (input|output) input number of messages that should
> be received;
> > + * output number of messages actually received
> > + * @q_msg: (output) array of received control queue messages on this
> q;
> > + * needs to be pre-allocated by caller for as many messages as requested
> > + *
> > + * Called by interrupt handler or polling mechanism. Caller is expected
> > + * to free buffers
> > + */
> > +int iecm_ctlq_recv(struct iecm_ctlq_info *cq, u16 *num_q_msg,
> > +                  struct iecm_ctlq_msg *q_msg)
> > +{
> > +       u16 num_to_clean, ntc, ret_val, flags;
> > +       struct iecm_ctlq_desc *desc;
> > +       int ret_code = 0;
> > +       u16 i = 0;
> > +
> > +       if (!cq || !cq->ring_size)
> > +               return -ENOBUFS;
> 
> Should *num_q_msgs get set to 0 here since none were received?
> 

Based on the function description it does indeed sound like we should be.

> > +
> > +       if (*num_q_msg == 0)
> > +               return 0;
> > +       else if (*num_q_msg > cq->ring_size)
> > +               return -EBADR;
> 
> Again, set *num_q_msgs to 0?
> 
> > +
> > +       /* take the lock before we start messing with the ring */
> > +       mutex_lock(&cq->cq_lock);
> > +
> > +       ntc = cq->next_to_clean;
> > +
> > +       num_to_clean = *num_q_msg;
> > +
> > +       for (i = 0; i < num_to_clean; i++) {
> > +               u64 msg_cookie;
> > +
> > +               /* Fetch next descriptor and check if marked as done */
> > +               desc = IECM_CTLQ_DESC(cq, ntc);
> > +               flags = le16_to_cpu(desc->flags);
> > +
> > +               if (!(flags & IECM_CTLQ_FLAG_DD))
> > +                       break;
> > +
> > +               ret_val = le16_to_cpu(desc->ret_val);
> > +
> > +               q_msg[i].vmvf_type = (flags &
> > +                                     (IECM_CTLQ_FLAG_FTYPE_VM |
> > +                                      IECM_CTLQ_FLAG_FTYPE_PF)) >>
> > +                                     IECM_CTLQ_FLAG_FTYPE_S;
> > +
> > +               if (flags & IECM_CTLQ_FLAG_ERR)
> > +                       ret_code = -EBADMSG;
> 
> So you might return -EBADMSG, even if you've cleaned many messages?
> Will this be reflected in ret_val and does the caller then need to
> hunt down the bad q_msg[].status?
> How these work together should probably be clearly explained in the
> function header.
> 

I'll need some time to look at this, but it does seem suspect.

> > +
> > +               msg_cookie = (u64)le32_to_cpu(desc->cookie_high) << 32;
> > +               msg_cookie |= (u64)le32_to_cpu(desc->cookie_low);
> > +               memcpy(&q_msg[i].cookie, &msg_cookie, sizeof(u64));
> > +
> > +               q_msg[i].opcode = le16_to_cpu(desc->opcode);
> > +               q_msg[i].data_len = le16_to_cpu(desc->datalen);
> > +               q_msg[i].status = ret_val;
> > +
> > +               if (desc->datalen) {
> > +                       memcpy(q_msg[i].ctx.indirect.context,
> > +                              &desc->params.indirect, IECM_INDIRECT_CTX_SIZE);
> > +
> > +                       /* Assign pointer to dma buffer to ctlq_msg array
> > +                        * to be given to upper layer
> > +                        */
> > +                       q_msg[i].ctx.indirect.payload = cq->bi.rx_buff[ntc];
> > +
> > +                       /* Zero out pointer to DMA buffer info;
> > +                        * will be repopulated by post buffers API
> > +                        */
> > +                       cq->bi.rx_buff[ntc] = NULL;
> > +               } else {
> > +                       memcpy(q_msg[i].ctx.direct, desc->params.raw,
> > +                              IECM_DIRECT_CTX_SIZE);
> > +               }
> > +
> > +               /* Zero out stale data in descriptor */
> > +               memset(desc, 0, sizeof(struct iecm_ctlq_desc));
> > +
> > +               ntc++;
> > +               if (ntc == cq->ring_size)
> > +                       ntc = 0;
> > +       };
> > +
> > +       cq->next_to_clean = ntc;
> > +
> > +       mutex_unlock(&cq->cq_lock);
> > +
> > +       *num_q_msg = i;
> > +       if (*num_q_msg == 0)
> > +               ret_code = -ENOMSG;
> > +
> > +       return ret_code;
> > +}
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
> b/drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
> > new file mode 100644
> > index 000000000000..a36fc88d6bb5
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_controlq_setup.c
> > @@ -0,0 +1,175 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#include "iecm_controlq.h"
> > +
> > +/**
> > + * iecm_ctlq_alloc_desc_ring - Allocate Control Queue (CQ) rings
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + */
> > +static int
> > +iecm_ctlq_alloc_desc_ring(struct iecm_hw *hw,
> > +                         struct iecm_ctlq_info *cq)
> > +{
> > +       size_t size = cq->ring_size * sizeof(struct iecm_ctlq_desc);
> > +
> > +       cq->desc_ring.va = iecm_alloc_dma_mem(hw, &cq->desc_ring,
> size);
> > +       if (!cq->desc_ring.va)
> > +               return -ENOMEM;
> > +
> > +       return 0;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_alloc_bufs - Allocate Control Queue (CQ) buffers
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * Allocate the buffer head for all control queues, and if it's a receive
> > + * queue, allocate DMA buffers
> > + */
> > +static int iecm_ctlq_alloc_bufs(struct iecm_hw *hw,
> > +                               struct iecm_ctlq_info *cq)
> > +{
> > +       int i = 0;
> > +
> > +       /* Do not allocate DMA buffers for transmit queues */
> > +       if (cq->cq_type == IECM_CTLQ_TYPE_MAILBOX_TX)
> > +               return 0;
> > +
> > +       /* We'll be allocating the buffer info memory first, then we can
> > +        * allocate the mapped buffers for the event processing
> > +        */
> > +       cq->bi.rx_buff = kcalloc(cq->ring_size, sizeof(struct iecm_dma_mem
> *),
> > +                                GFP_KERNEL);
> > +       if (!cq->bi.rx_buff)
> > +               return -ENOMEM;
> > +
> > +       /* allocate the mapped buffers (except for the last one) */
> > +       for (i = 0; i < cq->ring_size - 1; i++) {
> > +               struct iecm_dma_mem *bi;
> > +               int num = 1; /* number of iecm_dma_mem to be allocated */
> > +
> > +               cq->bi.rx_buff[i] = kcalloc(num, sizeof(struct iecm_dma_mem),
> > +                                           GFP_KERNEL);
> > +               if (!cq->bi.rx_buff[i])
> > +                       goto unwind_alloc_cq_bufs;
> > +
> > +               bi = cq->bi.rx_buff[i];
> > +
> > +               bi->va = iecm_alloc_dma_mem(hw, bi, cq->buf_size);
> > +               if (!bi->va) {
> > +                       /* unwind will not free the failed entry */
> > +                       kfree(cq->bi.rx_buff[i]);
> > +                       goto unwind_alloc_cq_bufs;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +
> > +unwind_alloc_cq_bufs:
> > +       /* don't try to free the one that failed... */
> > +       i--;
> > +       for (; i >= 0; i--) {
> > +               iecm_free_dma_mem(hw, cq->bi.rx_buff[i]);
> > +               kfree(cq->bi.rx_buff[i]);
> > +       }
> > +       kfree(cq->bi.rx_buff);
> > +
> > +       return -ENOMEM;
> > +}
> > +
> > +/**
> > + * iecm_ctlq_free_desc_ring - Free Control Queue (CQ) rings
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * This assumes the posted send buffers have already been cleaned
> > + * and de-allocated
> > + */
> > +static void iecm_ctlq_free_desc_ring(struct iecm_hw *hw,
> > +                                    struct iecm_ctlq_info *cq)
> > +{
> > +       iecm_free_dma_mem(hw, &cq->desc_ring);
> > +}
> > +
> > +/**
> > + * iecm_ctlq_free_bufs - Free CQ buffer info elements
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * Free the DMA buffers for RX queues, and DMA buffer header for both
> RX and TX
> > + * queues.  The upper layers are expected to manage freeing of TX DMA
> buffers
> > + */
> > +static void iecm_ctlq_free_bufs(struct iecm_hw *hw, struct
> iecm_ctlq_info *cq)
> > +{
> > +       void *bi;
> > +
> > +       if (cq->cq_type == IECM_CTLQ_TYPE_MAILBOX_RX) {
> > +               int i;
> > +
> > +               /* free DMA buffers for rx queues*/
> > +               for (i = 0; i < cq->ring_size; i++) {
> > +                       if (cq->bi.rx_buff[i]) {
> > +                               iecm_free_dma_mem(hw, cq->bi.rx_buff[i]);
> > +                               kfree(cq->bi.rx_buff[i]);
> > +                       }
> > +               }
> > +
> > +               bi = (void *)cq->bi.rx_buff;
> > +       } else {
> > +               bi = (void *)cq->bi.tx_msg;
> > +       }
> > +
> > +       /* free the buffer header */
> > +       kfree(bi);
> > +}
> > +
> > +/**
> > + * iecm_ctlq_dealloc_ring_res - Free memory allocated for control queue
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to the specific Control queue
> > + *
> > + * Free the memory used by the ring, buffers and other related
> structures
> > + */
> > +void iecm_ctlq_dealloc_ring_res(struct iecm_hw *hw, struct
> iecm_ctlq_info *cq)
> > +{
> > +       /* free ring buffers and the ring itself */
> > +       iecm_ctlq_free_bufs(hw, cq);
> > +       iecm_ctlq_free_desc_ring(hw, cq);
> > +}
> > +
> > +/**
> > + * iecm_ctlq_alloc_ring_res - allocate memory for descriptor ring and
> bufs
> > + * @hw: pointer to hw struct
> > + * @cq: pointer to control queue struct
> > + *
> > + * Do *NOT* hold the lock when calling this as the memory allocation
> routines
> > + * called are not going to be atomic context safe
> > + */
> > +int iecm_ctlq_alloc_ring_res(struct iecm_hw *hw, struct iecm_ctlq_info
> *cq)
> > +{
> > +       int ret_code;
> > +
> > +       /* verify input for valid configuration */
> > +       if (!cq->ring_size || !cq->buf_size)
> > +               return -EINVAL;
> > +
> > +       /* allocate the ring memory */
> > +       ret_code = iecm_ctlq_alloc_desc_ring(hw, cq);
> > +       if (ret_code)
> > +               return ret_code;
> > +
> > +       /* allocate buffers in the rings */
> > +       ret_code = iecm_ctlq_alloc_bufs(hw, cq);
> > +       if (ret_code)
> > +               goto iecm_init_cq_free_ring;
> > +
> > +       /* success! */
> > +       return 0;
> > +
> > +iecm_init_cq_free_ring:
> > +       iecm_free_dma_mem(hw, &cq->desc_ring);
> > +       return ret_code;
> > +}
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > index e6d0b418a27f..64cdbce2c842 100644
> > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -5,6 +5,25 @@
> >
> >  #include "iecm.h"
> >
> > +/**
> > + * iecm_cfg_hw - Initialize HW struct
> > + * @adapter: adapter to setup hw struct for
> > + *
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int iecm_cfg_hw(struct iecm_adapter *adapter)
> > +{
> > +       struct pci_dev *pdev = adapter->pdev;
> > +       struct iecm_hw *hw = &adapter->hw;
> > +
> > +       hw->hw_addr = pcim_iomap_table(pdev)[IECM_BAR0];
> > +       if (!hw->hw_addr)
> > +               return -EIO;
> > +       hw->back = adapter;
> > +
> > +       return 0;
> > +}
> > +
> >  /**
> >   * iecm_statistics_task - Delayed task to get statistics over mailbox
> >   * @work: work_struct handle to our data
> > @@ -39,6 +58,32 @@ static void iecm_init_task(struct work_struct
> *work)
> >         /* stub */
> >  }
> >
> > +/**
> > + * iecm_api_init - Initialize and verify device API
> > + * @adapter: driver specific private structure
> > + *
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int iecm_api_init(struct iecm_adapter *adapter)
> > +{
> > +       struct iecm_reg_ops *reg_ops = &adapter->dev_ops.reg_ops;
> > +       struct pci_dev *pdev = adapter->pdev;
> > +
> > +       if (!adapter->dev_ops.reg_ops_init) {
> > +               dev_err(&pdev->dev, "Invalid device, register API init not
> defined\n");
> > +               return -EINVAL;
> > +       }
> > +       adapter->dev_ops.reg_ops_init(adapter);
> > +       if (!(reg_ops->ctlq_reg_init && reg_ops->intr_reg_init &&
> > +             reg_ops->mb_intr_reg_init && reg_ops->reset_reg_init &&
> > +             reg_ops->trigger_reset)) {
> > +               dev_err(&pdev->dev, "Invalid device, missing one or more
> register functions\n");
> > +               return -EINVAL;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> >  /**
> >   * iecm_deinit_task - Device deinit routine
> >   * @adapter: Driver specific private structue
> > @@ -51,13 +96,108 @@ static void iecm_deinit_task(struct
> iecm_adapter *adapter)
> >         /* stub */
> >  }
> >
> > +/**
> > + * iecm_check_reset_complete - check that reset is complete
> > + * @hw: pointer to hw struct
> > + * @reset_reg: struct with reset registers
> > + *
> > + * Returns 0 if device is ready to use, or -EBUSY if it's in reset.
> > + **/
> > +static int iecm_check_reset_complete(struct iecm_hw *hw,
> > +                                    struct iecm_reset_reg *reset_reg)
> > +{
> > +       struct iecm_adapter *adapter = (struct iecm_adapter *)hw->back;
> > +       int i;
> > +
> > +       for (i = 0; i < 2000; i++) {
> > +               u32 reg_val = rd32(hw, reset_reg->rstat);
> > +
> > +               /* 0xFFFFFFFF might be read if other side hasn't cleared the
> > +                * register for us yet and 0xFFFFFFFF is not a valid value for
> > +                * the register, so treat that as invalid.
> > +                */
> > +               if (reg_val != 0xFFFFFFFF && (reg_val & reset_reg->rstat_m))
> > +                       return 0;
> > +               usleep_range(5000, 10000);
> > +       }
> > +
> > +       dev_warn(&adapter->pdev->dev, "Device reset timeout!\n");
> > +       return -EBUSY;
> > +}
> > +
> > +/**
> > + * iecm_init_hard_reset - Initiate a hardware reset
> > + * @adapter: Driver specific private structure
> > + *
> > + * Deallocate the vports and all the resources associated with them and
> > + * reallocate. Also reinitialize the mailbox. Return 0 on success,
> > + * negative on failure.
> > + */
> > +static int iecm_init_hard_reset(struct iecm_adapter *adapter)
> > +{
> > +       int err = 0;
> > +
> > +       mutex_lock(&adapter->reset_lock);
> > +
> > +       /* Prepare for reset */
> > +       if (test_and_clear_bit(__IECM_HR_DRV_LOAD, adapter->flags)) {
> > +               adapter->dev_ops.reg_ops.trigger_reset(adapter,
> > +                                                      __IECM_HR_DRV_LOAD);
> > +       } else if (test_and_clear_bit(__IECM_HR_FUNC_RESET, adapter-
> >flags)) {
> > +               bool is_reset = iecm_is_reset_detected(adapter);
> > +
> > +               if (adapter->state == __IECM_UP)
> > +                       set_bit(__IECM_UP_REQUESTED, adapter->flags);
> > +               iecm_deinit_task(adapter);
> > +               if (!is_reset)
> > +                       adapter->dev_ops.reg_ops.trigger_reset(adapter,
> > +                                                              __IECM_HR_FUNC_RESET);
> > +               iecm_deinit_dflt_mbx(adapter);
> > +       } else if (test_and_clear_bit(__IECM_HR_CORE_RESET, adapter-
> >flags)) {
> > +               if (adapter->state == __IECM_UP)
> > +                       set_bit(__IECM_UP_REQUESTED, adapter->flags);
> > +               iecm_deinit_task(adapter);
> > +       } else {
> > +               dev_err(&adapter->pdev->dev, "Unhandled hard reset
> cause\n");
> > +               err = -EBADRQC;
> > +               goto handle_err;
> > +       }
> > +
> > +       /* Wait for reset to complete */
> > +       err = iecm_check_reset_complete(&adapter->hw, &adapter-
> >reset_reg);
> > +       if (err) {
> > +               dev_err(&adapter->pdev->dev, "The driver was unable to
> contact the device's firmware.  Check that the FW is running. Driver
> state=%u\n",
> > +                       adapter->state);
> > +               goto handle_err;
> > +       }
> > +
> > +       /* Reset is complete and so start building the driver resources again
> */
> > +       err = iecm_init_dflt_mbx(adapter);
> > +       if (err) {
> > +               dev_err(&adapter->pdev->dev, "Failed to initialize default
> mailbox: %d\n",
> > +                       err);
> > +       }
> > +handle_err:
> > +       mutex_unlock(&adapter->reset_lock);
> > +       return err;
> > +}
> > +
> >  /**
> >   * iecm_vc_event_task - Handle virtchannel event logic
> >   * @work: work queue struct
> >   */
> >  static void iecm_vc_event_task(struct work_struct *work)
> >  {
> > -       /* stub */
> > +       struct iecm_adapter *adapter = container_of(work,
> > +                                                   struct iecm_adapter,
> > +                                                   vc_event_task.work);
> > +
> > +       if (test_bit(__IECM_HR_CORE_RESET, adapter->flags) ||
> > +           test_bit(__IECM_HR_FUNC_RESET, adapter->flags) ||
> > +           test_bit(__IECM_HR_DRV_LOAD, adapter->flags)) {
> > +               set_bit(__IECM_HR_RESET_IN_PROG, adapter->flags);
> > +               iecm_init_hard_reset(adapter);
> > +       }
> >  }
> >
> >  /**
> > @@ -75,6 +215,11 @@ int iecm_probe(struct pci_dev *pdev,
> >         int err;
> >
> >         adapter->pdev = pdev;
> > +       err = iecm_api_init(adapter);
> > +       if (err) {
> > +               dev_err(&pdev->dev, "Device API is incorrectly configured\n");
> > +               return err;
> > +       }
> >
> >         err = pcim_enable_device(pdev);
> >         if (err)
> > @@ -147,6 +292,20 @@ int iecm_probe(struct pci_dev *pdev,
> >                 goto err_netdev_alloc;
> >         }
> >
> > +       err = iecm_vport_params_buf_alloc(adapter);
> > +       if (err) {
> > +               dev_err(&pdev->dev, "Failed to alloc vport params buffer:
> %d\n",
> > +                       err);
> > +               goto err_mb_res;
> > +       }
> > +
> > +       err = iecm_cfg_hw(adapter);
> > +       if (err) {
> > +               dev_err(&pdev->dev, "Failed to configure HW structure for
> adapter: %d\n",
> > +                       err);
> > +               goto err_cfg_hw;
> > +       }
> > +
> >         mutex_init(&adapter->sw_mutex);
> >         mutex_init(&adapter->reset_lock);
> >         init_waitqueue_head(&adapter->vchnl_wq);
> > @@ -166,11 +325,16 @@ int iecm_probe(struct pci_dev *pdev,
> >         INIT_DELAYED_WORK(&adapter->init_task, iecm_init_task);
> >         INIT_DELAYED_WORK(&adapter->vc_event_task,
> iecm_vc_event_task);
> >
> > +       adapter->dev_ops.reg_ops.reset_reg_init(&adapter->reset_reg);
> >         set_bit(__IECM_HR_DRV_LOAD, adapter->flags);
> >         queue_delayed_work(adapter->vc_event_wq, &adapter-
> >vc_event_task,
> >                            msecs_to_jiffies(10 * (pdev->devfn & 0x07)));
> >
> >         return 0;
> > +err_cfg_hw:
> > +       iecm_vport_params_buf_rel(adapter);
> > +err_mb_res:
> > +       kfree(adapter->netdevs);
> >  err_netdev_alloc:
> >         kfree(adapter->vports);
> >  err_vport_alloc:
> > @@ -214,6 +378,7 @@ void iecm_remove(struct pci_dev *pdev)
> >         cancel_delayed_work_sync(&adapter->vc_event_task);
> >         iecm_deinit_task(adapter);
> >         iecm_del_user_cfg_data(adapter);
> > +       iecm_deinit_dflt_mbx(adapter);
> >         msleep(20);
> >         destroy_workqueue(adapter->serv_wq);
> >         destroy_workqueue(adapter->vc_event_wq);
> > @@ -222,6 +387,7 @@ void iecm_remove(struct pci_dev *pdev)
> >         kfree(adapter->vports);
> >         kfree(adapter->netdevs);
> >         kfree(adapter->vlan_caps);
> > +       iecm_vport_params_buf_rel(adapter);
> >         mutex_destroy(&adapter->sw_mutex);
> >         mutex_destroy(&adapter->reset_lock);
> >         pci_disable_pcie_error_reporting(pdev);
> > @@ -229,3 +395,26 @@ void iecm_remove(struct pci_dev *pdev)
> >         pci_disable_device(pdev);
> >  }
> >  EXPORT_SYMBOL(iecm_remove);
> > +
> > +void *iecm_alloc_dma_mem(struct iecm_hw *hw, struct
> iecm_dma_mem *mem, u64 size)
> > +{
> > +       struct iecm_adapter *adapter = (struct iecm_adapter *)hw->back;
> > +       size_t sz = ALIGN(size, 4096);
> > +
> > +       mem->va = dma_alloc_coherent(&adapter->pdev->dev, sz,
> > +                                    &mem->pa, GFP_KERNEL | __GFP_ZERO);
> > +       mem->size = size;
> > +
> > +       return mem->va;
> > +}
> > +
> > +void iecm_free_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem
> *mem)
> > +{
> > +       struct iecm_adapter *adapter = (struct iecm_adapter *)hw->back;
> > +
> > +       dma_free_coherent(&adapter->pdev->dev, mem->size,
> > +                         mem->va, mem->pa);
> > +       mem->size = 0;
> > +       mem->va = NULL;
> > +       mem->pa = 0;
> > +}
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > new file mode 100644
> > index 000000000000..b8f54b8c700a
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_virtchnl.c
> > @@ -0,0 +1,172 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#include "iecm.h"
> > +
> > +/**
> > + * iecm_mb_clean - Reclaim the send mailbox queue entries
> > + * @adapter: Driver specific private structure
> > + *
> > + * Reclaim the send mailbox queue entries to be used to send further
> messages
> > + *
> > + * Returns 0 on success, negative on failure
> > + */
> > +static int iecm_mb_clean(struct iecm_adapter *adapter)
> > +{
> > +       u16 i, num_q_msg = IECM_DFLT_MBX_Q_LEN;
> > +       struct iecm_ctlq_msg **q_msg;
> > +       struct iecm_dma_mem *dma_mem;
> > +       int err = 0;
> > +
> > +       q_msg = kcalloc(num_q_msg, sizeof(struct iecm_ctlq_msg *),
> GFP_KERNEL);
> > +       if (!q_msg)
> > +               return -ENOMEM;
> > +
> > +       err = iecm_ctlq_clean_sq(adapter->hw.asq, &num_q_msg, q_msg);
> > +       if (err)
> > +               goto error;
> > +
> > +       for (i = 0; i < num_q_msg; i++) {
> > +               dma_mem = q_msg[i]->ctx.indirect.payload;
> > +               if (dma_mem)
> > +                       dmam_free_coherent(&adapter->pdev->dev, dma_mem-
> >size,
> > +                                          dma_mem->va, dma_mem->pa);
> > +               kfree(q_msg[i]);
> > +               kfree(dma_mem);
> > +       }
> > +error:
> > +       kfree(q_msg);
> > +       return err;
> > +}
> > +
> > +/**
> > + * iecm_find_ctlq - Given a type and id, find ctlq info
> > + * @hw: hardware struct
> > + * @type: type of ctrlq to find
> > + * @id: ctlq id to find
> > + *
> > + * Returns pointer to found ctlq info struct, NULL otherwise.
> > + */
> > +static struct iecm_ctlq_info *iecm_find_ctlq(struct iecm_hw *hw,
> > +                                            enum iecm_ctlq_type type, int id)
> > +{
> > +       struct iecm_ctlq_info *cq, *tmp;
> > +
> > +       list_for_each_entry_safe(cq, tmp, &hw->cq_list_head, cq_list) {
> > +               if (cq->q_id == id && cq->cq_type == type)
> > +                       return cq;
> > +       }
> > +
> > +       return NULL;
> > +}
> > +
> > +/**
> > + * iecm_init_dflt_mbx - Setup default mailbox parameters and make
> request
> > + * @adapter: adapter info struct
> > + *
> > + * Returns 0 on success, negative otherwise
> > + */
> > +int iecm_init_dflt_mbx(struct iecm_adapter *adapter)
> > +{
> > +       struct iecm_ctlq_create_info ctlq_info[] = {
> > +               {
> > +                       .type = IECM_CTLQ_TYPE_MAILBOX_TX,
> > +                       .id = IECM_DFLT_MBX_ID,
> > +                       .len = IECM_DFLT_MBX_Q_LEN,
> > +                       .buf_size = IECM_DFLT_MBX_BUF_SIZE
> > +               },
> > +               {
> > +                       .type = IECM_CTLQ_TYPE_MAILBOX_RX,
> > +                       .id = IECM_DFLT_MBX_ID,
> > +                       .len = IECM_DFLT_MBX_Q_LEN,
> > +                       .buf_size = IECM_DFLT_MBX_BUF_SIZE
> > +               }
> > +       };
> > +       struct iecm_hw *hw = &adapter->hw;
> > +       int err;
> > +
> > +       adapter->dev_ops.reg_ops.ctlq_reg_init(ctlq_info);
> > +
> > +#define NUM_Q 2
> > +       err = iecm_ctlq_init(hw, NUM_Q, ctlq_info);
> > +       if (err)
> > +               return err;
> > +
> > +       hw->asq = iecm_find_ctlq(hw, IECM_CTLQ_TYPE_MAILBOX_TX,
> > +                                IECM_DFLT_MBX_ID);
> > +       hw->arq = iecm_find_ctlq(hw, IECM_CTLQ_TYPE_MAILBOX_RX,
> > +                                IECM_DFLT_MBX_ID);
> > +
> > +       if (!hw->asq || !hw->arq) {
> > +               iecm_ctlq_deinit(hw);
> > +               return -ENOENT;
> > +       }
> > +       adapter->state = __IECM_STARTUP;
> > +       /* Skew the delay for init tasks for each function based on fn
> number
> > +        * to prevent every function from making the same call
> simulatenously.
> > +        */
> > +       queue_delayed_work(adapter->init_wq, &adapter->init_task,
> > +                          msecs_to_jiffies(5 * (adapter->pdev->devfn & 0x07)));
> > +       return 0;
> > +}
> > +
> > +/**
> > + * iecm_deinit_dflt_mbx - Free up ctlqs setup
> > + * @adapter: Driver specific private data structure
> > + */
> > +void iecm_deinit_dflt_mbx(struct iecm_adapter *adapter)
> > +{
> > +       if (adapter->hw.arq && adapter->hw.asq) {
> > +               iecm_mb_clean(adapter);
> > +               iecm_ctlq_deinit(&adapter->hw);
> > +       }
> > +       adapter->hw.arq = NULL;
> > +       adapter->hw.asq = NULL;
> > +}
> > +
> > +/**
> > + * iecm_vport_params_buf_alloc - Allocate memory for MailBox
> resources
> > + * @adapter: Driver specific private data structure
> > + *
> > + * Will alloc memory to hold the vport parameters received on MailBox
> > + */
> > +int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter)
> > +{
> > +       adapter->vport_params_reqd = kcalloc(IECM_MAX_NUM_VPORTS,
> > +                                            sizeof(*adapter->vport_params_reqd),
> > +                                            GFP_KERNEL);
> > +       if (!adapter->vport_params_reqd)
> > +               return -ENOMEM;
> > +
> > +       adapter->vport_params_recvd = kcalloc(IECM_MAX_NUM_VPORTS,
> > +                                             sizeof(*adapter->vport_params_recvd),
> > +                                             GFP_KERNEL);
> > +       if (!adapter->vport_params_recvd) {
> > +               kfree(adapter->vport_params_reqd);
> > +               return -ENOMEM;
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> > +/**
> > + * iecm_vport_params_buf_rel - Release memory for MailBox resources
> > + * @adapter: Driver specific private data structure
> > + *
> > + * Will release memory to hold the vport parameters received on
> MailBox
> > + */
> > +void iecm_vport_params_buf_rel(struct iecm_adapter *adapter)
> > +{
> > +       int i = 0;
> > +
> > +       for (i = 0; i < IECM_MAX_NUM_VPORTS; i++) {
> > +               kfree(adapter->vport_params_recvd[i]);
> > +               kfree(adapter->vport_params_reqd[i]);
> > +       }
> > +
> > +       kfree(adapter->vport_params_recvd);
> > +       kfree(adapter->vport_params_reqd);
> > +
> > +       kfree(adapter->caps);
> > +       kfree(adapter->config_data.req_qs_chunks);
> > +}
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> b/drivers/net/ethernet/intel/include/iecm.h
> > index e19e014e9817..ca9029224e06 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -12,15 +12,33 @@
> >  #include <linux/dim.h>
> >
> >  #include "iecm_txrx.h"
> > +#include "iecm_controlq.h"
> >
> >  #define IECM_BAR0                      0
> >  #define IECM_NO_FREE_SLOT              0xffff
> >
> > +/* Default Mailbox settings */
> > +#define IECM_DFLT_MBX_BUF_SIZE         (4 * 1024)
> > +#define IECM_NUM_QCTX_PER_MSG          3
> > +#define IECM_NUM_FILTERS_PER_MSG       20
> > +#define IECM_VLANS_PER_MSG \
> > +       ((IECM_DFLT_MBX_BUF_SIZE - sizeof(struct
> virtchnl_vlan_filter_list)) \
> > +        / sizeof(u16))
> > +#define IECM_DFLT_MBX_Q_LEN            64
> > +#define IECM_DFLT_MBX_ID               -1
> > +/* maximum number of times to try before resetting mailbox */
> > +#define IECM_MB_MAX_ERR                        20
> > +#define IECM_NUM_CHUNKS_PER_MSG(a, b)
> ((IECM_DFLT_MBX_BUF_SIZE - (a)) / (b))
> > +
> >  #define IECM_MAX_NUM_VPORTS            1
> >
> >  /* available message levels */
> >  #define IECM_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE |
> NETIF_MSG_LINK)
> >
> > +/* Forward declaration */
> > +struct iecm_adapter;
> > +struct iecm_vport;
> > +
> >  enum iecm_state {
> >         __IECM_STARTUP,
> >         __IECM_VER_CHECK,
> > @@ -77,6 +95,22 @@ struct iecm_reset_reg {
> >         u32 rstat_m;
> >  };
> >
> > +/* product specific register API */
> > +struct iecm_reg_ops {
> > +       void (*ctlq_reg_init)(struct iecm_ctlq_create_info *cq);
> > +       int (*intr_reg_init)(struct iecm_vport *vport);
> > +       void (*mb_intr_reg_init)(struct iecm_adapter *adapter);
> > +       void (*reset_reg_init)(struct iecm_reset_reg *reset_reg);
> > +       void (*trigger_reset)(struct iecm_adapter *adapter,
> > +                             enum iecm_flags trig_cause);
> > +};
> > +
> > +struct iecm_dev_ops {
> > +       void (*reg_ops_init)(struct iecm_adapter *adapter);
> > +       void (*crc_enable)(u64 *td_cmd);
> > +       struct iecm_reg_ops reg_ops;
> > +};
> > +
> >  /* stub */
> >  struct iecm_vport {
> >  };
> > @@ -124,6 +158,7 @@ struct iecm_adapter {
> >         DECLARE_BITMAP(flags, __IECM_FLAGS_NBITS);
> >         struct mutex reset_lock; /* lock to protect reset flows */
> >         struct iecm_reset_reg reset_reg;
> > +       struct iecm_hw hw;
> >
> >         u16 num_req_msix;
> >         u16 num_msix_entries;
> > @@ -156,6 +191,7 @@ struct iecm_adapter {
> >         wait_queue_head_t vchnl_wq;
> >         wait_queue_head_t sw_marker_wq;
> >         struct iecm_rss_data rss_data;
> > +       struct iecm_dev_ops dev_ops;
> >         s32 link_speed;
> >         /* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED
> is set
> >          * in vf_res->vf_cap_flags. This field should be used going forward
> and
> > @@ -179,8 +215,24 @@ struct iecm_adapter {
> >         spinlock_t fdir_fltr_list_lock;
> >  };
> >
> > +/**
> > + * iecm_is_reset_detected - check if we were reset at some point
> > + * @adapter: driver specific private structure
> > + *
> > + * Returns true if we are either in reset currently or were previously
> reset.
> > + */
> > +static inline bool iecm_is_reset_detected(struct iecm_adapter *adapter)
> > +{
> > +       return !(rd32(&adapter->hw, adapter->hw.arq->reg.len) &
> > +                adapter->hw.arq->reg.len_ena_mask);
> > +}
> > +
> >  int iecm_probe(struct pci_dev *pdev,
> >                const struct pci_device_id __always_unused *ent,
> >                struct iecm_adapter *adapter);
> >  void iecm_remove(struct pci_dev *pdev);
> > +int iecm_init_dflt_mbx(struct iecm_adapter *adapter);
> > +void iecm_deinit_dflt_mbx(struct iecm_adapter *adapter);
> > +int iecm_vport_params_buf_alloc(struct iecm_adapter *adapter);
> > +void iecm_vport_params_buf_rel(struct iecm_adapter *adapter);
> >  #endif /* !_IECM_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_controlq.h
> b/drivers/net/ethernet/intel/include/iecm_controlq.h
> > new file mode 100644
> > index 000000000000..f2539baa2ce1
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_controlq.h
> > @@ -0,0 +1,117 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#ifndef _IECM_CONTROLQ_H_
> > +#define _IECM_CONTROLQ_H_
> > +
> > +#include <linux/slab.h>
> > +
> > +#include "iecm_controlq_api.h"
> > +
> > +/* Maximum buffer lengths for all control queue types */
> > +#define IECM_CTLQ_MAX_RING_SIZE 1024
> > +#define IECM_CTLQ_MAX_BUF_LEN  4096
> > +
> > +#define IECM_CTLQ_DESC(R, i) \
> > +       (&(((struct iecm_ctlq_desc *)((R)->desc_ring.va))[i]))
> > +
> > +#define IECM_CTLQ_DESC_UNUSED(R) \
> > +       ((u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->ring_size)
> + \
> > +             (R)->next_to_clean - (R)->next_to_use - 1))
> > +
> > +/* Control Queue default settings */
> > +#define IECM_CTRL_SQ_CMD_TIMEOUT       250  /* msecs */
> > +
> > +struct iecm_ctlq_desc {
> > +       __le16  flags;
> > +       __le16  opcode;
> > +       __le16  datalen;        /* 0 for direct commands */
> > +       union {
> > +               __le16 ret_val;
> > +               __le16 pfid_vfid;
> > +#define IECM_CTLQ_DESC_VF_ID_S 0
> > +#define IECM_CTLQ_DESC_VF_ID_M (0x7FF <<
> IECM_CTLQ_DESC_VF_ID_S)
> > +#define IECM_CTLQ_DESC_PF_ID_S 11
> > +#define IECM_CTLQ_DESC_PF_ID_M (0x1F <<
> IECM_CTLQ_DESC_PF_ID_S)
> > +       };
> > +       __le32 cookie_high;
> > +       __le32 cookie_low;
> > +       union {
> > +               struct {
> > +                       __le32 param0;
> > +                       __le32 param1;
> > +                       __le32 param2;
> > +                       __le32 param3;
> > +               } direct;
> > +               struct {
> > +                       __le32 param0;
> > +                       __le32 param1;
> > +                       __le32 addr_high;
> > +                       __le32 addr_low;
> > +               } indirect;
> > +               u8 raw[16];
> > +       } params;
> > +};
> > +
> > +/* Flags sub-structure
> > + * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
> > + * |DD |CMP|ERR|  * RSV *  |FTYPE  | *RSV* |RD |VFC|BUF|  * RSV *  |
> > + */
> > +/* command flags and offsets */
> > +#define IECM_CTLQ_FLAG_DD_S    0
> > +#define IECM_CTLQ_FLAG_CMP_S   1
> > +#define IECM_CTLQ_FLAG_ERR_S   2
> > +#define IECM_CTLQ_FLAG_FTYPE_S 6
> > +#define IECM_CTLQ_FLAG_RD_S    10
> > +#define IECM_CTLQ_FLAG_VFC_S   11
> > +#define IECM_CTLQ_FLAG_BUF_S   12
> > +
> > +#define IECM_CTLQ_FLAG_DD      BIT(IECM_CTLQ_FLAG_DD_S)        /*
> 0x1    */
> > +#define IECM_CTLQ_FLAG_CMP     BIT(IECM_CTLQ_FLAG_CMP_S)       /*
> 0x2    */
> > +#define IECM_CTLQ_FLAG_ERR     BIT(IECM_CTLQ_FLAG_ERR_S)       /*
> 0x4    */
> > +#define IECM_CTLQ_FLAG_FTYPE_VM
> BIT(IECM_CTLQ_FLAG_FTYPE_S)     /* 0x40   */
> > +#define IECM_CTLQ_FLAG_FTYPE_PF        BIT(IECM_CTLQ_FLAG_FTYPE_S
> + 1) /* 0x80   */
> > +#define IECM_CTLQ_FLAG_RD      BIT(IECM_CTLQ_FLAG_RD_S)        /*
> 0x400  */
> > +#define IECM_CTLQ_FLAG_VFC     BIT(IECM_CTLQ_FLAG_VFC_S)       /*
> 0x800  */
> > +#define IECM_CTLQ_FLAG_BUF     BIT(IECM_CTLQ_FLAG_BUF_S)       /*
> 0x1000 */
> > +
> > +struct iecm_mbxq_desc {
> > +       u8 pad[8];              /* CTLQ flags/opcode/len/retval fields */
> > +       u32 chnl_opcode;        /* avoid confusion with desc->opcode */
> > +       u32 chnl_retval;        /* ditto for desc->retval */
> > +       u32 pf_vf_id;           /* used by CP when sending to PF */
> > +};
> > +
> > +/* Define the APF hardware struct to replace other control structs as
> needed
> > + * Align to ctlq_hw_info
> > + */
> > +struct iecm_hw {
> > +       u8 __iomem *hw_addr;
> > +       u64 hw_addr_len;
> > +       void *back;
> > +
> > +       /* control queue - send and receive */
> > +       struct iecm_ctlq_info *asq;
> > +       struct iecm_ctlq_info *arq;
> > +
> > +       /* pci info */
> > +       u16 device_id;
> > +       u16 vendor_id;
> > +       u16 subsystem_device_id;
> > +       u16 subsystem_vendor_id;
> > +       u8 revision_id;
> > +       bool adapter_stopped;
> > +
> > +       struct list_head cq_list_head;
> > +};
> > +
> > +int iecm_ctlq_alloc_ring_res(struct iecm_hw *hw,
> > +                            struct iecm_ctlq_info *cq);
> > +
> > +void iecm_ctlq_dealloc_ring_res(struct iecm_hw *hw, struct
> iecm_ctlq_info *cq);
> > +
> > +/* prototype for functions used for dynamic memory allocation */
> > +void *iecm_alloc_dma_mem(struct iecm_hw *hw, struct
> iecm_dma_mem *mem,
> > +                        u64 size);
> > +void iecm_free_dma_mem(struct iecm_hw *hw, struct iecm_dma_mem
> *mem);
> > +#endif /* _IECM_CONTROLQ_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> > new file mode 100644
> > index 000000000000..5f624f005d33
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_controlq_api.h
> > @@ -0,0 +1,185 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (c) 2020, Intel Corporation. */
> > +
> > +#ifndef _IECM_CONTROLQ_API_H_
> > +#define _IECM_CONTROLQ_API_H_
> > +
> > +#include "iecm_mem.h"
> > +
> > +struct iecm_hw;
> > +
> > +/* Used for queue init, response and events */
> > +enum iecm_ctlq_type {
> > +       IECM_CTLQ_TYPE_MAILBOX_TX       = 0,
> > +       IECM_CTLQ_TYPE_MAILBOX_RX       = 1,
> > +       IECM_CTLQ_TYPE_CONFIG_TX        = 2,
> > +       IECM_CTLQ_TYPE_CONFIG_RX        = 3,
> > +       IECM_CTLQ_TYPE_EVENT_RX         = 4,
> > +       IECM_CTLQ_TYPE_RDMA_TX          = 5,
> > +       IECM_CTLQ_TYPE_RDMA_RX          = 6,
> > +       IECM_CTLQ_TYPE_RDMA_COMPL       = 7
> > +};
> > +
> > +/* Generic Control Queue Structures */
> > +struct iecm_ctlq_reg {
> > +       /* used for queue tracking */
> > +       u32 head;
> > +       u32 tail;
> > +       /* Below applies only to default mb (if present) */
> > +       u32 len;
> > +       u32 bah;
> > +       u32 bal;
> > +       u32 len_mask;
> > +       u32 len_ena_mask;
> > +       u32 head_mask;
> > +};
> > +
> > +/* Generic queue msg structure */
> > +struct iecm_ctlq_msg {
> > +       u16 vmvf_type; /* represents the source of the message on recv */
> > +#define IECM_VMVF_TYPE_VF 0
> > +#define IECM_VMVF_TYPE_VM 1
> > +#define IECM_VMVF_TYPE_PF 2
> > +       u16 opcode;
> > +       u16 data_len;   /* data_len = 0 when no payload is attached */
> > +       union {
> > +               u16 func_id;    /* when sending a message */
> > +               u16 status;     /* when receiving a message */
> > +       };
> > +       union {
> > +               struct {
> > +                       u32 chnl_retval;
> > +                       u32 chnl_opcode;
> > +               } mbx;
> > +       } cookie;
> > +       union {
> > +#define IECM_DIRECT_CTX_SIZE   16
> > +#define IECM_INDIRECT_CTX_SIZE 8
> > +               /* 16 bytes of context can be provided or 8 bytes of context
> > +                * plus the address of a DMA buffer
> > +                */
> > +               u8 direct[IECM_DIRECT_CTX_SIZE];
> > +               struct {
> > +                       u8 context[IECM_INDIRECT_CTX_SIZE];
> > +                       struct iecm_dma_mem *payload;
> > +               } indirect;
> > +       } ctx;
> > +};
> > +
> > +/* Generic queue info structures */
> > +/* MB, CONFIG and EVENT q do not have extended info */
> > +struct iecm_ctlq_create_info {
> > +       enum iecm_ctlq_type type;
> > +       int id; /* absolute queue offset passed as input
> > +                * -1 for default mailbox if present
> > +                */
> > +       u16 len; /* Queue length passed as input */
> > +       u16 buf_size; /* buffer size passed as input */
> > +       u64 base_address; /* output, HPA of the Queue start  */
> > +       struct iecm_ctlq_reg reg; /* registers accessed by ctlqs */
> > +
> > +       int ext_info_size;
> > +       void *ext_info; /* Specific to q type */
> > +};
> > +
> > +/* Control Queue information */
> > +struct iecm_ctlq_info {
> > +       struct list_head cq_list;
> > +
> > +       enum iecm_ctlq_type cq_type;
> > +       int q_id;
> > +       /* control queue lock */
> > +       struct mutex cq_lock;
> > +
> > +       /* used for interrupt processing */
> > +       u16 next_to_use;
> > +       u16 next_to_clean;
> > +       u16 next_to_post;               /* starting descriptor to post buffers
> > +                                        * to after recev
> > +                                        */
> > +
> > +       struct iecm_dma_mem desc_ring;  /* descriptor ring memory
> > +                                        * iecm_dma_mem is defined in OSdep.h
> > +                                        */
> > +       union {
> > +               struct iecm_dma_mem **rx_buff;
> > +               struct iecm_ctlq_msg **tx_msg;
> > +       } bi;
> > +
> > +       u16 buf_size;                   /* queue buffer size */
> > +       u16 ring_size;                  /* Number of descriptors */
> > +       struct iecm_ctlq_reg reg;       /* registers accessed by ctlqs */
> > +};
> > +
> > +/* PF/VF mailbox commands */
> > +enum iecm_mbx_opc {
> > +       /* iecm_mbq_opc_send_msg_to_pf:
> > +        *      usage: used by PF or VF to send a message to its CPF
> > +        *      target: RX queue and function ID of parent PF taken from HW
> > +        */
> > +       iecm_mbq_opc_send_msg_to_pf             = 0x0801,
> > +
> > +       /* iecm_mbq_opc_send_msg_to_vf:
> > +        *      usage: used by PF to send message to a VF
> > +        *      target: VF control queue ID must be specified in descriptor
> > +        */
> > +       iecm_mbq_opc_send_msg_to_vf             = 0x0802,
> > +
> > +       /* iecm_mbq_opc_send_msg_to_peer_pf:
> > +        *      usage: used by any function to send message to any peer PF
> > +        *      target: RX queue and host of parent PF taken from HW
> > +        */
> > +       iecm_mbq_opc_send_msg_to_peer_pf        = 0x0803,
> > +
> > +       /* iecm_mbq_opc_send_msg_to_peer_drv:
> > +        *      usage: used by any function to send message to any peer driver
> > +        *      target: RX queue and target host must be specific in descriptor
> > +        */
> > +       iecm_mbq_opc_send_msg_to_peer_drv       = 0x0804,
> > +};
> > +
> > +/* API support for control queue management */
> > +
> > +/* Will init all required q including default mb.  "q_info" is an array of
> > + * create_info structs equal to the number of control queues to be
> created.
> > + */
> > +int iecm_ctlq_init(struct iecm_hw *hw, u8 num_q,
> > +                  struct iecm_ctlq_create_info *q_info);
> > +
> > +/* Allocate and initialize a single control queue, which will be added to
> the
> > + * control queue list; returns a handle to the created control queue
> > + */
> > +int iecm_ctlq_add(struct iecm_hw *hw,
> > +                 struct iecm_ctlq_create_info *qinfo,
> > +                 struct iecm_ctlq_info **cq);
> > +
> > +/* Deinitialize and deallocate a single control queue */
> > +void iecm_ctlq_remove(struct iecm_hw *hw,
> > +                     struct iecm_ctlq_info *cq);
> > +
> > +/* Sends messages to HW and will also free the buffer*/
> > +int iecm_ctlq_send(struct iecm_hw *hw,
> > +                  struct iecm_ctlq_info *cq,
> > +                  u16 num_q_msg,
> > +                  struct iecm_ctlq_msg q_msg[]);
> > +
> > +/* Receives messages and called by interrupt handler/polling
> > + * initiated by app/process. Also caller is supposed to free the buffers
> > + */
> > +int iecm_ctlq_recv(struct iecm_ctlq_info *cq, u16 *num_q_msg,
> > +                  struct iecm_ctlq_msg *q_msg);
> > +
> > +/* Reclaims send descriptors on HW write back */
> > +int iecm_ctlq_clean_sq(struct iecm_ctlq_info *cq, u16 *clean_count,
> > +                      struct iecm_ctlq_msg *msg_status[]);
> > +
> > +/* Indicate RX buffers are done being processed */
> > +int iecm_ctlq_post_rx_buffs(struct iecm_hw *hw,
> > +                           struct iecm_ctlq_info *cq,
> > +                           u16 *buff_count,
> > +                           struct iecm_dma_mem **buffs);
> > +
> > +/* Will destroy all q including the default mb */
> > +int iecm_ctlq_deinit(struct iecm_hw *hw);
> > +
> > +#endif /* _IECM_CONTROLQ_API_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_mem.h
> b/drivers/net/ethernet/intel/include/iecm_mem.h
> > new file mode 100644
> > index 000000000000..064dd6e10c24
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_mem.h
> > @@ -0,0 +1,20 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IECM_MEM_H_
> > +#define _IECM_MEM_H_
> > +
> > +#include <linux/io.h>
> > +
> > +struct iecm_dma_mem {
> > +       void *va;
> > +       dma_addr_t pa;
> > +       size_t size;
> > +};
> > +
> > +#define wr32(a, reg, value)    writel((value), ((a)->hw_addr + (reg)))
> > +#define rd32(a, reg)           readl((a)->hw_addr + (reg))
> > +#define wr64(a, reg, value)    writeq((value), ((a)->hw_addr + (reg)))
> > +#define rd64(a, reg)           readq((a)->hw_addr + (reg))
> > +
> > +#endif /* _IECM_MEM_H_ */
> > --
> > 2.33.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
