Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EAD3BF252
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 01:10:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B298832EB;
	Wed,  7 Jul 2021 23:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id suUMFyZnm-CF; Wed,  7 Jul 2021 23:10:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D397832E6;
	Wed,  7 Jul 2021 23:10:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0671B1BF48C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E3826400FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AHZMcpztFTaR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jul 2021 23:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0B6114015C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jul 2021 23:10:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="189086049"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="189086049"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="628184187"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 07 Jul 2021 16:10:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 16:10:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 7 Jul 2021 16:10:29 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Wed, 7 Jul 2021 16:10:29 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next 00/13] ice: implement support for
 PTP on E822 hardware
Thread-Index: AQHXbg/acsxyzCjVt0+k1cWg/nVd6qs0fTIAgAHnGQCAAT73AIAAidXA
Date: Wed, 7 Jul 2021 23:10:29 +0000
Message-ID: <cf50fcc8e81d4da6a6a361c6e61272db@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
 <2226449e-2c2c-d72b-1bd2-1a44882251fe@molgen.mpg.de>
 <e1a3cb86cb7e43d29b6b5e4663029bfe@intel.com>
 <7c977d1a-3ccb-ef70-388c-59a10af2901a@molgen.mpg.de>
In-Reply-To: <7c977d1a-3ccb-ef70-388c-59a10af2901a@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net-next 00/13] ice: implement support for
 PTP on E822 hardware
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
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5IDA3LCAyMDIxIDEy
OjUyIEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBb
SW50ZWwtd2lyZWQtbGFuXSBbbmV0LW5leHQgMDAvMTNdIGljZTogaW1wbGVtZW50IHN1cHBvcnQg
Zm9yIFBUUCBvbg0KPiBFODIyIGhhcmR3YXJlDQo+IA0KPiBEZWFyIEphY29iLA0KPiANCj4gDQo+
IFRoYW5rIHlvdSBmb3IgeW91ciByZXBseS4NCj4gDQo+IEFtIDA2LjA3LjIxIHVtIDIxOjUzIHNj
aHJpZWIgS2VsbGVyLCBKYWNvYiBFOg0KPiANCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCj4gPj4gRnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gPj4g
U2VudDogTW9uZGF5LCBKdWx5IDA1LCAyMDIxIDEyOjQ3IEFNDQo+ID4+IFRvOiBLZWxsZXIsIEph
Y29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gPj4gQ2M6IGludGVsLXdpcmVkLWxh
bkBsaXN0cy5vc3Vvc2wub3JnDQo+ID4+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBb
bmV0LW5leHQgMDAvMTNdIGljZTogaW1wbGVtZW50IHN1cHBvcnQgZm9yIFBUUA0KPiBvbg0KPiA+
PiBFODIyIGhhcmR3YXJlDQo+IA0KPiA+PiBBbSAwMS4wNy4yMSB1bSAwMjoyNyBzY2hyaWViIEph
Y29iIEtlbGxlcjoNCj4gPj4+IEV4dGVuZCB0aGUgaWNlIGRyaXZlciBpbXBsZW1lbnRhdGlvbiB0
byBzdXBwb3J0IFBUUCBmb3IgdGhlIEU4MjIgYmFzZWQNCj4gPj4+IGRldmljZXMuDQo+ID4+Pg0K
PiA+Pj4gVGhpcyBpbmNsdWRlcyBhIGZldyBjbGVhbnVwIHBhdGNoZXMsIHRoYXQgZml4IHNvbWUg
bWlub3IgaXNzdWVzIHNwb3R0ZWQNCj4gPj4+IHdoaWxlIHByZXBhcmluZyB0aGVtLiBJbiBhZGRp
dGlvbiwgdGhlcmUgYXJlIHNvbWUgc2xpZ2h0IHJlZmFjdG9ycyB0byBlYXNlDQo+ID4+PiB0aGUg
YWRkaXRpb24gb2YgRTgyMiBzdXBwb3J0LCBmb2xsb3dlZCBieSBhZGRpbmcgdGhlIG5ldyBoYXJk
d2FyZQ0KPiA+Pj4gaW1wbGVtZW50YXRpb24gaWNlX3B0cF9ody5jLg0KPiA+Pj4NCj4gPj4+IFRo
ZXJlIGFyZSBhIGZldyBtYWpvciBkaWZmZXJlbmNlcyB3aXRoIEU4MjIgc3VwcG9ydCBjb21wYXJl
ZCB0byBFODEwDQo+ID4+PiBzdXBwb3J0Og0KPiA+Pj4NCj4gPj4+ICopIFRoZSBFODIyIFBIWSBp
cyBhIGJpdCBkaWZmZXJlbnQgYW5kIHJlcXVpcmVzIGEgbW9yZSBjb21wbGV4DQo+ID4+PiBpbml0
aWFsaXphdGlvbiBwcm9jZWR1cmUgdGhhdCByZXF1aXJlcyBkZWxheWluZyB0aGUgUEhZIHN0YXJ0
IHVudGlsIGxpbmsgaXMNCj4gPj4+IHVwDQo+ID4+DQo+ID4+IEl04oCZZCBiZSBncmVhdCwgaWYg
eW91IGdhdmUgY29uY3JldGUgbnVtYmVycy4NCj4gPj4NCj4gPg0KPiA+IENvbmNyZXRlIG51bWJl
cnMgb24gd2hpY2ggcGFydD8gSSdtIG5vdCBzdXJlIGlmIHdlIGhhdmUgY29uY3JldGUNCj4gPiBu
dW1iZXJzIG9uIGV2ZXJ5dGhpbmcgaGVyZS4gRm9yIHRoZSBjYWxpYnJhdGlvbiBwcm9jZXNzLCBh
Y2NvcmRpbmcgdG8NCj4gPiB0aGUgZGF0YSBzaGVldCBJIGhhdmUsIGl0IGluZGljYXRlcyB0aGF0
IHVuY2FsaWJyYXRlZCB0aW1lc3RhbXBzDQo+ID4gKGkuZS4gaW4gYnlwYXNzIG1vZGUpIGhhdmUg
YW4gZXJyb3Igb2YgdXAgdG8gMSBjbG9jayBjeWNsZSBhbmQNCj4gPiBjYWxpYnJhdGVkIHRpbWVz
dGFtcHMgc2hvdWxkIGhhdmUgYW4gZXJyb3Igb2YgbGVzcyB0aGFuIDEvOHRoIG9mIGENCj4gPiBj
bG9jayBjeWNsZS4gSGVyZSBjbG9jayBjeWNsZSByZWZlcnMgdG8gdGhlIGxlbmd0aCBvZiBvbmUg
dGljayBvbiB0aGUNCj4gPiBjbG9jayBzb3VyY2UsIGFuZCBlcnJvciByZWZlcnMgdG8gZGlmZmVy
ZW5jZSBiZXR3ZWVuIGFjdHVhbCBzdGFydCBvZg0KPiA+IHJlY2VwdGlvbiBvciB0cmFuc21pc3Np
b24gdnMgdGltZSBvZiB3aGVuIHRoZSB0aW1zdGFtcCBpcyBjYXB0dXJlZC4gSQ0KPiA+IHVuZm9y
dHVuYXRlbHkgYW0gbm90IGF0IGFsbCBzdXJlIGhvdyB0aGlzIHdhcyBtZWFzdXJlZCBieSB0aGUN
Cj4gPiBoYXJkd2FyZSBmb2xrcy4uLg0KPiBUaGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4g
SSBtZWFudCwgaG93IGJpZyB0aGUgZGVsYXkgaXMgdW50aWwgdGhlDQo+IGxpbmsgaXMgdXAuDQo+
IA0KDQoNCkFoLCBzb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbi4gU28gdGhlcmUncyB0d28gdGhpbmdz
IGhlcmUsIGFuZCBJJ2xsIHJld29yZCB0aGlzIGJsb2NrIGEgYml0IGluIG15IG5leHQgc3VibWlz
c2lvbi4NCg0KU28gZmlyc3QsIHdlIGFyZSB3YWl0aW5nIHVudGlsIGhhcmR3YXJlIGxpbmsgaXMg
dXAsIHdoaWNoIGNvdWxkIGJlIGRvd24gZHVlIHRvIGZhY3RvcnMgb3V0c2lkZSBvdXIgY29udHJv
bCBzdWNoIGFzIG5vIGNhYmxlLCBpbiB3aGljaCBjYXNlIGl0IGlzIGdvaW5nIHRvIGJlIGRvd24g
dW50aWwgYSBjYWJsZSBpcyBwbHVnZ2VkIGluIGV0Yy4gSSBoYXZlIG5vIGRhdGEgb24gaG93IGxv
bmcgaXQgdGFrZXMgbGluayB0byBnbyB1cCBhZnRlciB0aGUgY2FibGUgaXMgaW5zZXJ0ZWQuIFRo
aXMgaXNuJ3QgcmVhbGx5IGEgcHJvYmxlbSBmb3IgZ2VuZXJhbCB1c2UgdGhvdWdoLCBhcyB0aGUg
ZGVsYXkgaXMgbGlrZWx5IHRvIGJlIGxvdyB3aGVuIGNvbXBhcmVkIHRvIG9ic2VydmFibGUgdXNl
ciBpbnRlcmFjdGlvbi4gVGhlIGlzc3VlIGlzIHRoYXQgaWYgdGhlcmUgaXMgbm8gbGluayB3ZSBj
YW4ndCBzdGFydCB0aGUgY2FsaWJyYXRpb24gcHJvY2Vzcy4gVGhlIGV4cGVjdGF0aW9uIGhlcmUg
aXMgdGhhdCBlaXRoZXIgbGluayBpcyB1cCwgb3IgaXQgaXMgZG93biBkdWUgdG8gbm8gY2FibGUs
IG5vIGxpbmsgcGFydG5lciwgb3Igc2ltaWxhci4NCg0KSW4gYWRkaXRpb24sIEkgZ3Vlc3Mgbm90
IGNvdmVyZWQgaGVyZSwgdGhhdCBJIHdpbGwgZXhwYW5kIG9uLCBpcyB0aGF0IHRoZSBjYWxpYnJh
dGlvbiBwcm9jZXNzIGl0c2VsZiByZXF1aXJlcyBkYXRhIGZyb20gdGhlIGZpcnN0IHNlbnQgYW5k
IHJlY2VpdmVkIHBhY2tldHMsIHdoaWNoIGFyZSBvdXRzaWRlIHRoZSBjb250cm9sIG9mIHRoZSBk
cml2ZXIsIGFuZCBjb3VsZCBlYXNpbHkgYmUgYSBsb25nIHRpbWUgdW50aWwgdGhlIGZpcnN0IHBh
Y2tldHMgYXJlIHNlbnQuIFdlIGhhbmRsZSB0aGlzIGJ5IGVuYWJsaW5nIHRoZSBQSFkgaW4gYSBi
eXBhc3MgbW9kZSB0aGF0IGVuYWJsZXMgdGhlIHRpbWVzdGFtcHMgaW1tZWRpYXRlbHkgd2l0aCBh
IHNsaWdodGx5IHJlZHVjZWQgYWNjdXJhY3kgZHVlIHRvIG1pc3NpbmcgY2FsaWJyYXRpb24gZGF0
YS4NCg0KSSdsbCByZXBocmFzZSB0aGlzIHNlY3Rpb24gYW5kIGRvIG15IGJlc3QgdG8gY2xhcmlm
eSBpdCBpbiB2MyB3aGljaCBJJ20gc2VuZGluZyBzb29uLg0KDQpUaGFua3MsDQpKYWtlDQoNCj4g
DQo+IEtpbmQgcmVnYXJkcywNCj4gDQo+IFBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
