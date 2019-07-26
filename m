Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2072477397
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6410228CA;
	Fri, 26 Jul 2019 21:44:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id axJHrxIuhX+U; Fri, 26 Jul 2019 21:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68ED223BC0;
	Fri, 26 Jul 2019 21:44:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CD421BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6981488C67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gcZO96D64jQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:44:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9EE6588C5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:44:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:44:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="161442795"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga007.jf.intel.com with ESMTP; 26 Jul 2019 14:44:51 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 14:44:50 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.99]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:44:50 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 02/12] i40e: Add drop mode
 parameter to set mac config
Thread-Index: AQHVQYOhuB31hbbhOk+jgwk6t44THabdc53g
Date: Fri, 26 Jul 2019 21:44:50 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CE68@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-2-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-2-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDI4ZGE3NjAtNDhlMy00YTljLWI1ODUtOWVjZjg3MmQ5NjM1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSm90aUdTN0t0eHpWS2QwTmZHVXQ3Z1BKcGM4RjJWXC96NERUdjZXdkwzUG0zS0Z5RTU4c21oY21uXC9EbFFEd013In0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 02/12] i40e: Add drop mode
 parameter to set mac config
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gW21h
aWx0bzppbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnXSBPbg0KPiBCZWhhbGYgT2Yg
QWxpY2UgTWljaGFlbA0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDIzLCAyMDE5IDM6MDIgQU0NCj4g
VG86IE1pY2hhZWwsIEFsaWNlIDxhbGljZS5taWNoYWVsQGludGVsLmNvbT47IGludGVsLXdpcmVk
LQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogV251Y3prbywgU3lsd2lhIDxzeWx3aWEu
d251Y3prb0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtuZXh0IFBB
VENIIFM4IDAyLzEyXSBpNDBlOiBBZGQgZHJvcCBtb2RlDQo+IHBhcmFtZXRlciB0byBzZXQgbWFj
IGNvbmZpZw0KPiANCj4gRnJvbTogU3lsd2lhIFdudWN6a28gPHN5bHdpYS53bnVjemtvQGludGVs
LmNvbT4NCj4gDQo+IFRoaXMgcGF0Y2ggYWRkcyAiZHJvcCBtb2RlIiBwYXJhbWV0ZXIgdG8gc2V0
IG1hYyBjb25maWcgQVEgY29tbWFuZC4NCj4gVGhpcyBiaXQgY29udHJvbHMgdGhlIGJlaGF2aW9y
IHdoZW4gYSBuby1kcm9wIHBhY2tldCBpcyBibG9ja2luZyBhIFRDIHF1ZXVlLg0KPiAwIOKAkyBU
aGUgUEYgZHJpdmVyIGlzIG5vdGlmaWVkLg0KPiAxIOKAkyBUaGUgYmxvY2tpbmcgcGFja2V0IGlz
IGRyb3BwZWQgYW5kIHRoZW4gdGhlIFBGIGRyaXZlciBpcyBub3RpZmllZC4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFN5bHdpYSBXbnVjemtvIDxzeWx3aWEud251Y3prb0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jIHwgIDQg
KystDQo+IC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucV9jbWQuaCB8IDI5
ICsrKysrKysrKystLS0tLS0tLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV90eXBlLmggICB8ICAxICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygr
KSwgMTUgZGVsZXRpb25zKC0pDQoNClRlc3RlZC1ieTogQW5kcmV3IEJvd2VycyA8YW5kcmV3eC5i
b3dlcnNAaW50ZWwuY29tPg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
