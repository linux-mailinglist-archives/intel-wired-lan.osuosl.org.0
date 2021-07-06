Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 002523BDE34
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jul 2021 21:54:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6589C82F39;
	Tue,  6 Jul 2021 19:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trjNVLTaEYKU; Tue,  6 Jul 2021 19:54:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 732F482C84;
	Tue,  6 Jul 2021 19:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C52471BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C09FB828DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OonyeG1QCN8N for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jul 2021 19:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51189828AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jul 2021 19:53:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209227988"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="209227988"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 12:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="563422115"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2021 12:53:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 12:53:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 12:53:52 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Tue, 6 Jul 2021 12:53:52 -0700
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [net-next 00/13] ice: implement support for
 PTP on E822 hardware
Thread-Index: AQHXbg/acsxyzCjVt0+k1cWg/nVd6qs0fTIAgAHnGQA=
Date: Tue, 6 Jul 2021 19:53:51 +0000
Message-ID: <e1a3cb86cb7e43d29b6b5e4663029bfe@intel.com>
References: <20210701002713.3486336-1-jacob.e.keller@intel.com>
 <2226449e-2c2c-d72b-1bd2-1a44882251fe@molgen.mpg.de>
In-Reply-To: <2226449e-2c2c-d72b-1bd2-1a44882251fe@molgen.mpg.de>
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
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBKdWx5IDA1LCAyMDIxIDEyOjQ3
IEFNDQo+IFRvOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4g
Q2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50
ZWwtd2lyZWQtbGFuXSBbbmV0LW5leHQgMDAvMTNdIGljZTogaW1wbGVtZW50IHN1cHBvcnQgZm9y
IFBUUCBvbg0KPiBFODIyIGhhcmR3YXJlDQo+IA0KPiBEZWFyIEphY29iLA0KPiANCj4gDQo+IFRo
YW5rIHlvdSBmb3Igc2VuZGluZyB0aGUgcGF0Y2hlcy4NCj4gDQo+IA0KPiBBbSAwMS4wNy4yMSB1
bSAwMjoyNyBzY2hyaWViIEphY29iIEtlbGxlcjoNCj4gPiBFeHRlbmQgdGhlIGljZSBkcml2ZXIg
aW1wbGVtZW50YXRpb24gdG8gc3VwcG9ydCBQVFAgZm9yIHRoZSBFODIyIGJhc2VkDQo+ID4gZGV2
aWNlcy4NCj4gPg0KPiA+IFRoaXMgaW5jbHVkZXMgYSBmZXcgY2xlYW51cCBwYXRjaGVzLCB0aGF0
IGZpeCBzb21lIG1pbm9yIGlzc3VlcyBzcG90dGVkDQo+ID4gd2hpbGUgcHJlcGFyaW5nIHRoZW0u
IEluIGFkZGl0aW9uLCB0aGVyZSBhcmUgc29tZSBzbGlnaHQgcmVmYWN0b3JzIHRvIGVhc2UNCj4g
PiB0aGUgYWRkaXRpb24gb2YgRTgyMiBzdXBwb3J0LCBmb2xsb3dlZCBieSBhZGRpbmcgdGhlIG5l
dyBoYXJkd2FyZQ0KPiA+IGltcGxlbWVudGF0aW9uIGljZV9wdHBfaHcuYy4NCj4gPg0KPiA+IFRo
ZXJlIGFyZSBhIGZldyBtYWpvciBkaWZmZXJlbmNlcyB3aXRoIEU4MjIgc3VwcG9ydCBjb21wYXJl
ZCB0byBFODEwDQo+ID4gc3VwcG9ydDoNCj4gPg0KPiA+ICopIFRoZSBFODIyIFBIWSBpcyBhIGJp
dCBkaWZmZXJlbnQgYW5kIHJlcXVpcmVzIGEgbW9yZSBjb21wbGV4DQo+ID4gaW5pdGlhbGl6YXRp
b24gcHJvY2VkdXJlIHRoYXQgcmVxdWlyZXMgZGVsYXlpbmcgdGhlIFBIWSBzdGFydCB1bnRpbCBs
aW5rIGlzDQo+ID4gdXANCj4gDQo+IEl04oCZZCBiZSBncmVhdCwgaWYgeW91IGdhdmUgY29uY3Jl
dGUgbnVtYmVycy4NCj4gDQoNCkNvbmNyZXRlIG51bWJlcnMgb24gd2hpY2ggcGFydD8gSSdtIG5v
dCBzdXJlIGlmIHdlIGhhdmUgY29uY3JldGUgbnVtYmVycyBvbiBldmVyeXRoaW5nIGhlcmUuIEZv
ciB0aGUgY2FsaWJyYXRpb24gcHJvY2VzcywgYWNjb3JkaW5nIHRvIHRoZSBkYXRhIHNoZWV0IEkg
aGF2ZSwgaXQgaW5kaWNhdGVzIHRoYXQgdW5jYWxpYnJhdGVkIHRpbWVzdGFtcHMgKGkuZS4gaW4g
YnlwYXNzIG1vZGUpIGhhdmUgYW4gZXJyb3Igb2YgdXAgdG8gMSBjbG9jayBjeWNsZSBhbmQgY2Fs
aWJyYXRlZCB0aW1lc3RhbXBzIHNob3VsZCBoYXZlIGFuIGVycm9yIG9mIGxlc3MgdGhhbiAxLzh0
aCBvZiBhIGNsb2NrIGN5Y2xlLiBIZXJlIGNsb2NrIGN5Y2xlIHJlZmVycyB0byB0aGUgbGVuZ3Ro
IG9mIG9uZSB0aWNrIG9uIHRoZSBjbG9jayBzb3VyY2UsIGFuZCBlcnJvciByZWZlcnMgdG8gZGlm
ZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBzdGFydCBvZiByZWNlcHRpb24gb3IgdHJhbnNtaXNzaW9u
IHZzIHRpbWUgb2Ygd2hlbiB0aGUgdGltc3RhbXAgaXMgY2FwdHVyZWQuIEkgdW5mb3J0dW5hdGVs
eSBhbSBub3QgYXQgYWxsIHN1cmUgaG93IHRoaXMgd2FzIG1lYXN1cmVkIGJ5IHRoZSBoYXJkd2Fy
ZSBmb2xrcy4uLg0KDQo+IFvigKZdDQo+IA0KPiANCj4gS2luZCByZWdhcmRzLA0KPiANCj4gUGF1
bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
