Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD6D2DFDD1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 36F4D878A8;
	Mon, 21 Dec 2020 15:58:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RjLDhs2VcT7M; Mon, 21 Dec 2020 15:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1B0287774;
	Mon, 21 Dec 2020 15:58:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1685D1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02D3A2152A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TVSNBRaPPfZf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id AB886204E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:58:23 +0000 (UTC)
IronPort-SDR: S6VAsCJXKVJM8agfz6dqGapOHaU946mKAgSkElYZN3kvrFBkE7qPiGlKHpTW4ER2Fov1EXP12d
 fNdPAQ3ZIwMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="173173007"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="173173007"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 07:58:23 -0800
IronPort-SDR: 7WH5OzqZCYx39Hj3YapszHctRSI5zAjcL37Hl9L3gfgf+ay0nJ5SFF1uN+aHeIuez4U3J0Htdm
 ci45RkzZSj9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="561303577"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 21 Dec 2020 07:58:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:58:22 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:58:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Dec 2020 07:58:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Dec 2020 07:58:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8TNa4hwj7lzqZb1RXAnWCO/fg/FdmwacMwmv6kQ6pTgSQ9sWjECsGWh5SZS7wMFx1TExC4yYtrH2V3H4y48eXDIBrWuSlz/22qkcgPyuwpcd4BMKD+7pV0NxUj4sfA8s1wcUC7DaiV2+MBLOQRdW0RuHony8mW0YsfjF7poC5vgGiSgeteNbKPPNqLrCo8M7H60/oA7Hh2O9PyqxPW+SjuNi6OcvqwvH1R/E/EK/DWD4Ymrl0BeVNQyD1jgGMBHTWxBE37s9z6K8XWh6WnR/lggbJXULeOusISwkiKlHMPfW6E7wGKNrX+thwoRO+5jGDFhD2neqXFIycvMFNfapg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d7l7QWHfVT86POHsBoHDs75IeVVzkf8TRuj2b/DcKTA=;
 b=dI23nuqVeqHPO/cHPZdNV4n3dyZms8NnTQARYz7KmwxlShH2t/FLTroVDXW+FJKNgsY2eaU3bWBlxTJus4Oy9DEW68pvl4fftuLuN7Sq/VdC+jQEj6p19TmccsB76RAHFYFCJV4kkhqXTv/SKcjPOHNamEKYQD7URnt6gBBE7ZGGxJBQvfMEe+Y6XHHMlzlRIKRdHoYR3gmQTCgynGgb/kl+ejLN6hUitpFwV9VEKGQ066k3OygHCMDCmMxHh+565Hnb2xiu7aQc9Tk3EyDCTpIHZNO/fFMQf5UZ5O0s6u4IYzRmLvjf5D8uHfQEjpML2z3W5l8ti24i8QbjJgsg3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d7l7QWHfVT86POHsBoHDs75IeVVzkf8TRuj2b/DcKTA=;
 b=xr28pDWbcvSoJhe5+kD/+33QyQzL4uEVh9fOIDbSsC/mUVsEIo5KemL83PC4qvXh9GLqXGACXRFIJDH6Bny4T21WUZcP2t71NIdAiOMsw9eH8TtsXfvQnqz0TtXjAPqytWUSEbzoNHcIBasX4EBvij4ux4LkDWLo08oUJEaym1Q=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BYAPR11MB3254.namprd11.prod.outlook.com (2603:10b6:a03:7c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.25; Mon, 21 Dec
 2020 15:58:20 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3676.031; Mon, 21 Dec 2020
 15:58:20 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Ben Greear <greearb@candelatech.com>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
Thread-Index: AQHW1WmC/9lZetFbe0W6vQgdg2EdV6n9PE7AgAAE+ICAADjoAIAAA24AgAAMYICAAAwigIABATNggAALUACAAwnwsIAAC0wAgAAAWLA=
Date: Mon, 21 Dec 2020 15:58:20 +0000
Message-ID: <BYAPR11MB360628704A4938C481F6EA41EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <2108932e-ee2e-cadf-52cd-0cd11a6aeba4@candelatech.com>
 <BYAPR11MB3606A702240D0A1614AA6585EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
 <1d9e12e5-56a5-7921-e4b6-b67bcc180942@candelatech.com>
In-Reply-To: <1d9e12e5-56a5-7921-e4b6-b67bcc180942@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: candelatech.com; dkim=none (message not signed)
 header.d=none;candelatech.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d791f2b4-3caa-460c-ff98-08d8a5c93d46
x-ms-traffictypediagnostic: BYAPR11MB3254:
x-microsoft-antispam-prvs: <BYAPR11MB3254E0CD5767ACCA662AC398EFC00@BYAPR11MB3254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +zIF2TA9xZLMZBok4HC0tTSvPHBiHge4yxrCGyr/mg51VlhyxmSOLu3NzjeO8IbQ0odeJABG8Z31KOKTE+XX6AgCBQstc5JHIPV14QCg31KaJDpKoZlfL959RYk6jSXZU6utqIRLgJFskUhuVzwzPpYUmTAOFzwLllyqfTt1/JzBkqoq5od2taS/hBv9Hgi76iauOqufUh1qgXNzev36TcaUHNFP8Hbk1xOc/RildxVDMiVtM+EF30sniGhtBwCIwr/u2CGsTkOLoJIyarL8Q3MQKx2n+0pi/JOJS4r53k3jaiubd+YsuCfiH54/0RU73gmmz/h3PXM2TpSOLFSxCzM0sFWZN2qiIp2OqCfwalD8VlYPw8MOa9mO+vHlty/pfbV8kbKOEPJkd0WAjMofB6HTUYtri1Jf98VwDmRyyZ3Q0NWz9HC23ryYIzS8cs3RUzyjiYFC9zm/KP4H2T2p8QY2oa1pmzkMowRyeXlAEVKf1gZOcSrb1Eqbebgv647izSNt5A5qs9Ldp/gVnMU3AA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(396003)(39860400002)(346002)(136003)(76116006)(966005)(186003)(66476007)(33656002)(478600001)(66556008)(64756008)(66946007)(52536014)(66446008)(8936002)(86362001)(316002)(4326008)(110136005)(54906003)(55016002)(8676002)(9686003)(2906002)(83380400001)(5660300002)(26005)(53546011)(6506007)(7696005)(71200400001)(18886065003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZW9RbHJrL05hOXNjWWMrSHNvbG5NQlQ1aUN2NGk1ajdZc0ZoaEZPUTlOelJ4?=
 =?utf-8?B?Tzdqd3NSSHQvZFdNdEZMWXFUcUY1K0NQaHA5Z0UzZ2loUFNDakpvM0ljeHFU?=
 =?utf-8?B?aWhZTkRmb0FwOG5Ia25ubUFQSEl5ajNQMkpCUkJ4ZHdvcmlNeDRka1JnZFVt?=
 =?utf-8?B?MkcvV09YdVEya0dVT0JkLzViZVV1UVpFVG0reWRrWHk5UnFJMXZScmFRZDd6?=
 =?utf-8?B?eFRiMzhxaDVjWjNGSnRxTWJwcVdwOForVUxwTU9yN3RQeGFCa2VXMGNKbElJ?=
 =?utf-8?B?RlhFRmxxZldqVHNhbG9iTjBHb1RLbnRkRVlRamIvT0xzOXlEM3R4dkR2NmV6?=
 =?utf-8?B?TXM5Mkhva0U1UXQwMzBTcS9VWWNHTmFqWWI0dEFqdDQwWlBFdHErbVNBRTlG?=
 =?utf-8?B?aU9qWmRuNGIrcDFiVWZOSmJIcisycmVnaWFsbUh3OTYzSGtRRnR2R2tLTmti?=
 =?utf-8?B?VUJFdEp2OVEwemxYVE0wQlE2RUFSNmI0OEVYaU1zMnBHVkkxV1QvSHJHcVNa?=
 =?utf-8?B?bVVnTm5Bd0JoRzJ0YWFkOGJvZUNyeEU4MnpqVTJROHNwR0Z4R1ZEOHh4YlhD?=
 =?utf-8?B?NFpSeXlqVFZ5eXZQUGxrNTVsZ1dFNE9zbVJ4eStxVGFONnQxZmFJRzVJZEFN?=
 =?utf-8?B?bkg4a3M2aEt3VlFnV0syK3JlWWtFeXFDNjNZUzEzRE85cDNqdjBzNmZOdTFH?=
 =?utf-8?B?Y1VDM1IzUXZpKzZ2elA1N3NHcTRjeGRYZ0RYL3hEN0RtMDdxZVJqWG1ITk80?=
 =?utf-8?B?V2VIQ2hueUQyM2xsSVJ1QTFOQ09EeHVEZVJZMWM5NWIyY2F6cVJXTlVGTzRM?=
 =?utf-8?B?UzI3TGgrNTVEbktOTlRiNEppeG5QYloyN281bERTam9EdkVJV1I4cS9nM0t3?=
 =?utf-8?B?Ylp4YnNVaFYrbytRVmZjaCtGSU1ERDB5d1NwSzdJSkhNN2JvcTJxeGtSNEd3?=
 =?utf-8?B?ZEpFMnMwUUVDeFJrUTVKN0V6dkxyUFZqU2JlQm0vWXVONjRicFBvNVJzc1Zw?=
 =?utf-8?B?NTNHR1hZQS85TDh2Tjcxd1BCREtXZXAyN0FxY2hMYkp5Q3ZnVTRUVGsyQ3Bo?=
 =?utf-8?B?aE8xcTZVSTdFdmd1UEI5TXI0MFdnWUEzaHBFMjk5SC8vbGV1QXhya3NZSHJo?=
 =?utf-8?B?bDZxaFBuallteGJidzBtVGFLS1VMNkRxTHZ4NWhXaDFnRkJOazJxVlpCVmFC?=
 =?utf-8?B?cnpveWhKUW00R3JoUXZjR2xodk1xUTJ2SGVyYkdSZTg2V29hQTJhdDQybDJu?=
 =?utf-8?B?NUV5VzhzRm9FWnNGQjZHUXhnTXMvdzUrRm9RYTVjY3pKNlJHMDhMcFdlZ0NN?=
 =?utf-8?Q?BNeP5psSlugNQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d791f2b4-3caa-460c-ff98-08d8a5c93d46
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2020 15:58:20.6238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H/0DliBd1daBZcXBm7mTDMyL+vOqJDYTwvFgr5wUN+PkEYxqqjiGqZJvuDkwRCOkq6iCpqxEdMwEkR+qLaWPMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3254
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Rm9yIHRoZSBzdGFuZGFsb25lIGRyaXZlcj8gSSBjYW4gY2VydGFpbmx5IGFzayBmb3IgdGhlIGNo
YW5nZS4gSXQgbWlnaHQgdGFrZSBhIHdoaWxlIChrbm93aW5nIHdoYXQncyBnb2luZyBvbiBoZXJl
KSBidXQgSSBjYW4gY2hhbXBpb24gdGhhdC4NCg0KQXMgZm9yIGluLWtlcm5lbCwgSSB0aGluayBJ
bnRlbCB3YW50cyB0byBrZWVwIGl0IHRoaXMgd2F5LiBOb3Qgc2F5aW5nIEludGVsIHdvbid0IGJl
IG91dHZvdGVkLCBidXQgdGhpcyBpcyB3aGF0IGhhcyBiZWVuIGRlbWFuZGVkIGJ5IHRoZSBjdXN0
b21lciBzbyBmYXIuDQoNClRvZGQgRnVqaW5ha2ENClNvZnR3YXJlIEFwcGxpY2F0aW9uIEVuZ2lu
ZWVyDQpEYXRhIENlbnRlciBHcm91cA0KSW50ZWwgQ29ycG9yYXRpb24NCnRvZGQuZnVqaW5ha2FA
aW50ZWwuY29tDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCZW4gR3JlZWFy
IDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4gDQpTZW50OiBNb25kYXksIERlY2VtYmVyIDIxLCAy
MDIwIDc6NTMgQU0NClRvOiBGdWppbmFrYSwgVG9kZCA8dG9kZC5mdWppbmFrYUBpbnRlbC5jb20+
OyBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KQ2M6IGludGVsLXdpcmVkLWxh
bkBsaXN0cy5vc3Vvc2wub3JnOyBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4N
ClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSA1LjEwLjAga2VybmVsIHJlZ3Jlc3Npb24g
Zm9yIDIuNUdicHMgbGluayBuZWdvdGlhdGlvbj8NCg0KT24gMTIvMjEvMjAgNzoyMCBBTSwgRnVq
aW5ha2EsIFRvZGQgd3JvdGU6DQo+IE5vcGUuIFRoZSB0aW1pbmcgb2YgdGhlIFBIWXMgbWVhbnMg
dGhlIHN3aXRjaCB0aW1lcyBvdXQgd2hpbGUgd2UncmUgdHJ5aW5nIDIuNUcgYW5kIDVHIGFuZCB0
aGUgc3dpdGNoIGdvZXMgdG8gaXRzIGRlZmF1bHQgbG93ZXN0IHNwZWVkIG9mIDFHLiBUaGVuIHdl
IGdvIHRvIDFHIGFuZCBieSB0aGF0IHRpbWUgYm9uZGluZyBpcyBicm9rZW4gaW4gc2V2ZXJhbCBv
ZiB0aGUgY2FzZXMgd2UgcmFuIGludG8uDQo+IA0KPiBCYXNpY2FsbHksIHdlIGNhbiBoYXZlIHRo
YXQgc3dpdGNoIHdvcmssIG9yIHdlIGNhbiBoYXZlIDIuNUcgYW5kIDVHIG9uIGJ5IGRlZmF1bHQu
IE5vdCBib3RoLiBBbmQgc2luY2Ugd2UncmUgc2VsbGluZyBhIDEwRyBkZXZpY2Ugd2l0aCBvdGhl
ciBzcGVlZHMgYXMgYSBib251cywgd2UncmUgcHJpb3JpdGl6aW5nIHRoZSBoaWdoZXN0IHNwZWVk
LiBUaGF0IHBsdXMgdGhlIHZlcnkgaGlnaCBwcm9maWxlIGN1c3RvbWVycyB3aG8gd2FudGVkIHRo
aXMgc29sdXRpb24uDQo+IA0KPiBUaGUgc29sdXRpb24gZm9yIG9uZSBjYW1wIG9yIHRoZSBvdGhl
ciBpcyB0byB1c2UgdGhlIGV0aHRvb2wgY29tbWFuZCBhdCBib290IChJJ3ZlIGZvcmdvdHRlbiBl
eGFjdGx5IHdoYXQgdGhhdCB3YXMpIGJ1dCB0aGUgaGlnaCBwcm9maWxlIGN1c3RvbWVycyByZWZ1
c2VkIHRvIGRvIHRoYXQuIFNvdW5kcyBsaWtlIHlvdSdyZSByZWZ1c2luZyBhcyB3ZWxsPw0KDQpJ
J20gbm90IHJlZnVzaW5nLCBJIGp1c3Qgd291bGQgcmF0aGVyIHBhdGNoIG15IGtlcm5lbHMgdGhh
biB1c2UgZXRodG9vbCwgdGhhdCB3YXkgbXkgb2xkZXIgdXNlci1zcGFjZSB3b3VsZCB3b3JrIGZp
bmUgb24gbmV3ZXIga2VybmVscy4NCg0KV291bGQgeW91IGFjY2VwdCBhIHBhdGNoIHRoYXQgbWFr
ZXMgdGhpcyBhIG1vZHVsZSBvcHRpb24sIGRlZmF1bHRlZCB0byBkaXNhYmxlIDIuNS81LCBidXQg
d2hpY2ggYSB1c2VyIGNvdWxkIGVuYWJsZWQgdG8gZW5hYmxlIDIuNS81IGJ5IGRlZmF1bHQ/DQoN
CkknZCBmaW5kIHRoYXQgZWFzaWVyIHRvIHVzZSB0aGF0IHRoZSBldGh0b29sIG1vZGlmaWNhdGlv
biwgYW5kIG9mIGNvdXJzZSBldGh0b29sIGNvdWxkIHN0aWxsIG92ZXJyaWRlIHRoaW5ncyBhcyBk
ZXNpcmVkLg0KDQpUaGFua3MsDQpCZW4NCg0KPiANCj4gVG9kZCBGdWppbmFrYQ0KPiBTb2Z0d2Fy
ZSBBcHBsaWNhdGlvbiBFbmdpbmVlcg0KPiBEYXRhIENlbnRlciBHcm91cA0KPiBJbnRlbCBDb3Jw
b3JhdGlvbg0KPiB0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KPiANCj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gRnJvbTogQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+
DQo+IFNlbnQ6IFNhdHVyZGF5LCBEZWNlbWJlciAxOSwgMjAyMCA4OjQ4IEFNDQo+IFRvOiBGdWpp
bmFrYSwgVG9kZCA8dG9kZC5mdWppbmFrYUBpbnRlbC5jb20+OyBQYXVsIE1lbnplbCANCj4gPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wu
b3JnOyBHcmVnIEtIIA0KPiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+IFN1YmplY3Q6
IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSA1LjEwLjAga2VybmVsIHJlZ3Jlc3Npb24gZm9yIDIuNUdi
cHMgbGluayBuZWdvdGlhdGlvbj8NCj4gDQo+IE9uIDEyLzE5LzIwIDg6MTkgQU0sIEZ1amluYWth
LCBUb2RkIHdyb3RlOg0KPj4gVGhpcyBpcyBhIGJhZCBjYXNlIHdpdGggbm8gaWRlYWwgc29sdXRp
b24uIERldGVjdGluZyB0aGUgY2FzZSBpcyBub3QgcG9zc2libGUgYXMgYXV0b25lZ290aWF0aW9u
IGhhcHBlbnMgaW4gdGhlIGhhcmR3YXJlIHdpdGhvdXQgc29mdHdhcmUgaW52b2x2ZW1lbnQuDQo+
Pg0KPiANCj4gU28sIGFmdGVyIGl0IG5lZ290aWF0ZXMgdG8gMi41LCB3aGF0IGhhcHBlbnM/ICBE
byB5b3Ugc2VlIGxvdHMgb2YgbG93LWxldmVsIGNyYyBlcnJvcnMgb3Igc2ltaWxhcj8NCj4gTWF5
YmUgeW91IGNhbiB1c2UgdGhhdCB0byBkZXRlcm1pbmUgbGluayBpcyBiYWQgYW5kIGZvcmNlIGl0
IGJhY2sgdG8gMUdicHMgYW5kIHJlLW5lZ290aWF0ZSBsaW5rPw0KPiANCj4gKEFuZCB3aXRoIG5p
Y2UgdmlzaWJsZSB3YXJuaW5nIGluIGRtZXNnIGFib3V0IHdoYXQgaXMgZ29pbmcgb24pDQo+IA0K
Pj4gT25lIHNvbHV0aW9uIHdhcyB0byB1cGRhdGUgdGhlIHN3aXRjaCBmaXJtd2FyZSBmb3IgdGhl
IGEgc3dpdGNoIHRoYXQgaXMgaXMgdGhlIGxpbmsgcGFydG5lciB0aGF0IGdpdmUgdXMgdGhlIG1v
c3QgdHJvdWJsZS4gVGhlIGlzc3VlIGFwcGVhcnMgdG8gYmUgaW4gY29tcGV0aW5nIG9yIGhhbGYt
aW1wbGVtZW50ZWQgc3RhbmRhcmRzLiAyLjVHIGFuZCA1RyB3ZXJlIGluaXRpYWxseSBub24tSUVF
RSBzdGFuZGFyZHMgdGhhdCBkaWZmZXJlbnQgbWFudWZhY3R1cmVycyBoYWNrZWQgb250byAxRyBp
biBkaWZmZXJlbnQgd2F5cy4gV2UgaW1wbGVtZW50ZWQgaXQgdG8gb25lIG9mIHRoZSBzdGFuZGFy
ZHMgd2hpY2ggc2hvdWxkIGJlIGludGVyb3BlcmFibGUsIGJ1dCB0aGUgY29ybmVyIGNhc2Ugb2Yg
dGhlIHdpZGVseS1kZXBsb3llZCBzd2l0Y2ggd2lsbCB0YWtlIHRoZSBsaW5rIGZyb20gMTBHIHRv
IDFHIHdpdGggbm8gYXV0b21hdGVkIHdheSB0byBmaXggaXQuDQo+Pg0KPj4gVXBkYXRpbmcgc3dp
dGNoZXMgbWVhbnMgYSBsb3Qgb2YgZG93bnRpbWUgZm9yIGEgbG90IG9mIGRhdGFjZW50ZXJzIGFu
ZCB0aGUgT0VNcyB3ZSBkZWFsIHdpdGggd291bGQgbm90IGFjY2VwdCB0aGF0IGFuc3dlci4NCj4+
DQo+PiBPdXIgc29sdXRpb24gd2FzIHRvIGRpc2FibGUgMi41RyBhbmQgNUcgYnkgZGVmYXVsdC4g
VGhpcyBmaXhlcyAxMEcgbGlua2luZyBhdCAxRyBvbiB0aGF0IHN3aXRjaCwgYnV0IDIuNUcgYW5k
IDVHIHdpbGwgbGluayBhdCAxRyBieSBkZWZhdWx0LiBBbmQsIGFzIEkgc2FpZCwgSSd2ZSBoYWQg
dmVyeSBsaXR0bGUgY29udGFjdCB3aXRoIHBlb3BsZSB1c2luZyAyLjVHIGFuZCA1RyBhbmQgSSdt
IHRoZSBndXkgb24gYWxsIHRoZSBtYWlsaW5nIGxpc3RzLiBJIGFwb2xvZ2l6ZSBmb3IgbWFraW5n
IHlvdXIgbGlmZSBoYXJkZXIsIGJ1dCBpdCBzZWVtcyBsaWtlIGl0J3MganVzdCB5b3Ugc28gZmFy
LiBQYXVsIHNlZW1zIHRvIGJlIGFyZ3Vpbmcgd2l0aCBtZSBqdXN0IGZvciB0aGUgZnVuIG9mIGl0
Lg0KPiANCj4gV2VsbCwgd2hlbiB0aGluZ3Mgd29yaywgbm8gb25lIHRhbGtzIGFib3V0IGl0LiA6
KQ0KPiANCj4gQXJlIHlvdSBhYmxlIHRvIGRldGVybWluZSB0aGF0IHBlZXIgaXMgYWR2ZXJ0aXNp
bmcgMi41LCBhbmQgbG9jYWwgTklDIGlzIGZvcmNlZCB0byAxRywgYW5kIHRoZW4gcHV0IGEgdmlz
aWJsZSB3YXJuaW5nIGluIGRtZXNnIGFib3V0IHRoaXMgY2FzZSBhbmQgbGluayB0byBob3cgdG8g
ZW5hYmxlIDIuNS81RyByYXRlcz8gIFRoYXQgbWlnaHQgaGVscCBwZW9wbGUgcmVhbGl6ZSB3aGF0
IGlzIGdvaW5nIG9uLiAgQW5kIHdoZW4geW91IGRvIHRoaXMgY29tbWl0LCBwdXQgYSBsb3Qgb2Yg
bm90ZXMgYWJvdXQgd2h5IGFuZCBhYm91dCB3aGF0IGNvbW1pdCBjaGFuZ2VkIHRoaW5ncyBzaW5j
ZSBpdCBpcyBub3QgYXQgYWxsIG9idmlvdXMgZnJvbSB0aGUgb3JpZ2luYWwgY29tbWl0IG1lc3Nh
Z2UuDQo+IA0KPiBUaGFua3MsDQo+IEJlbg0KPiANCj4+DQo+PiBUb2RkIEZ1amluYWthDQo+PiBT
b2Z0d2FyZSBBcHBsaWNhdGlvbiBFbmdpbmVlcg0KPj4gRGF0YSBDZW50ZXIgR3JvdXANCj4+IElu
dGVsIENvcnBvcmF0aW9uDQo+PiB0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KPj4NCj4+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+PiBGcm9tOiBCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRl
bGF0ZWNoLmNvbT4NCj4+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTgsIDIwMjAgNDo0NyBQTQ0K
Pj4gVG86IEZ1amluYWthLCBUb2RkIDx0b2RkLmZ1amluYWthQGludGVsLmNvbT47IFBhdWwgTWVu
emVsIA0KPj4gPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4+IENjOiBpbnRlbC13aXJlZC1sYW5A
bGlzdHMub3N1b3NsLm9yZzsgR3JlZyBLSCANCj4+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9y
Zz4NCj4+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSA1LjEwLjAga2VybmVsIHJlZ3Jl
c3Npb24gZm9yIDIuNUdicHMgbGluayBuZWdvdGlhdGlvbj8NCj4+DQo+PiBPbiAxMi8xOC8yMCA0
OjA5IFBNLCBGdWppbmFrYSwgVG9kZCB3cm90ZToNCj4+PiBXaGF0IGRvIHlvdSBjb25zaWRlciBh
IHJlZ3Jlc3Npb24/IEhhdmluZyB0byBlbmFibGUgMi41RyBhbmQgNUcgdXNpbmcgZXRodG9vbCB3
aGljaCBjYW4gYmUgZG9uZSBhdCBib290IHRpbWU/DQo+Pj4NCj4+PiBXZSBoYWQgbW9yZSB0aGFu
IGEgZmV3IGRhdGFjZW50ZXJzIHdpdGggaXNzdWVzIGJlY2F1c2Ugb2YgY29tcGV0aW5nIHN0YW5k
YXJkcy4gSSBjaGVja2VkIHdpdGggb3VyIG1hcmtldGluZyBwZW9wbGUgYW5kLCBvbiB0aGUgd2hv
bGUsIG5vIG9uZSBjb3VsZCB0aGluayBvZiBhIGxhcmdlIG51bWJlciBvZiAyLjVHIG9yIDVHIGN1
c3RvbWVycy4NCj4+Pg0KPj4+IFdlIGhhZCBzZXZlcmFsIGVzY2FsYXRpb25zIGZyb20gbWFqb3Ig
T0VNcyBhbmQgdGhpcyB3YXMgdGhlIHNvbHV0aW9uIHRoZXkgd2FudGVkLg0KPj4+DQo+Pj4gV2Ug
Y29uc2lkZXIgdGhpcyBuZWNlc3NhcnkgZm9yIGludGVyb3BlcmFiaWxpdHkuDQo+Pg0KPj4gQ2Fu
IHlvdSBkZXRlY3QgdGhpcyBjYXNlIHNvbWVob3cgYW5kIGF1dG9tYXRpY2FsbHkgZmFsbC1iYWNr
IHRvIDFHYnBzPw0KPj4NCj4+IEZvciBteSBvd24gcHVycG9zZXMsIEkgd2lsbCBqdXN0IGhhY2sg
dGhhdCBjb21taXQsIGJ1dCBpdCBpcyBsaWtlbHkgdG8gYmUgY29uZnVzaW5nIHRvIG90aGVyIHBl
b3BsZSB3aG8gaGFkIGEgc3lzdGVtIHRoYXQgd29ya2VkIGF0IDIuNSBwcmV2aW91c2x5IGFuZCB0
aGVuIHN1ZGRlbmx5IGl0IGlzIHNsb3dlci4gIFRoZXJlIGlzIG5vIGVhc3kgd2F5IHRvIGtub3cg
ZnJvbSB0aGUgc3ltcHRvbSB0aGF0IHlvdSBuZWVkIHRvIGRpZyB1cCBhbiBvYnNjdXJlIHJlYWRt
ZSBhbmQgcnVuIGFuIG9ic2N1cmUgZXRodG9vbCBjb21tYW5kLg0KPj4NCj4+IFRoYW5rcywNCj4+
IEJlbg0KPj4NCj4+Pg0KPj4+IFRvZGQgRnVqaW5ha2ENCj4+PiBTb2Z0d2FyZSBBcHBsaWNhdGlv
biBFbmdpbmVlcg0KPj4+IERhdGEgQ2VudGVyIEdyb3VwDQo+Pj4gSW50ZWwgQ29ycG9yYXRpb24N
Cj4+PiB0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KPj4+DQo+Pj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4+PiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0K
Pj4+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTgsIDIwMjAgMzoxOSBQTQ0KPj4+IFRvOiBCZW4g
R3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT47IEZ1amluYWthLCBUb2RkIA0KPj4+IDx0
b2RkLmZ1amluYWthQGludGVsLmNvbT4NCj4+PiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmc7IEdyZWcgS0ggDQo+Pj4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsgTmd1
eWVuLCBBbnRob255IEwgDQo+Pj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgQnJhbmRl
YnVyZywgSmVzc2UgDQo+Pj4gPGplc3NlLmJyYW5kZWJ1cmdAaW50ZWwuY29tPjsgVHlsLCBSYWRv
c2xhd1ggDQo+Pj4gPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2Fu
ZHIgDQo+Pj4gPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgTWNsZWFuLCBBcnRodXIg
RiANCj4+PiA8YXJ0aHVyLmYubWNsZWFuQGludGVsLmNvbT47IFNrYWpld3NraSwgUGlvdHJYIA0K
Pj4+IDxwaW90cnguc2thamV3c2tpQGludGVsLmNvbT4NCj4+PiBTdWJqZWN0OiBSZTogW0ludGVs
LXdpcmVkLWxhbl0gNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVn
b3RpYXRpb24/DQo+Pj4NCj4+PiBbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQ0KPj4+
DQo+Pj4gQW0gMTkuMTIuMjAgdW0gMDA6MDcgc2NocmllYiBCZW4gR3JlZWFyOg0KPj4+PiBPbiAx
Mi8xOC8yMCAxMTo0MyBBTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+Pj4NCj4+Pj4+IEFtIDE4LjEy
LjIwIHVtIDIwOjI3IHNjaHJpZWIgRnVqaW5ha2EsIFRvZGQ6DQo+Pj4+Pj4gWWVzLCBhbmQgSSdt
IHBsdWdnaW5nIHRoZSBob2xlIGluIHRoZSBSRUFETUUgcmlnaHQgbm93LiBIZXJlJ3MgDQo+Pj4+
Pj4gdGhlIHByb3Bvc2VkIHRleHQ6DQo+Pj4+Pj4NCj4+Pj4+PiBBZHZlcnRpc2VtZW50cyBmb3Ig
Mi41RyBhbmQgNUcgb24gdGhlIHg1NTAgd2VyZSB0dXJuZWQgb2ZmIGJ5IA0KPj4+Pj4+IGRlZmF1
bHQgZHVlIHRvIGludGVyb3BlcmFiaWxpdHkgaXNzdWVzIHdpdGggY2VydGFpbiBzd2l0Y2hlcy4g
VG8gDQo+Pj4+Pj4gdHVybiB0aGVtIGJhY2sgb24sIHVzZQ0KPj4+Pj4+DQo+Pj4+Pj4gZXRodG9v
bCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIE4NCj4+Pj4+Pg0KPj4+Pj4+IHdoZXJlIE4gaXMgYSBjb21i
aW5hdGlvbiBvZiB0aGUgZm9sbG93aW5nLg0KPj4+Pj4+DQo+Pj4+Pj4gMTAwYmFzZVRGdWxswqDC
oMKgIDB4MDA4DQo+Pj4+Pj4gMTAwMGJhc2VURnVsbMKgwqAgMHgwMjANCj4+Pj4+PiAyNTAwYmFz
ZVRGdWxswqDCoCAweDgwMDAwMDAwMDAwMA0KPj4+Pj4+IDUwMDBiYXNlVEZ1bGzCoMKgIDB4MTAw
MDAwMDAwMDAwMA0KPj4+Pj4+IDEwMDAwYmFzZVRGdWxswqAgMHgxMDAwDQo+Pj4+Pj4NCj4+Pj4+
PiBGb3IgZXhhbXBsZSwgdG8gdHVybiBvbiBhbGwgbW9kZXM6DQo+Pj4+Pj4gZXRodG9vbCAtcyA8
ZXRoWD4gYWR2ZXJ0aXNlIDB4MTgwMDAwMDAwMTAyOA0KPj4+Pj4+DQo+Pj4+Pj4gRm9yIG1vcmUg
ZGV0YWlscyBwbGVhc2Ugc2VlIHRoZSBldGh0b29sIG1hbiBwYWdlLg0KPj4+Pj4NCj4+Pj4+IFdo
YXQgY29tbWl0IGludHJvZHVjZWQgdGhpcyByZWdyZXNzaW9uLiBQbGVhc2UgYmVhciBpbiBtaW5k
LCB0aGF0IA0KPj4+Pj4gdGhpcyBjb250cmFkaWN0cyBMaW51eOKAmSBuby1yZWdyZXNzaW9uIHBv
bGljeSwgYW5kIHRoZSBjb21taXQgDQo+Pj4+PiBzaG91bGQgdGhlcmVmb3JlIGJlIHJldmVydGVk
IGFzIHNvb24gYXMgcG9zc2libGUuDQo+Pj4+DQo+Pj4+IExvb2tzIGxpa2UgaXQgaXMgYXQgdGhl
IGVuZCBvZiB0aGlzIHBhdGNoLCB0aG91Z2ggdGhlIGRlc2NyaXB0aW9uIA0KPj4+PiBkb2Vzbid0
IG1lbnRpb24gY2hhbmdpbmcgZGVmYXVsdHM6DQo+Pj4+DQo+Pj4+IENvbW1pdCBhMjk2ZDY2NWVh
ZTFlOGVjNjQ0NTY4M2JmYjk5OWM4ODQwNTg0MjZhDQo+Pj4+IEF1dGhvcjogUmFkb3NsYXcgVHls
IDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4NCj4+Pj4gRGF0ZTrCoMKgIEZyaSBKdW4gMjYgMTU6
Mjg6MTQgMjAyMCArMDIwMA0KPj4+Pg0KPj4+PiAgICAgwqDCoMKgIGl4Z2JlOiBBZGQgZXRodG9v
bCBzdXBwb3J0IHRvIGVuYWJsZSAyLjUgYW5kIDUuMCBHYnBzIA0KPj4+PiBzdXBwb3J0DQo+Pj4+
DQo+Pj4+ICAgICDCoMKgwqAgQWRkZWQgZnVsbCBzdXBwb3J0IGZvciBuZXcgdmVyc2lvbiBFdGh0
b29sIEFQSS4gTmV3IEFQSSBhbGxvdyB1c2UNCj4+Pj4gICAgIMKgwqDCoCAyNTAwR2Jhc2UtVCBh
bmQgNTAwMGJhc2UtVCBzdXBwb3J0ZWQgYW5kIGFkdmVydGlzZWQgbGluayBzcGVlZCBtb2Rlcy4N
Cj4+Pj4NCj4+Pj4gICAgIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBSYWRvc2xhdyBUeWwgPHJhZG9z
bGF3eC50eWxAaW50ZWwuY29tPg0KPj4+PiAgICAgwqDCoMKgIFRlc3RlZC1ieTogQW5kcmV3IEJv
d2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPg0KPj4+PiAgICAgwqDCoMKgIFNpZ25lZC1v
ZmYtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4+Pj4NCj4+
Pj4gVGhhbmtzLA0KPj4+PiBCZW4NCj4+DQo+Pg0KPj4gLS0NCj4+IEJlbiBHcmVlYXIgPGdyZWVh
cmJAY2FuZGVsYXRlY2guY29tPg0KPj4gQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8v
d3d3LmNhbmRlbGF0ZWNoLmNvbQ0KPj4NCj4gDQo+IA0KPiAtLQ0KPiBCZW4gR3JlZWFyIDxncmVl
YXJiQGNhbmRlbGF0ZWNoLmNvbT4NCj4gQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8v
d3d3LmNhbmRlbGF0ZWNoLmNvbQ0KPiANCg0KDQotLQ0KQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5k
ZWxhdGVjaC5jb20+DQpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVs
YXRlY2guY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
