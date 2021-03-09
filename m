Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0035433320D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Mar 2021 00:49:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CD6F6F5FF;
	Tue,  9 Mar 2021 23:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jOma2WOZ3xWI; Tue,  9 Mar 2021 23:49:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F3F36F5FE;
	Tue,  9 Mar 2021 23:49:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8E11BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:49:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45E7F605B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBYi07bhOvEI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Mar 2021 23:49:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0485E6F5FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Mar 2021 23:49:34 +0000 (UTC)
IronPort-SDR: LuxKVGDARxMKBi3bIM8yH7LCt/uD5601q4c3Zo4e+mMlu84mpDQ5HbKQwjhI4++tKypVbctJ+u
 gp5wD79b+Xzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="188387796"
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="188387796"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2021 15:49:33 -0800
IronPort-SDR: FWGor+vBHJubH6Wmo6TLnT7lnpv31/s1UFifVWPHcIwpMtgcAFIKEOKuGD1iJsVx0WdYBntInj
 xjsfiTNbB37A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,236,1610438400"; d="scan'208";a="509455948"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2021 15:49:33 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:49:33 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 9 Mar 2021 15:49:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 9 Mar 2021 15:49:33 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 9 Mar 2021 15:49:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X+p9EPLHqKOrVhyrNx3OJS1SK50jhdPFjy5TAWVr7pFmR3h7TnWJCMvzTfSQ/J4mJBJ11jXR5OrDvgPklQasq1nblwjRqY9tT8jPTG/x76x2OvASa15jfaCdu1g5Guju1knK8dADtChE2/nLuh9grxZWNWPlIJwno8eA640m/Rk0an7PedMSyZq6YfRC8SnsWw7rDGIZBmuwxMbSOjC3qr0bDrxz3TuZfLhd6yleTVUhKmHriSA0X9wJMoSaAk7ob1E32X2HSqrfjWbEBP1LEsEfyhQth5zeypbGRjDsUu7nn58Makhv585gxQyZGL6ITdOp1YQ0m8LuKDDhA/JB2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAodp6Y2E9PxSvduU0zodmIFnco4S89E1u5iH3v0gvk=;
 b=bK6wFtQKAjjgXaf5/oj43wb04jXTbpwgI8jj84DN59gxzuhoqL8irlnViYzyTNcG3Tq092M9fcbbBfb+v4TYrKzdF9T5fP4m31XNmnBapys26jVkXOpg+NOueuLXKJeFm1GnkBMOSwoks4uV31YNRT2xJiVKXH79M3bpXq+feI+/9+yuoPVy2Y1oNxjfub3meBAbSfDJ6xMDATIQZMTd1CSo27GGM9LIlvLoYCtp4MSd8X0w4DXt+uTjJMSHBYMfm3+zk5bcR3nG3f9o9kzfK3Y1CRwp0NXtofXul1SEWkd3f0wwzbURQexkfJG48eGxmtDwYO/AnGSzy87vmXVT2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QAodp6Y2E9PxSvduU0zodmIFnco4S89E1u5iH3v0gvk=;
 b=mtNvLBH+ZaQrdDE8pxhjRWiJiIaAMeEGRvLgdimtBJdo7prbPajFXI1LppBswZLaSJdSd2p7ucTl8TQSadKNBQkOs6nlr9FDgQBdWM70e6lUt6WCCjyTKYgqb2fl7yRpwMfMbbfV3MdnIDo32xYdcKRpWUnlp6EPABZADd7X2Lc=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Tue, 9 Mar
 2021 23:49:32 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 23:49:32 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net 10/13] ice: Fix for dereference of
 NULL pointer
Thread-Index: AQHXDIaa5PbzOhoe2UKbG+HZx3JL5ap8ZHpA
Date: Tue, 9 Mar 2021 23:49:32 +0000
Message-ID: <CO1PR11MB51059383037E6B0CB0DA18D9FA929@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
 <20210226211932.46683-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210226211932.46683-10-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 78be4fa1-810f-4dfd-1598-08d8e355fcaf
x-ms-traffictypediagnostic: CO1PR11MB5042:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5042CED70DF47295B075B1EBFA929@CO1PR11MB5042.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y5vo1LkkZlE1n8GSV6GYwtuCxQpZcvEmZsUInHBixkTCpmOgB4Y1grSAqWTWAIC2SdR8oiQmcx74kH/6vj0hDC9I5z3op/129UYQQ/NX9A6gn7VOkPJ6jVbOXu8jDe6EtqH6HYq6my1YxiWojcnYe+iT6fwdHMER1mysibMNslcAFKU+w8Cib0pjGerbmUk9sOia7Gesrpp7NBN13no1N+T20zNznNBGcABOFNkZf71A5KVhE4TZjo8DX9acfDYFrz1Qiwn5q1nkLOQ4/HDmD78JrpjFTzcXHL08/DShg9/a3CGNu6sRDlkAjduhpR28FZH3vJdyzZyjv8/yAQ+QRu8FHE4/LNyc6XAKMy+kNtJt6I5Ze4aZcdIR+dsBrgcJEZQ2GFCtAcuQk5a5hdRrVDmv3TItgDyLQ5JCrYHaWGdPOiYDfWkOar/Lsdk5DykAgvEZU4PCP9u/PvOVqMXNHRfWUqy/eBcQP89O53G1VUpYDTvOeDyAHOiPLFrovoH7TrnPnB/5H65JoksPFgFYIQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(396003)(376002)(39860400002)(136003)(52536014)(26005)(478600001)(66446008)(83380400001)(66476007)(64756008)(8936002)(8676002)(66556008)(186003)(6506007)(53546011)(7696005)(66946007)(76116006)(71200400001)(110136005)(2906002)(86362001)(33656002)(316002)(4744005)(9686003)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?STg0bG9QbHpNWDh0dHpTajFocExVcE1lb1NRdGVDSUlPTkxQei9iNjl1UFBy?=
 =?utf-8?B?QXVOVnAwUnRBNm05TjE3eVNrcmFjbnZtUVRMTVpMTXdaS0x2b0J0b21TMDJV?=
 =?utf-8?B?UWo5OEExRkI2UC92b0JGcUFvZGFFcVZtSkUvOXRlRi9BelBGMCtlR2NGTlFw?=
 =?utf-8?B?MmpINnZCeGIrR2VYNEphRkkwYm1xc2U3bkdXNkhBVk13Y2cwSDB4NG9lMFds?=
 =?utf-8?B?dkdqTjNJSnRMaTAvMEY3bGh5d1JnSWg1OHowRS9iMDMzNy9VQU5ySWtMRGQw?=
 =?utf-8?B?dDZBNzVHUVQ0aXB1alk4OHQ1NjNMVEdXUDZEYkNkREl5MHpWemtYWjlZOU9S?=
 =?utf-8?B?djFEWnh5QUpXOHNoaWVyZ2dITERCMDBGellHNUJEV1A5U3lQU2RTSE0xblRK?=
 =?utf-8?B?eEN1M3Blc3MvR21MaG9pN1FaZFBJc2h1ZVJqQ2FyOVEwOHE0aGYzYVp5ZFpr?=
 =?utf-8?B?M093bGNOVVRkNjNYWDljMmkxRzZUZHoxQ2VCRXh1ZEllSWdiSDExSDNwM1dy?=
 =?utf-8?B?MmhYd2pGaDB0cjI2dVZwNnRsUlZnUFoxQ3BVWXJxWi9xSU5udHNvaFN3UWdv?=
 =?utf-8?B?dzNRZU1PWEg2SXlydUlhZUFJUXNtWjdVRlN4dDJqejgrdEJEa3ZwcHU5K3R1?=
 =?utf-8?B?bjBiUWNiOFJ6Z1VDQno5cGpvS1VudTN6WWNOeUt3MUVFL1R1RThxeHdGSkdo?=
 =?utf-8?B?RDJmQ0tWc3QzQzNVNkNockYxWXJTcUxINGZqRTljRTQ2MGxISzlvb3crU3ZT?=
 =?utf-8?B?ZlJZMmhQYytYQVVxYWhZZTMrWTZJZHBTZXQyamtNc0FteVBxZUNER2pJVFhx?=
 =?utf-8?B?ZHl1WGgyTkZQUEt3NElTelM1T1UxZGhWM2htRFN5UkNQR05heTJZY1dCVWpR?=
 =?utf-8?B?WUg1YlFGazZhYXFxeVBoc0U3VkhVZkdtNDlBZEt6SG1OU0VsYkpjMmZWbVBK?=
 =?utf-8?B?bnFmVm52c2d4VW96anF0NHFXUlhBd3VXektCM1dzdXl6NWpSWGEzeEtwclpO?=
 =?utf-8?B?V2VEcS84MVo2OENpM0dRSmg5MThGa2l1dVJQR0tuMUtlTis2Y1E1OEtTbFp2?=
 =?utf-8?B?TEJ2allxMEVsRDhtcjVRUExpRkc3ZVpxVWN1RTNQWVpaVDdSdlNadnYybEh2?=
 =?utf-8?B?K2ROZzBZb205bGNHZWorWkpaOU16L3V3N2IwVzNkZTFNQTA2Rnc1U2pUWjVZ?=
 =?utf-8?B?TWJaZ0NVVCs4NFJUTm83K3M2Y3BKMEhKME9Od2FDZmdIelEraVBXWTI3a0xU?=
 =?utf-8?B?NTgzTjFGVUo3S1ZZMEdlVWxGYmovRDczSkh6dVF0RE5pZ05mVE16VmFGUUxE?=
 =?utf-8?B?ZUFBbjJLQm9nTkRtSi9yRmVvRGpiTEVEVDlzZlczNXdjZTVpOHIrb3NlWlI3?=
 =?utf-8?B?SS9BdlRWU09CM0VWeE9TSFR5bjB5NkxCSjRyS1RucjRtU2ZPalNxMnV6enY1?=
 =?utf-8?B?UW9WdjlyNUxPSjlSUTdCWXE3Rkx0MFZDcU15TlZXSEVLKzFXaWZDUFNGVWFr?=
 =?utf-8?B?ODZBdzNOd1JyS21rbGFId0xSb09MZ2sxZS80Tzdpd3dnRWVIM3FNdkx3YzZp?=
 =?utf-8?B?QW1Wb0VNUG92R2U0a1A4NTc4eEptU1BKcElUWFd0SGptM3g4Z2ZWOStNbE1u?=
 =?utf-8?B?TlpNUzBONlVTNExIMDJtR0lHNDRuMTluOXZKNXovN3c3V1lpNnZWZzBjMVZI?=
 =?utf-8?B?ZksxdzU1R3ZJc3ZxL0cyc1dLSW9UYWNzekZvZWsxSmJKZ1o4dTcrSUNna2pH?=
 =?utf-8?Q?1feSfUSRiV4pKNhFEvCxlTaxQISInAT0HrE27AH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78be4fa1-810f-4dfd-1598-08d8e355fcaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2021 23:49:32.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IeGShBXdeA8p1Zj5LmvYzB3oEjE3xSp9Hb4z4Bzr2XBE78vc8kRCl6HXlzYdPnbG2oBsoPw/HO3FcmdDtn9ymLN+c2Nd18LoeyXQ8061wpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5042
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net 10/13] ice: Fix for dereference of
 NULL pointer
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBUb255IE5n
dXllbg0KPiBTZW50OiBGcmlkYXksIEZlYnJ1YXJ5IDI2LCAyMDIxIDE6MTkgUE0NCj4gVG86IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1s
YW5dIFtQQVRDSCBuZXQgMTAvMTNdIGljZTogRml4IGZvciBkZXJlZmVyZW5jZSBvZiBOVUxMDQo+
IHBvaW50ZXINCj4gDQo+IEZyb206IEphY2VrIEJ1xYJhdGVrIDxqYWNla3guYnVsYXRla0BpbnRl
bC5jb20+DQo+IA0KPiBBZGQgaGFuZGxpbmcgb2YgYWxsb2NhdGlvbiBmYXVsdCBmb3IgaWNlX3Zz
aV9saXN0X21hcF9pbmZvLg0KPiANCj4gQWxzbyAqZmkgc2hvdWxkIG5vdCBiZSBOVUxMIHBvaW50
ZXIsIGl0IGlzIGEgcmVmZXJlbmNlIHRvIHJhdyBkYXRhIGZpZWxkLCBzbw0KPiByZW1vdmUgdGhp
cyB2YXJpYWJsZSBhbmQgdXNlIHRoZSByZWZlcmVuY2UgZGlyZWN0bHkuDQo+IA0KPiBGaXhlczog
OWRhZjgyMDhkZDRkICgiaWNlOiBBZGQgc3VwcG9ydCBmb3Igc3dpdGNoIGZpbHRlciBwcm9ncmFt
bWluZyIpDQo+IFNpZ25lZC1vZmYtYnk6IEphY2VrIEJ1xYJhdGVrIDxqYWNla3guYnVsYXRla0Bp
bnRlbC5jb20+DQo+IENvLWRldmVsb3BlZC1ieTogSGFpeXVlIFdhbmcgPGhhaXl1ZS53YW5nQGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSGFpeXVlIFdhbmcgPGhhaXl1ZS53YW5nQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVG9ueSBOZ3V5ZW4gPGFudGhvbnkubC5uZ3V5ZW5AaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dp
dGNoLmMgfCAxMiArKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pDQoNClRlc3RlZC1ieTogVG9ueSBCcmVsaW5za2kgPHRvbnl4LmJy
ZWxpbnNraUBpbnRlbC5jb20+IEEgQ29udGluZ2VudCBXb3JrZXIgYXQgSW50ZWwNCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
