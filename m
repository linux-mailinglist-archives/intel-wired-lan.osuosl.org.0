Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61C25E532
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Sep 2020 05:01:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 507BD86D18;
	Sat,  5 Sep 2020 03:01:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nceo1E53dbaR; Sat,  5 Sep 2020 03:01:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A54486C75;
	Sat,  5 Sep 2020 03:01:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D36231BF271
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE99A86B7B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XRwWpUd9wm2p for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Sep 2020 03:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8677C86AE2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Sep 2020 03:01:21 +0000 (UTC)
IronPort-SDR: 4ehG1pDUavYbCOwk/F0LYP6O+s/G+U9HWbVoJVlHlqCHD78yt2KmhrxrK0FffaW5eT2tXkbDdj
 XLd2xUupZpvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="145566589"
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="145566589"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 20:01:20 -0700
IronPort-SDR: sigxMYTlpcYWhley7SKL1ufihV5rbrd0eN3uXznMeNE0nZMUoipn1aad6j/LdvZbPoABHs5w3s
 IMEqcMTln+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,392,1592895600"; d="scan'208";a="503768854"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 04 Sep 2020 20:01:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Sep 2020 20:01:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Sep 2020 20:01:11 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Sep 2020 20:01:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fCujvM2bdHUo6mgSOtu2ZfUCyjEmN1og+x60CbwK3XBWdmi60aY6Q0o349QmzaOsvfGCeX7UrPIpBlFaWL7Jw9xFPW8ZZ0eKq41B2y/ux1EpTjXLRWA6DLfhaS7zlCZcTUwnsWctpqmsEI7Ks8CKIvqom3hH1ExEiHvAn26l5eYquOjqRhfO2pbZeq8rwOV6UIuMcNJtJyiMaRohYcTwjXwYknS1iUCdLz4DEeN7uAnzmkgbYGvx5+HvoeEgZM7ZPFTZEAg+F4eLG3fDgkHdhvU891mWQT5oyMc8x5Jma4UdfaZfJJBCN5Ptdmu9AKp42Qmorujdxm7A2I+093YUsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+9S+cD6VxjIWA6/mztK7pM9jppXUPe1N56UHK8IZ/g=;
 b=EDh7fT6B0vjVZ4YD2q28zgs5MZlCdPC7b0KxUw5yrh/+EgGkM2kJZi9IlJI0dytsFiLI1l32KQdsOwzKaWoq2U9Z0SZq7M5OL5f4ELFDsrMKF/7JXAx8Br4uRPqWA8E+Oo/+cNmJTAF5BqmKGGgLNQ3e3lCAYERf9Yw9/dDLEwdzI01BWLVfqDeu/wI3TfudtjaF8LQ2fWLjtSGH72fLx2ptdW3tN68rs6Wcp+s7mMZQ0bh6XKAEX7UNzqXR9PwI5LZuXJYJcoCWNC89f2rDUSPEKvg4AeTA3CHi0AsKsm5hMtNdtKMeZLnUjI9E4LZqSNoL+A5Vifabn3Ifo3QQ+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y+9S+cD6VxjIWA6/mztK7pM9jppXUPe1N56UHK8IZ/g=;
 b=J27+OE3ONtczqlXReSgEKtsIDHUSjATCT6IRL3Mhgwh2CGAoQ60nSQWUBdpqe2QSniai2ZYYoMQMPEE2ckh8yv51LtH2OecBY4l1M9Fmz+LQM7vI6rhV9osb0cUwiXH5PuEOfeDdsBMx6bIWAfe1MgCA0EGZSdIq6baO0ZNWLnU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4563.namprd11.prod.outlook.com (2603:10b6:5:28e::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.15; Sat, 5 Sep 2020 03:01:08 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3326.025; Sat, 5 Sep 2020
 03:01:08 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 2/3] i40e: use 16B HW
 descriptors instead of 32B
Thread-Index: AQHWetP/FFNZGLuSiEe7DGsLu22ZcalZa8sQ
Date: Sat, 5 Sep 2020 03:01:08 +0000
Message-ID: <DM6PR11MB2890B2527FB513C92041C152BC2A0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200825113556.18342-1-bjorn.topel@gmail.com>
 <20200825113556.18342-3-bjorn.topel@gmail.com>
In-Reply-To: <20200825113556.18342-3-bjorn.topel@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a3d2e33-40c0-40bf-e58e-08d85147f011
x-ms-traffictypediagnostic: DM6PR11MB4563:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4563852231F8DE874BC8701BBC2A0@DM6PR11MB4563.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:172;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HGCuLy4aVD5KtFzoJQocuUlG0rewjv/nMNhk9BJZKhwCa14peaYauEesJ3SgMQdFPy8MxzagZJgwT4U1+fjHOn/YfCWS2oywtADwxrsUYuS0H3RgBvT/uReAI+CHiudI6su0i7Pq72hRGkkqYIm5sojCK0eRHeABtBKFeTzi51JH6IuUNT3MYJO32+SbCoqJRel+Vdz/mwKaAJkVws6+/NM1fOJl4Ni6AZmezd/gCTglHwy9QEIvik/IBaIGAedIPNrfJEDlfFBVGHxKPw9KOXBi1jwj7E8XKWp+7JDwaSoRYOUUY9cS5teWibTp4DQe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(26005)(53546011)(6506007)(2906002)(66556008)(66476007)(66946007)(64756008)(76116006)(71200400001)(66446008)(33656002)(83380400001)(186003)(7696005)(86362001)(316002)(5660300002)(110136005)(54906003)(4326008)(8676002)(52536014)(478600001)(8936002)(55016002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: KxZWqE/+sKVw71ai89f+OfWzJpa/i2JYU4UE3ACJr0pvipjb8pdTeem4+6lDdtGg+ualrgUBemyV/0utmQJL1Xj1F/A5ah3x8+1S7+GPt39Sl6lYs4Xk2rdrkt/l90yo2MVPZbFDa+1t0cIn2gQbtNG4UIcZPjjzDSgg48N5W/CqJFtti67sIs1qJPkCZQzex2yN4SBxe3IA2YkfP6buMtJoobhbXJlNXLgd3cJ5l44wh0xkj+Y2Wo5PPtZBm1DJuxfQ46aReml0aZhybQdrkTi5cPPZ9S+q8w5QacMdt8TdazNF3ujp4MqOca5KwK56LXCKoe7Pck/jhDVLCu8MPbBCNHPErJ7g8eixg4qPTtf6FeCj480t3G3L7VMgNv50fsjRsrwj5po9n6ZF0FkVpiE9M5zJzkT/MFFaihTVObwmhapIqF7jd3reya1bmpV7ZaWcgMMNs3BobNUB0fwLOC6Us9rq8rnSIFkTuI6m75cVmWoWscbA+1J2Q0KH4DiUKWDkbII+fUeC3J0l5I/5zWf6l+lNtQuCdB+BSyPDxOEgEy/ZPDFMAFpYmoyH4+NtvIVP/jcVWswKe5CU4lsA7ocwWjGUn+j5x/cmVnt5DtMDY7rA8yX5DLp7N1wONlPdOIjrQoGoMb0s2LxBBeSrNw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a3d2e33-40c0-40bf-e58e-08d85147f011
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2020 03:01:08.3388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NV9uFfN8YWxMbHw+f5MHQs2F+xHb5+7PpuwWgvO1oHwP49mpfnBSW/nM6MlPNaXSHhRFjY920KGbxwKtN1CqTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] i40e: use 16B HW
 descriptors instead of 32B
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5v
cmc+IE9uIEJlaGFsZiBPZg0KPiBCasO2cm4gVMO2cGVsDQo+IFNlbnQ6IFR1ZXNkYXksIEF1Z3Vz
dCAyNSwgMjAyMCA0OjM2IEFNDQo+IFRvOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9y
Zw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgYnBmQHZnZXIua2VybmVsLm9yZzsgVG9w
ZWwsIEJqb3JuDQo+IDxiam9ybi50b3BlbEBpbnRlbC5jb20+OyBLYXJsc3NvbiwgTWFnbnVzIDxt
YWdudXMua2FybHNzb25AaW50ZWwuY29tPjsNCj4ga3ViYUBrZXJuZWwub3JnDQo+IFN1YmplY3Q6
IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQtbmV4dCB2MiAyLzNdIGk0MGU6IHVzZSAxNkIg
SFcNCj4gZGVzY3JpcHRvcnMgaW5zdGVhZCBvZiAzMkINCj4gDQo+IEZyb206IEJqw7ZybiBUw7Zw
ZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4NCj4gDQo+IFRoZSBpNDBlIE5JQyBzdXBwb3J0cyB0
d28gZmxhdm9ycyBvZiBIVyBkZXNjcmlwdG9ycywgMTYgYW5kIDMyDQo+IGJ5dGUuIFRoZSBsYXR0
ZXIgaGFzLCBvYnZpb3VzbHksIHJvb20gZm9yIG1vcmUgb2ZmbG9hZGluZw0KPiBpbmZvcm1hdGlv
bi4gSG93ZXZlciwgdGhlIG9ubHkgZmllbGRzIG9mIHRoZSAzMkIgSFcgZGVzY3JpcHRvciB0aGF0
IGlzDQo+IGJlaW5nIHVzZWQgYnkgdGhlIGRyaXZlciwgaXMgYWxzbyBhdmFpbGFibGUgaW4gdGhl
IDE2QiBkZXNjcmlwdG9yLg0KPiANCj4gSW4gb3RoZXIgd29yZHM7IFJlYWRpbmcgYW5kIHdyaXRp
bmcgMzIgYnl0ZXMgaW5zdGVhZCBvZiAxNiBieXRlIGlzIGENCj4gd2FzdGUgb2YgYnVzIGJhbmR3
aWR0aC4NCj4gDQo+IFRoaXMgY29tbWl0IHN0YXJ0cyB1c2luZyAxNiBieXRlIGRlc2NyaXB0b3Jz
IGluc3RlYWQgb2YgMzIgYnl0ZQ0KPiBkZXNjcmlwdG9ycy4NCj4gDQo+IEZvciBBRl9YRFAgdGhl
IHJ4X2Ryb3AgYmVuY2htYXJrIHdhcyBpbXByb3ZlZCBieSAyJS4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGUuaCAgICAgICAgIHwgIDIgKy0NCj4gIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9kZWJ1Z2ZzLmMgfCAxMCArKysrLS0t
LS0tDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jICAgIHwg
IDQgKystLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3RyYWNlLmgg
ICB8ICA2ICsrKy0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4
cnguYyAgICB8ICA2ICsrKy0tLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX3R4cnguaCAgICB8ICAyICstDQo+ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfdHlwZS5oICAgIHwgIDUgKysrKy0NCj4gIDcgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0
aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KVGVzdGVkLWJ5OiBBYXJvbiBCcm93biA8YWFy
b24uZi5icm93bkBpbnRlbC5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxh
bkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLXdpcmVkLWxhbgo=
