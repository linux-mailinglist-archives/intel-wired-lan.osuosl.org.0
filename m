Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9934D36DF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 03:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 484FB86D8A;
	Fri, 11 Oct 2019 01:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2O2jwqcGu0ZZ; Fri, 11 Oct 2019 01:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E00C86D8D;
	Fri, 11 Oct 2019 01:23:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEE961BF317
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DB3786D84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zeH2xQy5Qk5q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 01:23:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D2A5E86D20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 01:23:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:23:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="219232766"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga004.fm.intel.com with ESMTP; 10 Oct 2019 18:23:26 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 10 Oct 2019 18:23:26 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.9]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.55]) with mapi id 14.03.0439.000;
 Thu, 10 Oct 2019 18:23:25 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: =?utf-8?B?Sm9uYXRoYW4gTmV1c2Now6RmZXI=?= <j.neuschaefer@gmx.net>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Thread-Topic: [PATCH] Documentation: networking: device drivers: Remove
 stray asterisks
Thread-Index: AQHVeTOVj6HxC0KSAUmxu0Nx3AY1c6dUsk4A
Date: Fri, 11 Oct 2019 01:23:25 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9714C898@ORSMSX103.amr.corp.intel.com>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
In-Reply-To: <20191002150956.16234-1-j.neuschaefer@gmx.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGM4OTUyYzQtODQzOC00NGZiLWE2ZjQtN2RkNDc2Y2VjMmZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieXVBU1gzaUlDRGFnWHZHQnE2RDA1SkdmYkxFdW96MGVqYUdoMGY2dFhoQlE1V3RPT2hPbFZkd0FLYjN1Y3F0NyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Pensando Drivers <drivers@pensando.io>, Shannon Nelson <snelson@pensando.io>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBGcm9tOiBuZXRkZXYtb3duZXJAdmdlci5rZXJuZWwub3JnIFttYWlsdG86bmV0ZGV2LW93bmVy
QHZnZXIua2VybmVsLm9yZ10NCj4gT24gQmVoYWxmIE9mIEpvbmF0aGFuIE5ldXNjaMOkZmVyDQo+
IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciAyLCAyMDE5IDg6MTAgQU0NCj4gVG86IGxpbnV4LWRv
Y0B2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6IEpvbmF0aGFuIE5ldXNjaMOkZmVyIDxqLm5ldXNjaGFl
ZmVyQGdteC5uZXQ+OyBLaXJzaGVyLCBKZWZmcmV5IFQNCj4gPGplZmZyZXkudC5raXJzaGVyQGlu
dGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47DQo+IEpvbmF0
aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+OyBTaGFubm9uIE5lbHNvbiA8c25lbHNvbkBwZW5z
YW5kby5pbz47DQo+IFBlbnNhbmRvIERyaXZlcnMgPGRyaXZlcnNAcGVuc2FuZG8uaW8+OyBpbnRl
bC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsNCj4gbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0hdIERvY3VtZW50
YXRpb246IG5ldHdvcmtpbmc6IGRldmljZSBkcml2ZXJzOiBSZW1vdmUgc3RyYXkNCj4gYXN0ZXJp
c2tzDQo+IA0KPiBUaGVzZSBhc3Rlcmlza3Mgd2VyZSBvbmNlIHJlZmVyZW5jZXMgdG8gYSBsaW5l
IHRoYXQgc2FpZDoNCj4gICAiKiBPdGhlciBuYW1lcyBhbmQgYnJhbmRzIG1heSBiZSBjbGFpbWVk
IGFzIHRoZSBwcm9wZXJ0eSBvZiBvdGhlcnMuIg0KPiBCdXQgbm93LCB0aGV5IHNlcnZlIG5vIHB1
cnBvc2U7IHRoZXkgY2FuIG9ubHkgaXJyaXRhdGUgdGhlIHJlYWRlci4NCj4gDQo+IEZpeGVzOiBk
ZTNlZGFiNDI3NmMgKCJlMTAwMDogdXBkYXRlIFJFQURNRSBmb3IgZTEwMDAiKQ0KPiBGaXhlczog
YTNmYjY1NjgwZjY1ICgiZTEwMC50eHQ6IENsZWFudXAgbGljZW5zZSBpbmZvIGluIGtlcm5lbCBk
b2MiKQ0KPiBGaXhlczogZGE4YzAxYzQ1MDJhICgiZTEwMDBlLnR4dDogQWRkIGUxMDAwZSBkb2N1
bWVudGF0aW9uIikNCj4gRml4ZXM6IGYxMmE4NGE5ZjY1MCAoIkRvY3VtZW50YXRpb246IGZtMTBr
OiBBZGQga2VybmVsIGRvY3VtZW50YXRpb24iKQ0KPiBGaXhlczogYjU1YzUyYjE5MzhjICgiaWdi
LnR4dDogQWRkIGlnYiBkb2N1bWVudGF0aW9uIikNCj4gRml4ZXM6IGM0ZTliNTZlMjQ0MiAoImln
YnZmLnR4dDogQWRkIGlnYnZmIERvY3VtZW50YXRpb24iKQ0KPiBGaXhlczogZDcwNjRmNGMxOTJj
ICgiRG9jdW1lbnRhdGlvbi9uZXR3b3JraW5nLzogVXBkYXRlIEludGVsIHdpcmVkIExBTg0KPiBk
cml2ZXIgZG9jdW1lbnRhdGlvbiIpDQo+IEZpeGVzOiBjNGI4YzAxMTEyYTEgKCJpeGdiZXZmLnR4
dDogVXBkYXRlIGl4Z2JldmYgZG9jdW1lbnRhdGlvbiIpDQo+IEZpeGVzOiAxZTA2ZWRjYzJmMjIg
KCJEb2N1bWVudGF0aW9uOiBpNDBlOiBQcmVwYXJlIGRvY3VtZW50YXRpb24gZm9yIFJTVA0KPiBj
b252ZXJzaW9uIikNCj4gRml4ZXM6IDEwNWJmMmZlNmIzMiAoImk0MGV2ZjogYWRkIGRyaXZlciB0
byBrZXJuZWwgYnVpbGQgc3lzdGVtIikNCj4gRml4ZXM6IDFmYWU4NjliY2YzZCAoIkRvY3VtZW50
YXRpb246IGljZTogUHJlcGFyZSBkb2N1bWVudGF0aW9uIGZvciBSU1QNCj4gY29udmVyc2lvbiIp
DQo+IEZpeGVzOiBkZjY5YmE0MzIxN2QgKCJpb25pYzogQWRkIGJhc2ljIGZyYW1ld29yayBmb3Ig
SU9OSUMgTmV0d29yayBkZXZpY2UNCj4gZHJpdmVyIikNCj4gU2lnbmVkLW9mZi1ieTogSm9uYXRo
YW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5ldD4NCj4gLS0tDQo+ICAuLi4vbmV0
d29ya2luZy9kZXZpY2VfZHJpdmVycy9pbnRlbC9lMTAwLnJzdCAgICAgICB8IDE0ICsrKysrKyst
LS0tLS0tDQo+ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9pbnRlbC9lMTAwMC5yc3Qg
ICAgICB8IDEyICsrKysrKy0tLS0tLQ0KPiAgLi4uL25ldHdvcmtpbmcvZGV2aWNlX2RyaXZlcnMv
aW50ZWwvZTEwMDBlLnJzdCAgICAgfCAxNCArKysrKysrLS0tLS0tLQ0KPiAgLi4uL25ldHdvcmtp
bmcvZGV2aWNlX2RyaXZlcnMvaW50ZWwvZm0xMGsucnN0ICAgICAgfCAxMCArKysrKy0tLS0tDQo+
ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9pbnRlbC9pNDBlLnJzdCAgICAgICB8ICA4
ICsrKystLS0tDQo+ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9pbnRlbC9pYXZmLnJz
dCAgICAgICB8ICA4ICsrKystLS0tDQo+ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9p
bnRlbC9pY2UucnN0ICAgICAgICB8ICA2ICsrKy0tLQ0KPiAgLi4uL25ldHdvcmtpbmcvZGV2aWNl
X2RyaXZlcnMvaW50ZWwvaWdiLnJzdCAgICAgICAgfCAxMiArKysrKystLS0tLS0NCj4gIC4uLi9u
ZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2ludGVsL2lnYnZmLnJzdCAgICAgIHwgIDYgKysrLS0t
DQo+ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVycy9pbnRlbC9peGdiZS5yc3QgICAgICB8
IDEwICsrKysrLS0tLS0NCj4gIC4uLi9uZXR3b3JraW5nL2RldmljZV9kcml2ZXJzL2ludGVsL2l4
Z2JldmYucnN0ICAgIHwgIDYgKysrLS0tDQo+ICAuLi4vbmV0d29ya2luZy9kZXZpY2VfZHJpdmVy
cy9wZW5zYW5kby9pb25pYy5yc3QgICB8ICA2ICsrKy0tLQ0KPiAgMTIgZmlsZXMgY2hhbmdlZCwg
NTYgaW5zZXJ0aW9ucygrKSwgNTYgZGVsZXRpb25zKC0pDQo+IA0KDQpUZXN0ZWQtYnk6IEFhcm9u
IEJyb3duIDxhYXJvbi5mLmJyb3duQGludGVsLmNvbT4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
