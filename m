Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A4287222A5E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 50F25204A5;
	Thu, 16 Jul 2020 17:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nhGQ1UvMWRxb; Thu, 16 Jul 2020 17:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59A78232D7;
	Thu, 16 Jul 2020 17:48:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F1FE1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A5A389ABF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8eSDxkMpM9b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:48:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21AD489A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:48:10 +0000 (UTC)
IronPort-SDR: tcfSRrdnxrshZAmfFkEp6C299slWkCyiUzXdsdyN9cbSvqb9mH+YjTZ7ZpmTX7USg23hUfcUwA
 hArgavmI7YIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="234310557"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="234310557"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:48:09 -0700
IronPort-SDR: 74Z2lvrsKOj/NzgKRS22qo9MTRNrQscjOZcisWtPDFrM/dL84am7uN8EDsFFh5KiyaqLRPuamH
 r6R86HmO1E6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="486691611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jul 2020 10:48:09 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Jul 2020 10:48:09 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 16 Jul 2020 10:48:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:48:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmkSaozpniswEOZ7BwzGtt3QXMyBMq/dNPXbwNMyBihgdT592f3bblgHb9QQPq4WM0Jo3zNTh4S6WUQ8U0BWITatnD0zY/eCtUmrf8RjN1g8mCazhNWu/wiS12bWznFVL5z9SY//XVEWVCs9Ru/SdYaIQTBl1V+wu6Zz3LMP00EYfE+Vlvoe2rogjmczWoD0RlWaKkJc6biAuZMvsXngTuh0+Yo/wYOjcUvVOe7USe/I2QRabQ/zDiq79g4qBSPtUY3cpoJgGdrqSpVGCZQvb+ER/NDkG+G3qAYpAMeFqBhuTo/lD7I/zrwOUBLwhZiTfWeGtKRhQfeEwQeTYVvABA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9LOYypw9X4DMrTK67GSdlLPGEhfNVRAEcCRNQh8/iQ8=;
 b=lbdpAJnEyH/JMPdtCVfvHPSNK2r4W4Jx3lWy8KXrCuI8gN3Zcg7U28GtW/73RfzIAknDGvmSLqPU53qNvKIlos8YEvr1YeNovE3Ug8I55g8TecXfGrQ7Wn8/mAEYZP8YjsW8j1cdP/74xU1JKyctpaGE80M/m06FrByv1xDCEt2AVktJuM7du+sCNQVtEduAKMvCgkYLzZbnmkIOiFFdGkIKwYQm9FDbSsi8w5hTIbfBLeEYs9SzI6SwMa6fhhNCUlIHEsA1RuF7k+iA5Imy3icBDbHY4jge/qiEybwUew9ieQ30C8OZvN+6y/OW7gEbgWw3jIMEgmgM4K3Vkqps8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9LOYypw9X4DMrTK67GSdlLPGEhfNVRAEcCRNQh8/iQ8=;
 b=soEh/okTUP6Ew3U11tk4RQPSeDjWNnb1jTRfqz9mGfGzq7pCjQTYYY/LMcrV+XDrTk4rr3Y7Y6ciDpuLiFRY5Js9Rrz2AHlYrw7k8TnQ3k5ulnBAg87LC+gquBY5zaclV7XyRCOaRyif1pZx/DyI69ffRPfNl2om3EISOLSAZ/4=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1332.namprd11.prod.outlook.com
 (2603:10b6:404:48::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 16 Jul
 2020 17:48:03 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:48:03 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 15/15] ice: fix unused parameter
 warning
Thread-Index: AQHWWVg8bNLG6JDj10Or/kWgsYj5o6kKf74Q
Date: Thu, 16 Jul 2020 17:48:03 +0000
Message-ID: <BN6PR1101MB21455578554800942CF46D568C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9649e934-3b64-46e5-8be3-08d829b063ab
x-ms-traffictypediagnostic: BN6PR11MB1332:
x-microsoft-antispam-prvs: <BN6PR11MB1332629281996450E12E13038C7F0@BN6PR11MB1332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:101;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: buKnvtp7CbtquFQsxGWd1WkwPg0dy6hme2dKm6KUDIcqadUEDSrbk2HthfNSOdZXhWpMJCapgX/rVdFqm+awDGxgD2eogSxlPDox7Ig4BoDceHQheoev/KlV7IWR28W8ZsBDjTp6hk3g9vTgqcKhDZKCGf3xWvein1T/oFxgloqTQ6MNRhEtYCUOLPVeZvY1hTwDKrZleVG/9/n3kWAN6cRz6GBH056K6C0MhJS2YYqBS0lpQUIcc/K3L7O/uFzNqbOj21PyLmP1j9FG+MbfzLbC3+FHKjOSJlqBabC2My0T4vv8BtC/RXn51fj8ri0Lpz6Hg5/6rpRU2QRrs+dqPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(8676002)(8936002)(66476007)(33656002)(9686003)(5660300002)(26005)(52536014)(66446008)(66556008)(316002)(53546011)(4744005)(55016002)(6506007)(83380400001)(64756008)(186003)(71200400001)(86362001)(6916009)(2906002)(478600001)(66946007)(76116006)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: cGFlUcdkEkqiJ8wnWN+MKfw15Lrjvg/S7UhTle0jFmyF+xsknyxM1faSFaOIPNdMpLWOKYeanmx9QokhooN9FuIj0q+m0wrQ57sGsg4M5vhV2Am5tQVfIGplFaTOyVZbSjbkMsyCYs/ypJp06lbzfzaPCZV2n1KcYGO3JrhMXIjlATO9I8bOJQYO8CBYi8wmE+59bgZSp/mrBJgJzM9VbFh+HcYTdz7B6ZjYS7qEJKZlkoiyao4yL5ae2dN9TA3mj7JhNiWKl/MakY1IYsEBwXd31IcUKsZkNwGl8iIB1HWHQFi51Wnx/2bzZG+AWwYbYkxP3gntIzxIZ8YdAMa7G2pFD+ZYPpIvkpfiwD8QXduPHm5YExzeubvYnGSttAF1Sk84hWpi0qFUTOGpemjt4iDv5aqr/1nNz/1P5tpqqD5FUebGo9RrIEnwK9Z1tzib7AUr1lxSsubRwMlmAJho3B62RHuX77hOAeIcfPUZ4s4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9649e934-3b64-46e5-8be3-08d829b063ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:48:03.5585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: evHGHOTDefw7sqItk+gTYaCGxPtU2ecjXJAjRRmCQyG9cpg0ifVkXAxgE1PuxRWxBiPM9VRilNy3ShkOkijxO000fywrcSRNgjr1dLof7Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 15/15] ice: fix unused parameter
 warning
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
dXllbg0KPiBTZW50OiBNb25kYXksIEp1bHkgMTMsIDIwMjAgMTo1MyBQTQ0KPiBUbzogaW50ZWwt
d2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0g
W1BBVENIIFM1MCAxNS8xNV0gaWNlOiBmaXggdW51c2VkIHBhcmFtZXRlcg0KPiB3YXJuaW5nDQo+
IA0KPiBEZXBlbmRpbmcgb24gUEFHRV9TSVpFLCB0aGUgZm9sbG93aW5nIHVudXNlZCBwYXJhbWV0
ZXIgd2FybmluZyBjYW4gYmUNCj4gcmVwb3J0ZWQ6DQo+IA0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3R4cnguYzogSW4gZnVuY3Rpb24NCj4g4oCYaWNlX3J4X2ZyYW1lX3Ry
dWVzaXpl4oCZOg0KPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYzo1
MTM6MjE6IHdhcm5pbmc6IHVudXNlZA0KPiBwYXJhbWV0ZXIg4oCYc2l6ZeKAmSBbLVd1bnVzZWQt
cGFyYW1ldGVyXQ0KPiAgICAgICAgIHVuc2lnbmVkIGludCBzaXplKQ0KPiANCj4gVGhlICdzaXpl
JyB2YXJpYWJsZSBpcyB1c2VkIG9ubHkgd2hlbiBQQUdFX1NJWkUgPj0gODE5Mi4gQWRkDQo+IF9f
bWF5YmVfdW51c2VkIHRvIHRvIHJlbW92ZSB0aGUgd2FybmluZy4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8IDQgKystLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KVGVzdGVkLWJ5
OiBBbmRyZXcgQm93ZXJzIDxhbmRyZXd4LmJvd2Vyc0BpbnRlbC5jb20+DQoNCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
