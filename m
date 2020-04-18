Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13481AE9B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Apr 2020 05:58:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2034E8826A;
	Sat, 18 Apr 2020 03:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euZsjellSjOv; Sat, 18 Apr 2020 03:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 700D588296;
	Sat, 18 Apr 2020 03:58:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B40F11BF337
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2020 03:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADFB586591
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2020 03:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mzvR4n4bkiZ1 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Apr 2020 03:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B55478655C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Apr 2020 03:58:15 +0000 (UTC)
IronPort-SDR: aDSwPZE7Z7d17zFcdmmNuI81PTum/592v+Saon9G0cNa72Xy7msARMytHisfF3FTG6wm40P3VT
 xd36BWdvkZUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 20:58:15 -0700
IronPort-SDR: +jHpp1pakOqmGRFjC1jvDHtJPUzolTyYNeqtfomXFRgj8cvAwdgnlwTKSBkYSf9baTFKAhvin2
 b6Wy+HphVbxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,397,1580803200"; d="scan'208";a="278582214"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 17 Apr 2020 20:58:15 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 20:58:14 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx117.amr.corp.intel.com (10.18.116.17) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 20:58:14 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.52) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 17 Apr 2020 20:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a792p8/zDAxOOQ24HoF0slHiekdCO1zE4Dln3qQqUFnXfgcHM2Qun0IV3RWg+YpJRQ4JzYyZ//WEJQ8T8nqNH1EwobP2zxxvT2wMPZq/91S+t5p7VTDdKwJ/DpA3w1T7oevuLtEmYYWDfmj3qODm/keT7UzKZXr2c3ECqe4jSC+xoxZKSPJwfX6kTosNwCEiSjiG0Vc4q0J0pbmPUkcS59p8Y3wh2zZttmSXGF9mPxIbT306qwG1UVQKLziVfL68kTl9WEBXmsXJNgL2Qx1e6a+Bo/5IlwUk46vZMdwPA5bBVkXRNc/rpdvK4mNL1fMYqg0+lmkgtpR1qkjBrjDeIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHEvQMJvk6YvvtSPE4QlTjFUR6uFuOx93OuiXpimp3s=;
 b=Gs0MnFJDIG6H4KUiUj879qkLjAgdTRb8OtjVJLf8e1+Ay2N3qivXeH65UylGlKyprpAgP6S/fK1AZP4RC4bXANgB1NBtfYfzqFoieynNuI+AkwWfS+nuwjDrN46/1E6yFdmRXY+bNLeij6QF8GBgZeY4qbyeOsD1iFuFOheDa5c8bEFVzPQutBJ+E85uq1igq5ULGYdWNREf9HPLvRjZQ3WNkg/X35DYh3d0vz+VFWSaCHUYTfAYQ8hNFQ2IfrIwVw+2XY7GUkWEXcHytl/lDvyzT9q0VhJLd7VK0+/4RQsQ3KT3Qn03v84G+Gz4oQJsyLMZPB4cpLGjRYtVtzsaEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHEvQMJvk6YvvtSPE4QlTjFUR6uFuOx93OuiXpimp3s=;
 b=w3XBRKenyhQZwLYQP+7TlG1lNyPxB+6BnhP8QRwHHtaYrVhscPc0GmRzOfmcmowsTTdmGasgk9GiwQucwaVRqhvdKw5QoTJ5+Q1hnSD83S8KagAQALPwADvzgB6gXgKOSe99KRM/v/7qlHeTDl+kEvhv3Qx31ObjPcWq6Ij8aXI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3434.namprd11.prod.outlook.com (2603:10b6:5:70::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.17; Sat, 18 Apr 2020 03:58:12 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2900.030; Sat, 18 Apr 2020
 03:58:12 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Andrew Melnichenko <andrew@daynix.com>, Alexander Duyck
 <alexander.duyck@gmail.com>
Thread-Topic: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
Thread-Index: AQHWEDeFXwmLRSXRp0C6JleDoG3vl6h785IAgABV5YCAAOZjAIABGmBQ
Date: Sat, 18 Apr 2020 03:58:12 +0000
Message-ID: <DM6PR11MB28909C8289E3941459165C3CBCD60@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
 <CAKgT0Uc2w6gKGsUMrzDoTtM237DjVnQrUGhi+jARMKBcDBJu+g@mail.gmail.com>
 <CABcq3pHBpCvNgZ3gw66-Lp+tKMPrKq8LN9M8r09_dFGOHymA5g@mail.gmail.com>
In-Reply-To: <CABcq3pHBpCvNgZ3gw66-Lp+tKMPrKq8LN9M8r09_dFGOHymA5g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 491b22a4-3590-4888-c0b1-08d7e34cb731
x-ms-traffictypediagnostic: DM6PR11MB3434:
x-microsoft-antispam-prvs: <DM6PR11MB3434828C5DB5A9F3B4127BB8BCD60@DM6PR11MB3434.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0377802854
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(39860400002)(136003)(346002)(376002)(366004)(396003)(71200400001)(2906002)(81156014)(76116006)(66946007)(64756008)(66446008)(66556008)(66476007)(8676002)(8936002)(186003)(86362001)(26005)(5660300002)(110136005)(4326008)(33656002)(316002)(9686003)(55016002)(6506007)(966005)(53546011)(478600001)(7696005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IsfYFID3s3vh48j5SBGowLDq2z7WYH5244QjqyRW3MwknvlaMR7LfgtQnU8ESj29Pevq9d91GeXxQEPcNcvp7hk5ndTLWC98DwG/2bukJVQF+L2mGTgx8gMXpcoPswd+OzISxlm/4CnR+dHR/xKLmgZ8sm98fwKVGkA7RtL5piGXzhr8VEI/JrgOlVZqZKX191hWpCjT4mcqQSIouItSL8kplauMOtL7Kh+3Qs/2NshLQ7GOwRjn9025KjQTMBtoi4yEeOw43gzfgoRl1ylohToKur+KVjOTWTjUYjLVbWmhM6Lr55Jd7Fd/XftsueRkk9NLHgDUX837SSl/75skV/DOv849Uo5wsnZ6YrHoNKMMdkfmVYZEoQtZTtSLD93iGbKSFd6RI7golzSC6Fc/8O9w5Pxu2uPY1fOi5xFVDuoB65bz9n8oWbKt6skFCMOO78u0ZA1qQZ1B49wJHjBbAaFeii191r9KoBur0ED26R49IQCAsRnwbJRYoad70QgQtdxLqv2/UNlP2pV/mW/s6Q==
x-ms-exchange-antispam-messagedata: qYYbueoFGvr9iurUfc35sN5A2enPUWkYSXqwjdTjGTzP2A0bgEp2STGmKtSQVe7Nu8of1WQB/s8UhIAK5KhTV+NXgHpA0wIamA9XQ1ktfEFGCkMpcmBdUcO9w72PHgu3ojWvKvrXjBTghOefgzaj3w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 491b22a4-3590-4888-c0b1-08d7e34cb731
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2020 03:58:12.4126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KgxoNuwC/i/oqK47IL8X6F72NHzhXeQsYx9hYTmFW10mZ6b3ok2SSPdil2QUhXGAdnY4fvuFWCv5P5L0Y+itNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3434
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
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

DQoNCkZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3Ns
Lm9yZz4gT24gQmVoYWxmIE9mIEFuZHJldyBNZWxuaWNoZW5rbw0KU2VudDogRnJpZGF5LCBBcHJp
bCAxNywgMjAyMCA0OjA2IEFNDQpUbzogQWxleGFuZGVyIER1eWNrIDxhbGV4YW5kZXIuZHV5Y2tA
Z21haWwuY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQpTdWJqZWN0
OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gUGxzIHByb3ZpZGUgc29tZSBhZHZpY2UgLSBlMTAwMGUg
TGludXggbGluayBkb3duDQoNCkRlZmluaXRlbHkgLSBMU0MgZGV0ZWN0ZWQgYnkgd2F0Y2hkb2cu
U2hvdWxkIEkgbG9vayBtb3JlIHRoZSBkcml2ZXI/DQrCoERvZXMgdGhpcyB3YXRjaGRvZyB3b3Jr
IGR1cmluZyBsaW5rIHVwIHRvIGRldGVjdCBsaW5rIGRvd24/DQoNClBsZWFzZSwgdHJ5IHdvcmsg
d2l0aCBsYXRlc3Qgc3RhYmxlIHZlcnNpb24gZnJvbSBodHRwOi8va2VybmVsLm9yZy4gKGFueSAN
CnJlc3RyaWN0aW9ucz8pDQpJJ3ZlIGNoZWNrZWQgdGhlIGlzc3VlIG9uIDQuMTggYW5kIDUuNS42
Lg0KDQpXaGF0IGRvIHlvdSBtZWFuIHRoYXQgUUVNVSBjYW5ub3QgcmFpc2UgTFNDIGludGVycnVw
dHM/DQpJbnRlcnJ1cHQgcGVuZGluZyBoYXNuJ3QgYmVlbiBjbGVhcmVkLCBzbyBpdCBjYW4ndCBi
ZSByYWlzZWQgYWdhaW4uDQoNCklmIHlvdSBjb3VsZCBpbmNsdWRlIHRoZSBjb2RlIGZvcm0geW91
ciAiZml4IiANCk9rLiANCg0KDQpPbiBGcmksIEFwciAxNywgMjAyMCBhdCAxMjoyMSBBTSBBbGV4
YW5kZXIgRHV5Y2sgPG1haWx0bzphbGV4YW5kZXIuZHV5Y2tAZ21haWwuY29tPiB3cm90ZToNCk9u
IFRodSwgQXByIDE2LCAyMDIwIGF0IDk6MTYgQU0gS2lyc2hlciwgSmVmZnJleSBUDQo8bWFpbHRv
OmplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4gd3JvdGU6DQo+DQo+ID4gRnJvbTogQW5kcmV3
IE1lbG5pY2hlbmtvIDxtYWlsdG86YW5kcmV3QGRheW5peC5jb20+DQo+ID4gU2VudDogU2F0dXJk
YXksIEFwcmlsIDExLCAyMDIwIDEyOjU2DQo+ID4gVG86IEtpcnNoZXIsIEplZmZyZXkgVCA8bWFp
bHRvOmplZmZyZXkudC5raXJzaGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBQbHMgcHJvdmlk
ZSBzb21lIGFkdmljZSAtIGUxMDAwZSBMaW51eCBsaW5rIGRvd24NCj4gPg0KPiA+IFlvLA0KPiA+
IEknbSBhIGh1bWJsZSBsaW51eCBkZXZlbG9wZXIsIGN1cnJlbnRseSBJJ20gcmVzZWFyY2hpbmcg
dGhlIGlzc3VlIHdpdGggZTEwMDBlIGRyaXZlciB0aGF0IGNhbid0IGhhbmRsZSAibGluayBkb3du
IiBvbiBMaW51eCBndWVzdChodHRwczovL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dp
P2lkPTE3MDc0NDEpLg0KPiA+IEZvciBub3cgSSd2ZSBmb3VuZCB0aGF0IHFlbXUgY2FuJ3QgcmFp
c2UgTFNDIGludGVycnVwdHMuIEJ1dCwgb24gV2luZG93cyBndWVzdHMgdGhlIGlzc3VlIGRvZXNu
J3QgcmVwcm9kdWNlLg0KDQpXaGF0IGRvIHlvdSBtZWFuIHRoYXQgUUVNVSBjYW5ub3QgcmFpc2Ug
TFNDIGludGVycnVwdHM/IExvb2tpbmcgb3Zlcg0KdGhlIGxhdGVzdCBRRU1VIGNvZGUgaXQgbG9v
a3MgbGlrZSBpdCBpcyBhdHRlbXB0aW5nIHRvIGRvIGp1c3QgdGhhdCBpbg0KZTEwMDBlX2NvcmVf
c2V0X2xpbmtfc3RhdHVzKGh0dHBzOi8vbHhyLm1pc3NpbmdsaW5rZWxlY3Ryb25pY3MuY29tL3Fl
bXUrdjQuMC4wL2h3L25ldC9lMTAwMGVfY29yZS5jI0wxODAwKS4NCg0KPiA+IEkndmUgcmVzZWFy
Y2hlZCBzcGVjIGFuZCB0aGUgZHJpdmVyIGFuZCBmb3Igbm93LCBteSBtYWluIHN1c3BpY2lvbiBp
cyBzdGlsbCB0aGUgaXNzdWUgaW4gcWVtdSBhbmQgSSBoYXZlIGZldyBoYWNrcyBmb3IgImZpeGlu
ZyIuDQo+ID4gQnV0IGJlY2F1c2Ugb24gV2luZG93cyBndWVzdHMgdGhhdCBpc3N1ZSB3YXNuJ3Qg
cmVwcm9kdWNlZCBhbmQgSSBkb24ndCBoYXZlIGEgInJlYWwiIGRldmljZSAtIEkgaGF2ZSBhIHF1
ZXN0aW9uOg0KPiA+IERvZXMgInJlYWwiIGUxMDAwZSB3aXRoIExpbnV4IGRyaXZlciBkZXRlY3Qg
Y2FibGUgcmVtb3Zpbmc/IFNob3VsZCBJIGxvb2sgbW9yZSB0aGUgZHJpdmVyPw0KDQpZZXMsIHJl
YWwgZTEwMDBlIGhhcmR3YXJlIGRvZXMgZGV0ZWN0IGxpbmsgY2hhbmdlcyBvbiBjYWJsZSByZW1v
dmFsLg0KDQo+ID4gQ3VycmVudGx5IEkgaGF2ZSBvbmUgaGFjayBmb3IgdGhlIGRyaXZlciB0aGF0
IHdvdWxkICJmaXgiIHRoZSBpc3N1ZShzbWFsbCBkaWZmZXJlbmNlcyBpbiBpbnRlcnJ1cHQgY2xl
YXJpbmcpLg0KPg0KPiBBZGRpbmcgdGhlIGUxMDAwZSBkZXZlbG9wZXJzIGFuZCB0aGUgSW50ZWwg
V2lyZWQgTEFOIG1haWxpbmcgbGlzdC4uLg0KDQpTbyB0aGUgZmFjdCB0aGF0IHlvdSBuZWVkIHRv
IGhhY2sgb24gdGhlIGludGVycnVwdCBjbGVhcmluZyB0ZWxscyBtZQ0KdGhhdCBvZGRzIGFyZSB5
b3UgcHJvYmFibHkgZG9uJ3QgaGF2ZSBhIGdvb2QgZW11bGF0aW9uIG9mIHRoZQ0KaW50ZXJydXB0
IHJlZ2lzdGVyIGJlaGF2aW9yLiBXZSBoYXZlIGhhZCB0byBtYWtlIGEgbnVtYmVyIG9mIGNoYW5n
ZXMNCnRvIHRoYXQgY29kZSB0byB3b3JrIGFyb3VuZCB0aGUgcXVpcmtzIGluIHRoZSBoYXJkd2Fy
ZS4gSSB3b3VsZG4ndA0KZmluZCBpdCB0b28gc3VycHJpc2luZyBpZiB0aGUgZW11bGF0aW9uIGJl
aGF2aW9yIGRpZG4ndCBtYXRjaCB1cCBqdXN0DQpiZWNhdXNlIHRoZXJlIGhhdmUgYmVlbiBhIG51
bWJlciBvZiBlcnJhdGEgdGhhdCBoYXZlIGhhZCB0byBiZSB3b3JrDQphcm91bmQuDQoNCklmIHlv
dSBjb3VsZCBpbmNsdWRlIHRoZSBjb2RlIGZvcm0geW91ciAiZml4IiB0aGF0IG1pZ2h0IGJlIHVz
ZWZ1bCBhcw0KdGhhdCB3b3VsZCB0ZWxsIHVzIHdoYXQgYmVoYXZpb3IgaXQgaXMgeW91IGFyZSBy
dW5uaW5nIGludG8gdGhhdCBuZWVkcw0KdG8gYmUgc29ydGVkIG91dCBiZXR3ZWVuIFFFTVUgYW5k
IHRoZSBoYXJkd2FyZS4NCg0KVGhhbmtzLg0KDQotIEFsZXgNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
