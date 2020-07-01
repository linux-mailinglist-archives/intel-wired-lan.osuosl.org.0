Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C398B211593
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 00:02:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5729E896C0;
	Wed,  1 Jul 2020 22:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tM2tII7nMQOY; Wed,  1 Jul 2020 22:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B746896C7;
	Wed,  1 Jul 2020 22:02:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F23B21BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:02:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ED7398A835
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQqlgP34Gr3s for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2020 22:02:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B0D88A82C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2020 22:02:35 +0000 (UTC)
IronPort-SDR: 72KdY6eNndq/EE3gR0krcajHP/Nws8Vj7XTGhEY2zvZdw1Bsy2/vKCDmuXl7ggMldCgcQqztZU
 F2/jzmz452mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126817410"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; 
 d="scan'208,217";a="126817410"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 15:02:34 -0700
IronPort-SDR: CmrGna9elxYm20fxA28zbqlHRngp7YTR9MCI0IGz/G8fQ0ukZWdTRk/iQ23DS6MYWrEOOnEVUK
 9FHsUlpKCDjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; 
 d="scan'208,217";a="481754466"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga005.fm.intel.com with ESMTP; 01 Jul 2020 15:02:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 15:02:34 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 15:02:34 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 1 Jul 2020 15:02:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 1 Jul 2020 15:02:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zh5UsSjdscsh8gsdp/TM9kLJw6ST7T9rBY+Vcnbv6WNJvAKpqzFl1eqNPzd6i3YM8NyZi191z9m1dBmiqVU2hftsRtnJiHYYTTWyabnV0/kSOikab8fOMPplo1sz4Os1TNwN1yE3q0fOpDb1onZlZqFZfKDUVGTu2xMyHPhOH1OtVD6yVGdy8ofvtWKL4HpxL7ar2f78qwFuiF6qsGdc8zdiMWPOfWP+dij77wUzldVHkCrg3icpNLbrPHqXjlqKKYBhTF23nvyvbopaEvUUpkUmYe8LHVAe8/Id/xsOACuruvltnWXk0C9wEzpRgyl9P53ee02ogjVu8Ph/FY8zoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/x076VMYyxT0h8RKGVHjykSI7C92iKt1uRv3FYsZv4=;
 b=jAjYsKASju6+ADfikoAYzj9cJCjYGtipPdP/oLuYTVf7hdNO+dBIBOs91GWx92QMwUlXjJ3inkAVFXh3djX6rN259m0x5fmTsQcLWA2K2dJyQGaxMvdtfulFe96Gu4TomAksLNeIoBSEoPuEopQttzWOmrKrNU0kfymPzp9tb2EU9vWZXRvAQtFgbo+Tepau6iczmPRolLr3I9btaWjj7XYiF7mMr5k2V2FXhd1xn5tU/sNuR81p7vgbon6MmuOcq+XnEE7hk+RXNL3Kg7kDbgcyYWY7ofm5Y+oWMpYS+7sa8GHvMEjvqJnuzFr6+ziF+6wF0LwaYUcudAQ/b61w5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/x076VMYyxT0h8RKGVHjykSI7C92iKt1uRv3FYsZv4=;
 b=L+bWW+Z3eZYz42+c91/H32QMt/kvu646rGKXBQPhEdlxCXVRObagmvLbhegxShw9OeYC/rTJSi6FUpPtOvoGLSI4n+K0z77VZjUDW1bEyiH0rb+UdRrEGQWDLy5smUn2K78dlNWzLY0SxhoUFjvu3GJ4aMsZijwdmLR3HwL/6qY=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB3975.namprd11.prod.outlook.com (2603:10b6:a03:184::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.23; Wed, 1 Jul
 2020 22:02:33 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::7da4:f53b:f22a:e474]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::7da4:f53b:f22a:e474%4]) with mapi id 15.20.3153.022; Wed, 1 Jul 2020
 22:02:33 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Stewart <pstew@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] ixgbe-x550 link detection after boot
Thread-Index: AQHWT+w1BTxnClN1GkKdHcPdYl7T2qjzRpxw
Date: Wed, 1 Jul 2020 22:02:32 +0000
Message-ID: <BYAPR11MB3606500178A5979CDCF5BCCAEF6C0@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMcMvsjtsz3A+f-wA4yS7w+3dTaKO9tgCjeWPz_eAC5rMRHTNw@mail.gmail.com>
In-Reply-To: <CAMcMvsjtsz3A+f-wA4yS7w+3dTaKO9tgCjeWPz_eAC5rMRHTNw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27317ce3-2c87-4354-0727-08d81e0a74c1
x-ms-traffictypediagnostic: BY5PR11MB3975:
x-microsoft-antispam-prvs: <BY5PR11MB3975AE624F64C4B031536EC0EF6C0@BY5PR11MB3975.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04519BA941
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P2E+J/6oA20uL5avFEWYSqByDIjtP+lKi80Rk9bHAxK+YM03QEXMsM0k5XH+jtKCaQYtAn/sL1ipT3BMJja7SlJ3oLvBa8/okmVIf/9xk9PSQnXCxvvpz/N0awkiL+RxsqvdhftESvBbkxZ6q06pF0YPW2Vb/8Qwe/f3I3z8tmZabqsI1VzG0xG+vVO2PBOgtUBpaKrte7ANszzwa9Awrf9tV9t+0tvtOiFZ24S5Sl4sJWWJaZTx+o3qREZYDow5FOY3gYwvoqCtRAeCnRwd6I35n3Z3xC8CAxHbPTn4xaJhKzDn7zi9dALffrZzCHy0s2ME+oCaiBPVedWpHilbDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(366004)(136003)(39860400002)(71200400001)(7696005)(52536014)(316002)(86362001)(33656002)(110136005)(55016002)(8676002)(6506007)(53546011)(5660300002)(9686003)(83380400001)(26005)(66446008)(66556008)(186003)(64756008)(2906002)(66476007)(478600001)(66946007)(76116006)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0jUT8bwbt0my4voSraZJtIpoAueEyr4b/2huLBNI+uMPRq4so1bagPx+srtFwtNAMZ2IXFaigLIpdY2ZmK9mQPVDb+tb5fALMg9gPj5vg8tOSyzaXXjKDIl366P5mYlSfNBzPLPtJQma/rifzsWoEEeKsTJfc7W+0/8Q2W+jQmdrLM/3AxVpL/vPcj9zuK6p8vFqXzXNPDXXJTw186RRNywfRL9hNqyBxa3Q01NMXovmVxNZo75m0heuRydCgk4q1i4AoOi2XRNd1lwvnNxoxNXOXWTVfCCorTVKWpDG4ElQxyK3dM8wkjSJkLTQF+nXXI4r7DCHSFuNX3/IPyakCTZ0FzPjTHefoaO1aBZQ6NwrC/bisizFbSie0AQfncyi3D0Q3cXbx4t5zcoQ/h/7R/DndQ3JV8lkT+tfoSb2XKEBIzK64JNRrJ5zWVjMbLU3zrlxbQtySiTC5So8lwW6636n7NS9GvGwSPJXNyRRmeg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27317ce3-2c87-4354-0727-08d81e0a74c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2020 22:02:32.8849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mwoDbCg7/+L+TWfdLOZ2RtQIQ/Pa4Vu4jfLu5PYut/B06qtFUx1eCXRYK0NH5itS/nxcAQt6vBYWaVZq9J4WJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] ixgbe-x550 link detection after boot
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
Content-Type: multipart/mixed; boundary="===============5935770301403497227=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============5935770301403497227==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB3606500178A5979CDCF5BCCAEF6C0BYAPR11MB3606namp_"

--_000_BYAPR11MB3606500178A5979CDCF5BCCAEF6C0BYAPR11MB3606namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhdCBkb2VzbuKAmXQgc291bmQgcmlnaHQuIERlbnZlcnRvbiBpcyB4NTUzLiBCdXQgSSBkb27i
gJl0IGdlbmVyYWxseSBkbyBTT0Mgc28gbGV0IG1lIHRyeSB0byBnZXQgc29tZW9uZSBlbHNlIHRv
IGxvb2sgYXQgdGhpcy4NCg0KVG9kZCBGdWppbmFrYQ0KU29mdHdhcmUgQXBwbGljYXRpb24gRW5n
aW5lZXINCkRhdGEgQ2VudGVyIEdyb3VwDQpJbnRlbCBDb3Jwb3JhdGlvbg0KdG9kZC5mdWppbmFr
YUBpbnRlbC5jb20NCg0KRnJvbTogSW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW4tYm91
bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYgT2YgUGF1bCBTdGV3YXJ0DQpTZW50OiBXZWRuZXNk
YXksIEp1bHkgMSwgMjAyMCAyOjA5IFBNDQpUbzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9z
bC5vcmcNClN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIGl4Z2JlLXg1NTAgbGluayBkZXRlY3Rp
b24gYWZ0ZXIgYm9vdA0KDQpIaSB0aGVyZS4gIEkgaGF2ZSBhIHN5c3RlbSB3aXRoIGEgRGVudmVy
dG9uIGJhc2VkIGNoaXBzZXQgd2hpY2ggaGFzIGEgYnVpbHQtaW4gNCBwb3J0cyBvZiAxMEdCRS4g
IEl0J3MgcHJvcGVybHkgY29uZmlndXJlZCB0byBlbnVtZXJhdGUgYXMgODA4NjoxNWM2IChJWEdC
RV9ERVZfSURfWDU1MEVNX0FfU0dNSUkpLiAgSXQgYWxzbyBzdWNjZXNzZnVsbHkgZGV0ZWN0cyBs
aW5rIHRvIGl0cyBiYWNrcGxhbmUgcGFydG5lciB3aXRoIHRoZSBzdG9jayBpeGdiZSBkcml2ZXIs
IGJ1dCBvbmx5IGlmIHRoYXQgcGFydG5lciBpcyB1cCBhbmQgcnVubmluZyBiZWZvcmUgdGhlIGRy
aXZlciBzdGFydHMgdXAuICBJZiB0aGUgRGVudmVydG9uIGNoaXBzZXQgY29tZXMgdXAgZmlyc3Qs
IG5vdGhpbmcgSSd2ZSB0cmllZCBzbyBmYXIgYXMgc3VjY2VlZGVkIGluIGhhdmluZyB0aGUgY2hp
cHNldCBkZXRlY3QgbGluay4gIEkndmUgdHJpZWQgdGhlIG5vcm1hbCAiaWZjb25maWcgZG93bi91
cCIsICJldGh0b29sIC1BIGV0aDEgYXV0b25lZyBvZmYiIGV0YywgYnV0IG5vdGhpbmcgc28gZmFy
IHNlZW1zIHRvIGRvIGFzIG11Y2ggYXMganVzdCByZWJvb3RpbmcgdGhlIHN5c3RlbS4gIEFyZSB0
aGVyZSBhbnkgaGludHMgYXMgdG8gaG93IEkgY2FuIGdldCB0aGlzIGdvaW5nPyAgSSd2ZSBhbHNv
IHRyaWVkICJody0+bWFjLm9wcy5yZXNldF9odyhodykiIGFuZCBjYWxsaW5nICJody0+bWFjLm9w
cy5zZXR1cF9saW5rKCkiIGFnYWluIGZyb20gdGhlIGtlcm5lbCBhbmQgdGhhdCBzdXJwcmlzaW5n
bHkgZGlkbid0IHdvcmsgZWl0aGVyLCBzbyBJJ20gZ2V0dGluZyBjdXJpb3VzIGFzIHRvIHdoYXQg
Y2FuIGdldCB0aGUgc3lzdGVtIHRvIHJlLWV2YWx1YXRlIGxpbmsgc3RhdGUuICBJdCdzIHJlYWxs
eSB0cnVlIHRoYXQgdGhlIExpbmtzIHN0YXR1cyByZWdpc3RlciBkb2VzIG5vdCBtYXJrIHRoZSBs
aW5rIGFzIHVwIChhcyBzaG93biBieSBldGh0b29sIC1kKS4NCg0KSWYgaXQncyBvZiBhbnkgY29u
c2VxdWVuY2UgdGhlIFNHTUlJIGxpbmsgcGFydG5lciBpcyBhIE1hcnZlbGwgODhFMTUxMi4gIE1E
SU8gaXMgbm90IGNvbm5lY3RlZC4gIEZvciBpdHMgcGFydCwgdGhlIE1hcnZlbGwgcGFydCBkZXRl
Y3RzIGxpbmsgZnJvbSB0aGUgRGVudmVydG9uIHdoZXRoZXIgb3Igbm90IHRoYXQgdW5kZXJzdGFu
ZGluZyBpcyByZWNpcHJvY2FsLg0K

--_000_BYAPR11MB3606500178A5979CDCF5BCCAEF6C0BYAPR11MB3606namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjoj
OTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KcC5tc29ub3JtYWwwLCBsaS5t
c29ub3JtYWwwLCBkaXYubXNvbm9ybWFsMA0KCXttc28tc3R5bGUtbmFtZTptc29ub3JtYWw7DQoJ
bXNvLW1hcmdpbi10b3AtYWx0OmF1dG87DQoJbWFyZ2luLXJpZ2h0OjBpbjsNCgltc28tbWFyZ2lu
LWJvdHRvbS1hbHQ6YXV0bzsNCgltYXJnaW4tbGVmdDowaW47DQoJZm9udC1zaXplOjExLjBwdDsN
Cglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5bGUxOA0K
CXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIs
c2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1z
dHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlm
O30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4w
aW4gMS4waW4gMS4waW4gMS4waW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0
aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZh
dWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwh
LS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86
aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFb
ZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxp
bms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPlRoYXQgZG9lc27igJl0IHNvdW5kIHJpZ2h0LiBEZW52ZXJ0b24gaXMgeDU1My4gQnV0
IEkgZG9u4oCZdCBnZW5lcmFsbHkgZG8gU09DIHNvIGxldCBtZSB0cnkgdG8gZ2V0IHNvbWVvbmUg
ZWxzZSB0byBsb29rIGF0IHRoaXMuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0
eWxlPSJjb2xvcjpibGFjayI+VG9kZCBGdWppbmFrYTwvc3Bhbj48L2I+PHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMi4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGltZXMgTmV3IFJvbWFuJnF1b3Q7LHNl
cmlmO2NvbG9yOmJsYWNrIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtjb2xvcjpibGFjayI+U29mdHdhcmUg
QXBwbGljYXRpb24gRW5naW5lZXI8L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrIj48bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9u
dC1zaXplOjEwLjBwdDtjb2xvcjpibGFjayI+RGF0YSBDZW50ZXIgR3JvdXA8L3NwYW4+PHNwYW4g
c3R5bGU9ImNvbG9yOmJsYWNrIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEwLjBwdDtjb2xvcjpibGFjayI+SW50ZWwg
Q29ycG9yYXRpb248L3NwYW4+PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrIj48bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48dT48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjEwLjBwdDtjb2xvcjpibGFjayI+dG9kZC5mdWppbmFrYUBpbnRlbC5jb208L3NwYW4+PC91Pjx1
PjxzcGFuIHN0eWxlPSJjb2xvcjpibGFjayI+PG86cD48L286cD48L3NwYW4+PC91PjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PGI+RnJvbTo8L2I+IEludGVsLXdpcmVkLWxhbiAmbHQ7aW50ZWwtd2lyZWQtbGFuLWJv
dW5jZXNAb3N1b3NsLm9yZyZndDsNCjxiPk9uIEJlaGFsZiBPZiA8L2I+UGF1bCBTdGV3YXJ0PGJy
Pg0KPGI+U2VudDo8L2I+IFdlZG5lc2RheSwgSnVseSAxLCAyMDIwIDI6MDkgUE08YnI+DQo8Yj5U
bzo8L2I+IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPGJyPg0KPGI+U3ViamVjdDo8
L2I+IFtJbnRlbC13aXJlZC1sYW5dIGl4Z2JlLXg1NTAgbGluayBkZXRlY3Rpb24gYWZ0ZXIgYm9v
dDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGkgdGhlcmUuJm5ic3A7IEkgaGF2ZSBh
IHN5c3RlbSB3aXRoIGEgRGVudmVydG9uIGJhc2VkIGNoaXBzZXQgd2hpY2ggaGFzIGEgYnVpbHQt
aW4gNCBwb3J0cyBvZiAxMEdCRS4mbmJzcDsgSXQncyBwcm9wZXJseSBjb25maWd1cmVkIHRvIGVu
dW1lcmF0ZSBhcyZuYnNwOzgwODY6MTVjNiAoSVhHQkVfREVWX0lEX1g1NTBFTV9BX1NHTUlJKS4m
bmJzcDsgSXQgYWxzbyBzdWNjZXNzZnVsbHkgZGV0ZWN0cyBsaW5rIHRvIGl0cyBiYWNrcGxhbmUg
cGFydG5lcg0KIHdpdGggdGhlIHN0b2NrIGl4Z2JlIGRyaXZlciwgYnV0IG9ubHkgaWYgdGhhdCBw
YXJ0bmVyIGlzIHVwIGFuZCBydW5uaW5nIGJlZm9yZSB0aGUgZHJpdmVyIHN0YXJ0cyB1cC4mbmJz
cDsgSWYgdGhlIERlbnZlcnRvbiBjaGlwc2V0IGNvbWVzIHVwIGZpcnN0LCBub3RoaW5nIEkndmUg
dHJpZWQgc28gZmFyIGFzIHN1Y2NlZWRlZCBpbiBoYXZpbmcgdGhlIGNoaXBzZXQgZGV0ZWN0IGxp
bmsuJm5ic3A7IEkndmUgdHJpZWQgdGhlIG5vcm1hbCAmcXVvdDtpZmNvbmZpZyBkb3duL3VwJnF1
b3Q7LA0KICZxdW90O2V0aHRvb2wgLUEgZXRoMSBhdXRvbmVnIG9mZiZxdW90OyBldGMsIGJ1dCBu
b3RoaW5nIHNvIGZhciBzZWVtcyB0byBkbyBhcyBtdWNoIGFzIGp1c3QgcmVib290aW5nIHRoZSBz
eXN0ZW0uJm5ic3A7IEFyZSB0aGVyZSBhbnkgaGludHMgYXMgdG8gaG93IEkgY2FuIGdldCB0aGlz
IGdvaW5nPyZuYnNwOyBJJ3ZlIGFsc28gdHJpZWQgJnF1b3Q7aHctJmd0O21hYy5vcHMucmVzZXRf
aHcoaHcpJnF1b3Q7IGFuZCBjYWxsaW5nICZxdW90O2h3LSZndDttYWMub3BzLnNldHVwX2xpbmso
KSZxdW90OyBhZ2FpbiBmcm9tIHRoZSBrZXJuZWwNCiBhbmQgdGhhdCBzdXJwcmlzaW5nbHkgZGlk
bid0IHdvcmsgZWl0aGVyLCBzbyBJJ20gZ2V0dGluZyBjdXJpb3VzJm5ic3A7YXMgdG8gd2hhdCZu
YnNwO2NhbiBnZXQgdGhlIHN5c3RlbSB0byByZS1ldmFsdWF0ZSBsaW5rIHN0YXRlLiZuYnNwOyBJ
dCdzIHJlYWxseSB0cnVlIHRoYXQgdGhlIExpbmtzIHN0YXR1cyByZWdpc3RlciBkb2VzIG5vdCBt
YXJrIHRoZSBsaW5rIGFzIHVwIChhcyBzaG93biBieSBldGh0b29sIC1kKS48bzpwPjwvbzpwPjwv
cD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwv
ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPklmIGl0J3Mgb2YgYW55IGNvbnNlcXVl
bmNlIHRoZSBTR01JSSBsaW5rIHBhcnRuZXIgaXMgYSZuYnNwO01hcnZlbGwgODhFMTUxMi4mbmJz
cDsgTURJTyBpcyBub3QgY29ubmVjdGVkLiZuYnNwOyBGb3IgaXRzIHBhcnQsIHRoZSBNYXJ2ZWxs
IHBhcnQgZGV0ZWN0cyBsaW5rIGZyb20gdGhlIERlbnZlcnRvbiZuYnNwO3doZXRoZXIgb3Igbm90
IHRoYXQgdW5kZXJzdGFuZGluZyBpcyByZWNpcHJvY2FsLjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+
DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_BYAPR11MB3606500178A5979CDCF5BCCAEF6C0BYAPR11MB3606namp_--

--===============5935770301403497227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============5935770301403497227==--
