Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D222205C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 May 2019 00:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFE2286B81;
	Fri, 17 May 2019 22:36:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8XLYlvh--VsQ; Fri, 17 May 2019 22:36:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4723B86B85;
	Fri, 17 May 2019 22:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2F01BF997
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D19A86B2D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDYR3nHKIQ29 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 May 2019 22:36:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5801486B2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 May 2019 22:36:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 15:36:48 -0700
X-ExtLoop1: 1
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 15:36:47 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.194]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 15:36:47 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH][next] i40e: mark expected switch
 fall-through
Thread-Index: AQHVAGBkv65pMyI0KkarzT0dRkZJ76ZwASjQ
Date: Fri, 17 May 2019 22:36:47 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DB7B9@ORSMSX104.amr.corp.intel.com>
References: <20190501205541.GA17995@embeddedor>
In-Reply-To: <20190501205541.GA17995@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzdlNDk2ZGQtODAyMS00MTYwLTlhMTktODBjYTI2MGM0ZmNmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid3RIMGdTUzB1M1FMd3NSNDBsc1hsc2JzOVlTb1BSYVZvZEs3WVlCOTY4bEVQVjFNcU9cL2R2QlV4WmlZd2NVU3EifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next] i40e: mark expected switch
 fall-through
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
R3VzdGF2byBBLiBSLiBTaWx2YQ0KPiBTZW50OiBXZWRuZXNkYXksIE1heSAxLCAyMDE5IDE6NTYg
UE0NCj4gVG86IEtpcnNoZXIsIEplZmZyZXkgVCA8amVmZnJleS50LmtpcnNoZXJAaW50ZWwuY29t
PjsgRGF2aWQgUy4gTWlsbGVyDQo+IDxkYXZlbUBkYXZlbWxvZnQubmV0Pg0KPiBDYzogbmV0ZGV2
QHZnZXIua2VybmVsLm9yZzsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IGxpbnV4
LQ0KPiBrZXJuZWxAdmdlci5rZXJuZWwub3JnOyBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVt
Lm9yZz4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIXVtuZXh0XSBpNDBlOiBt
YXJrIGV4cGVjdGVkIHN3aXRjaCBmYWxsLQ0KPiB0aHJvdWdoDQo+IA0KPiBJbiBwcmVwYXJhdGlv
biB0byBlbmFibGluZyAtV2ltcGxpY2l0LWZhbGx0aHJvdWdoLCBtYXJrIHN3aXRjaCBjYXNlcyB3
aGVyZQ0KPiB3ZSBhcmUgZXhwZWN0aW5nIHRvIGZhbGwgdGhyb3VnaC4NCj4gDQo+IFRoaXMgcGF0
Y2ggZml4ZXMgdGhlIGZvbGxvd2luZyB3YXJuaW5nOg0KPiANCj4gZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jOiBJbiBmdW5jdGlvbiDigJhpNDBlX3J1bl94ZHBfemPi
gJk6DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYzoyMTc6Mzog
d2FybmluZzogdGhpcyBzdGF0ZW1lbnQNCj4gbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1m
YWxsdGhyb3VnaD1dDQo+ICAgIGJwZl93YXJuX2ludmFsaWRfeGRwX2FjdGlvbihhY3QpOw0KPiAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fg0KPiBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pNDBlL2k0MGVfeHNrLmM6MjE4OjI6IG5vdGU6IGhlcmUNCj4gICBjYXNlIFhEUF9B
Qk9SVEVEOg0KPiAgIF5+fn4NCj4gDQo+IEluIHByZXBhcmF0aW9uIHRvIGVuYWJsaW5nIC1XaW1w
bGljaXQtZmFsbHRocm91Z2gsIG1hcmsgc3dpdGNoIGNhc2VzIHdoZXJlDQo+IHdlIGFyZSBleHBl
Y3RpbmcgdG8gZmFsbCB0aHJvdWdoLg0KPiANCj4gVGhpcyBwYXRjaCBmaXhlcyB0aGUgZm9sbG93
aW5nIHdhcm5pbmc6DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxn
dXN0YXZvQGVtYmVkZGVkb3IuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV94c2suYyB8IDEgKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspDQoNClRlc3RlZC1ieTogQW5kcmV3IEJvd2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29t
Pg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
