Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEF14130F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Sep 2021 11:51:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAABB40533;
	Tue, 21 Sep 2021 09:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NBk6pZA1DyiW; Tue, 21 Sep 2021 09:51:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02D3F4052F;
	Tue, 21 Sep 2021 09:51:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BC1F1BF956
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 09:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAA048266A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 09:50:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGqjFwHSx9ee for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Sep 2021 09:50:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 38DAC82660
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Sep 2021 09:50:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="286993857"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="286993857"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 02:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="556870654"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2021 02:50:55 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 21 Sep 2021 02:50:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 21 Sep 2021 02:50:54 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 21 Sep 2021 02:50:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTdyTlWm/Y7RjN4wG1lPM7/anA4R0WWbI3ayGav0Br71zUHeCB8LyTwFief6U+9/bdkaAiXlNAko2X5yoKweiOvYyGmPtIuPqv5iU7BxbOh2MoASI9BjdqvTltM0hao6q/St9wyXTJzuRgFK7VyWWI5EDyrKLA3L0qCQ3Y7YjNUVROv5VufTMFKC0TjRLP2oDsQ/gRJTfNwopyQH4C/67NjbaHx41okidPTHkurE/piyQ2I36OqRo8nRp9I1zbxBH9fh99ERGSKvNyj41mKmvQzuVfyvi/6idxi95qiEB1EYBOuQDtHXnymFXxfRlRTSEhWoyVqcCikhMWpZXXOxlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=npnWdDwycocQjXMiq1XYhP15mhdIWzgBsorad/Cl90o=;
 b=iSzZg3VbGIt+epsGaMAYikOLlsHCyeJNjRZKSxK2/rECEFxV0RzvaMRvRO02QAhPxy/Li9tWd8LihZl1ImFNVlghp0z+hzhxRmcCF3drvSYujsQUbrni/sZ1DYB21o7MbmJDZ1M3rWSQStLhsFc8kqsuAdKCrF6b/dfB39GO9IMaeLUSzvFA2jbCmt+Tcay1Snaed77SCm3orAg+37Ggx3PqjwDflG0irFxaE2NkCwxmhzmTG8aTZxyscDcuCvBAzA9B5S6Niob+g0YtXpoJ6Y77zVgc5JiDEi9vRiuIIV3L6vStNJU1o8G/xPCmXJgaKF9ngQ4VXOIVV9KT8JaITw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=npnWdDwycocQjXMiq1XYhP15mhdIWzgBsorad/Cl90o=;
 b=eoHLkzH4Bi3CrMA+nDvE+cVabTz9AKk6tbT35Hx65Z+YISxEe6dlEiUX6RfslL5/e7vdCRoIQMCkNy5aZaKnjKx+J6q9RD22joBzpgWeMX4dpj5k5N0Ci7/7uEY1ZTaeSwHv2NXlVuwIWebc0jcs0qiixctbgf4nVDcaYhjnS4U=
Received: from MN2PR11MB4711.namprd11.prod.outlook.com (2603:10b6:208:24e::13)
 by MN2PR11MB4272.namprd11.prod.outlook.com (2603:10b6:208:196::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Tue, 21 Sep
 2021 09:50:53 +0000
Received: from MN2PR11MB4711.namprd11.prod.outlook.com
 ([fe80::e958:bccd:763a:4ed2]) by MN2PR11MB4711.namprd11.prod.outlook.com
 ([fe80::e958:bccd:763a:4ed2%7]) with mapi id 15.20.4523.018; Tue, 21 Sep 2021
 09:50:53 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: Messages from the future from Intel accounts (was:
 [Intel-wired-lan] [PATCH net-next] ice: Allow to set lan_en and lb_en for
 switchdev offloads)
Thread-Index: AQHXrsxIeyf6CDGy0EecVSLvQCY2/auuPoxA
Date: Tue, 21 Sep 2021 09:50:53 +0000
Message-ID: <MN2PR11MB47119548D528DA7F8738E5B5FDA19@MN2PR11MB4711.namprd11.prod.outlook.com>
References: <20210921111042.1697-1-wojciech.drewek@intel.com>
 <f907886d-fd00-106f-4a0f-55bc251684b8@molgen.mpg.de>
In-Reply-To: <f907886d-fd00-106f-4a0f-55bc251684b8@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a49edcf8-bc2c-41ff-ab01-08d97ce54d21
x-ms-traffictypediagnostic: MN2PR11MB4272:
x-microsoft-antispam-prvs: <MN2PR11MB42720ABC448F94556D220D2BFDA19@MN2PR11MB4272.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: moF2WWTHNCUbSVIQBJge0aOV6/wqAtUYPcHU1vjQPScyo5yIAmuAMZthbZ+HEtqvSB82PX/pmxvQXl2ljZeI9J5TJmuj2eQq8KMLGY8c7Idt27yJBaSMm+Si2NToQ3yooyevqb7U8ClNDGftDTjsb8NR1r4aFy+yxcTyVGMs9QKdrXZGlVcFA5foncjm8OPRr0p9+6rT/B3DFfBggP8JXn4DIvzVov5XKynvQEQWpftFB4hxncvZ1vas7wsmZXQ6Esb5xp4CoFqLT6loqw2e7DoP0PgytWIvRBxQABmsdF9CuZi33YsvNICnhS+dSQT4R8jzkRCSUUQb3WsVialWV3fwdnLo7lFMDVvulHEqWnU2xsIz68nhCc80HW5om7IvM7qHZdaL15yNGTH+re2a7a9QxH0TKUJsKA2ipB0vP1icIP0byE6Cv6oPJt9gZhWMPDVlnkz1gFZFAg+Stokzce6JhoXSb5nBmBY4GiOO/lUyaTltqLJL7dlERk9nbQ3p+52nOre969nTdkehZJltjQ7onCugooVGXzDIqB1+RkZ9qbK8qDRoYerVp8zJ/9md4aZEXf4nv48J0P8CRxngK8ckzGi7r//xuqKTOeU/9YsaeEj22QTsWZC9GhZZUZaEjg1UZJ43lcYbOAM6diQSz6btth3bL74eo4EyO9bvGo0ogpu791XW1ASbbfCb2svy3x5BPRplJI1xNZrwUEuC5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(33656002)(6916009)(186003)(55016002)(86362001)(66476007)(66556008)(15650500001)(8936002)(52536014)(66946007)(38100700002)(316002)(6506007)(2906002)(122000001)(9686003)(5660300002)(53546011)(71200400001)(66446008)(8676002)(64756008)(508600001)(26005)(4744005)(7696005)(83380400001)(4326008)(76116006)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWwrRjRpQXYrRWlCSjNOYlJ3L3VRMEJTTmw1d1UxUkVNeS9CUGJ4MlVQME9l?=
 =?utf-8?B?U1gxa0s4a0pSbVRUSXdqK1o0Qlg1ZkFYMWh6Sy9DdDF3RWtxODRoWWhYeWRa?=
 =?utf-8?B?Qzg4Q2t1SGQ3TzlTNzFVK3JPU2R4dVMrTFIzdzdyMlFqWmZVR3NTOTVreTIz?=
 =?utf-8?B?M0ZGVnpGZGZQMWxEQS9yOWRCVmFvTzkzeEtzMUsyczlKVWpMMjM1cEQ0a0VD?=
 =?utf-8?B?dGJrOGJ1VHdSQW5mMkVoZGJFODgxTENEUUlIYkU2T3hKK1JFZ1krN2NtYm9Q?=
 =?utf-8?B?enFTeWFGOElyczA1SmN1YUxDQm1lZEVJY0JEZjRPNTVjRXg4bU9IMlZWbUp2?=
 =?utf-8?B?T1VjSjNkekNXM1JBbzJDWTh6NngyRlA4bjBrL3dkbkVXWjRaYXNKbytzOGpY?=
 =?utf-8?B?RXRvSEI0NzJHeVBBS3dWcTdQSlY2N09nY281ZHBqTU9lV3BKYnhSR1BQUzE5?=
 =?utf-8?B?a01jM3l6elBIaTR2WUpzMVlUZjNkSUphNGNJUmhvVEZ3UmtaQ3R0aXg1TnBR?=
 =?utf-8?B?K1lzVXlmZ2h6Tk92VkxyeEUveUtCOFVXcGNudHlwWHg3SnRGV3dRNzB0Z1VE?=
 =?utf-8?B?ZEVHNjRXUzFHWTVYVjFEeTIwZWJoQ2c2ZVZiMVY4ZEQ0Ri9wMDhRamtGNmtz?=
 =?utf-8?B?OUNKTkREaDdVdkFHRzR0WHFtZGJQa1pLQi93RThETFNxTmEyUHlkUXhrVThH?=
 =?utf-8?B?UDVTRy9xNGF3YXpXMU9mUW0xSkwzckZWaFhnQVZ4RXI2VDIvSGlWcm9kZVNB?=
 =?utf-8?B?M0wzMmRCZnpUU1NoMHptWGNaR2l4bEd4OStUR1JVR2ZpbjcwczVod0lyK2lz?=
 =?utf-8?B?L2JHUXp4ZXBOUnR1SUFwNGlPWGJWbllzUGFWMkR4NUVVdWxYMHNaYjhXK1Z6?=
 =?utf-8?B?UEFvcVQ1dURHTGkwM3R4d0ZubkpOZU1ldXp6RkovbnF5dURIZlVMeWRaWkJj?=
 =?utf-8?B?ZlhWQk50a3NNSThIVmhOQ1ZBdGdSdU1LVm5PYUVuSmEwc2ZkbTR3bXhIdnFC?=
 =?utf-8?B?Q1JuTEZySTlvSitpN3ptdElORFh0ZkwrRWttTmxSMENiVGYrdFNEd1B2SEFG?=
 =?utf-8?B?OWdnWjQySmVPaVpkZlJLU2dHWTY5L2l3dUtCdTBtWXpzbmswN0RmQWQyVElw?=
 =?utf-8?B?MGtPZ2x3RmxzTUVYakNSamxxYVp2Skt0SkRYNlN1UWR5Y1lRY3pkVW1WUmor?=
 =?utf-8?B?eG4ycFFKR2N2R3Exa0xpVzZ6Z0g2aE8waG1SaVdFOHBnYktFUU1STWtNYmV3?=
 =?utf-8?B?VmVoLzdZOTdiOE9lSVppNVpZaFlBcGF1dmdtbkRtV3FJQXBHVzVvN2RGTVZ2?=
 =?utf-8?B?MlYxQ3JFTFBkWE5lUEp0SmZXM3I1Z3lFRE9LT2E0SGlDUlZEVmdiZnlwU0N6?=
 =?utf-8?B?bFZqRG8vQkJKcGRUOGoxeS9rMVhFeklCYUdzWUJlWDJsKzNGbnVUZlZXK3dj?=
 =?utf-8?B?RlY5ZVVpNkJMRUpTdmp5dGJRZS94OEY2bHNxZUZqSDVQdERlWlR4SkoxdjFw?=
 =?utf-8?B?YjI5MXVQYXMrSTByUzltVml0Sm4wTlZOeHFaYmlYK01HUzJYYnZFSmlXY2Jl?=
 =?utf-8?B?LzB6cllCNXIwMmh5elN5bCtTS2lOOVNNaFVWMDZUT2ZCQ2FEaUZuZ1lwdWI4?=
 =?utf-8?B?V3FxUUViR0V0WUR4TnRYeU9YOVZyZlVyRC9FWjBJWkN3aHdzYjg1dnNTeFdq?=
 =?utf-8?B?UW5UQXJrQlYyTy9pOHRaZ094WlVtd2tvbTFOQ1NCYUYyOUNiQ2UzcVB6ZkxB?=
 =?utf-8?Q?JdbBQ6g7G8NfLtPMqs=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a49edcf8-bc2c-41ff-ab01-08d97ce54d21
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2021 09:50:53.2465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aw8OIW/xIIzsIS42EuaPCUZezs7Wynkusykiwe4IC2sKCmeLctDZfL3Qa7jXQ6zyTiIZxEyGtu1W12/PdoxsYsCQbclmGlu9Nw6RK0Cuxak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4272
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Messages from the future from Intel accounts
 (was: [PATCH net-next] ice: Allow to set lan_en and lb_en for switchdev
 offloads)
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogd3RvcmVrLCAyMSB3cnplxZtuaWEgMjAyMSAx
MTozNw0KPiBUbzogRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IE1lc3Nh
Z2VzIGZyb20gdGhlIGZ1dHVyZSBmcm9tIEludGVsIGFjY291bnRzICh3YXM6IFtJbnRlbC13aXJl
ZC1sYW5dIFtQQVRDSCBuZXQtbmV4dF0gaWNlOiBBbGxvdyB0byBzZXQgbGFuX2VuIGFuZCBsYl9l
biBmb3INCj4gc3dpdGNoZGV2IG9mZmxvYWRzKQ0KPiANCj4gRGVhciBJbnRlbCBmb2xrcywNCj4g
DQo+IA0KPiBBbSAyMS4wOS4yMSB1bSAxMzoxMCBzY2hyaWViIFdvamNpZWNoIERyZXdlazoNCj4g
DQo+IFvigKZdDQo+IA0KPiBPbmNlIGFnYWluLCBoZXJlIGlzIGFuIGVtYWlsIHdpdGggYSBkYXRl
IGZyb20gdGhlIGZ1dHVyZSBtZXNzaW5nIHVwIHRoZQ0KPiBtZXNzYWdlIHNvcnRpbmcgZm9yIHNv
bWUgcGVvcGxlLiBBcyB0aGlzIGNvbnRpbnVlcyB0byBoYXBwZW4sIHdhcyB0aGlzDQo+IGV2ZXIg
YW5hbHl6ZWQ/DQpTb3JyeSBmb3IgdGhhdCwgSSBoYXZlIHdyb25nIHRpbWUgb24gbXkgbWFjaGlu
ZS4NClRoYW5rcyBmb3Igbm90aWNpbmcgdGhhdCENCg0KUmVnYXJkcywNCldvamNpZWNoDQo+IA0K
PiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1bA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
