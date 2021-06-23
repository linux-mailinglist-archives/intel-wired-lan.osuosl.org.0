Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 672893B192E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 13:43:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7047340215;
	Wed, 23 Jun 2021 11:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ofPZ_IDVMNNt; Wed, 23 Jun 2021 11:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 255414021F;
	Wed, 23 Jun 2021 11:43:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC83F1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 11:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E72D440211
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 11:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j8aY0IwTr-25 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 11:43:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89ECD40164
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 11:43:28 +0000 (UTC)
IronPort-SDR: MOwgzrgmPoButyULFUVzZfmUQ9e9ybV/1O5pDXHRekDmI+ictw41WoAwBbAhPkQqoukk1kMkxS
 Cr6mfhPGqi8A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207181273"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207181273"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:43:23 -0700
IronPort-SDR: I0EHS3KhYa8OOaBn/2/tjRsTb3dU8ob1dyQtWWTreRlw+WTPv4lYSuDzGkQ9T0k3XA9Ikx9mAh
 EcDrZoUzyk6Q==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="487273327"
Received: from unknown (HELO localhost.localdomain) ([10.102.102.63])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:43:22 -0700
Date: Wed, 23 Jun 2021 03:50:40 -0400
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <YNLn0GpjuoQ2OHuN@localhost.localdomain>
References: <20210622212134.341728-1-michal.swiatkowski@linux.intel.com>
 <c2378b90-a307-aa00-471b-247a15423527@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2378b90-a307-aa00-471b-247a15423527@molgen.mpg.de>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/12] Add switchdev
 driver model for ice driver
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBKdW4gMjMsIDIwMjEgYXQgMDc6NDg6MjlBTSArMDIwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBNaWNoYWwsCj4gCj4gCj4gQW0gMjIuMDYuMjEgdW0gMjM6MjEgc2NocmllYiBN
aWNoYWwgU3dpYXRrb3dza2k6Cj4gPiBUaGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcyBpbnRyb2R1
Y2VzIGJhc2ljIHN3aXRjaGRldiBtb2RlbAo+ID4gc3VwcG9ydCBpbiBpY2UgZHJpdmVyLiBJbXBs
ZW1lbnQgdGhlIGZvbGxvd2luZyBibG9ja3Mgb2YKPiA+IHN3aXRjaGRldiBmcmFtZXdvcms6Cj4g
PiAtIFZGIHBvcnQgcmVwcmVzZW50b3JzIGNyZWF0aW9uCj4gPiAtIGNvbnRyb2wgcGxhbmUgVlNJ
IGRlZmluaXRpb24KPiA+IC0gZXhjZXB0aW9uIHBhdGggKGEuIGsuIGEuICJzbG93LXBhdGgiKSAt
IHRvIGFsbG93IGEgdmlydHVhbAo+ID4gc3dpdGNoIG9yIGxpbnV4IGJyaWRnZSB0byByZWNlaXZl
IGFueSBwYWNrZXQgdGhhdCBkb2Vzbid0IG1hdGNoCj4gPiBhbnkgaHcgZmlsdGVyCj4gPiAtIGxp
bmsgc3RhdGUgbWFuYWdlbWVudCBvZiB2aXJ0dWFsIHBvcnRzCj4gPiAtIHF1ZXJ5IHZpcnR1YWwg
cG9ydCBzdGF0aXN0aWNzCj4gPiAKPiA+IEhhcmR3YXJlIG9mZmxvYWQgc3VwcG9ydCBpbiBzd2l0
Y2hkZXYgbW9kZSBpcyBvdXQgb2Ygc2NvcGUgb2YKPiA+IHRoaXMgcGF0Y2hzZXQuIERldmxpbmsg
aW50ZXJmYWNlIGlzIHVzZWQgdG8gdG9nZ2xlIGJldHdlZW4KPiA+IHN3aXRjaGRldiBhbmQgbGVn
YWN5ICh0aGUgZGVmYXVsdCkgbW9kZXMgb2YgdGhlIGRyaXZlci4KPiAKPiBUaGVzZSBhcmUgZ3Jl
YXQgbmV3cy4gQ291bGQgeW91IHBsZWFzZSBlbGFib3JhdGUgaW4gdGhlIHN1bW1hcnkgaG93IHRv
Cj4gc3dpdGNoIHRvIHRoZSBuZXcgbW9kZSBvZiB0aGUgZHJpdmVyPyBXaGF0IGFyZSB0aGUgYmVu
ZWZpdHMgb2Ygc3dpdGNoZGV2IGluCj4gdGhpcyBjYXNlPyBMZXNzIG1haW50ZW5hbmNlIG9yIGJl
dHRlciBwZXJmb3JtYW5jZT8KPiAKPiBTaG91bGQgdGhlIHN3aXRjaGRldiBmb2xrcyBiZSBpbnZv
bHZlZCBpbiByZXZpZXc/Cj4gCgpZb3UgY2FuIHN3aXRjaCB0byBuZXcgbW9kZSB1c2luZyBkZXZs
aW5rIHRvb2wuIENvbW1hbmRzIGFyZSBkZXNjcmliZWQgaW4KZmlyc3QgcGF0Y2guIFdlIGFyZSBz
dGlsbCB3b3JraW5nIG9uIHJlYWRtZSB3aXRoIGFsbCBpbmZvcm1hdGlvbiBhYm91dApzd2l0Y2hk
ZXYgaW4gaWNlLiBUaGUgbWFpbiBiZW5lZml0cyBpcyBiZXR0ZXIgcGVyZm9ybWFuY2UuIFdpdGgK
c3dpdGNoZGV2IFlvdSB3aWxsIGJlIGFibGUgdG8gb2ZmbG9hZCBzcGVjaWZpYyBraW5kIG9mIHJ1
bGVzIGluIGhhcmR3YXJlCnVzaW5nIHRjLXRvb2wgKG9yIE9WUykuIFRoaXMgd2lsbCBiZSBpbnRy
b2R1Y2VkIGluIGZvbGxvdyB1cCBwYXRjaHNldC4KCkkgdGhpbmsgdGhleSBzaG91bGQuIERvIFlv
dSBrbm93IGFueW9uZSB0aGF0IEkgc2hvdWxkIGFkZCB0byBDQz8KCj4gPiBDaGFuZ2Vsb2c6Cj4g
PiAgIHYyOgo+ID4gICAgKiBmaXggYnVpbGQgaXNzdWUgaW4gaWNlOiBzZXR0aW5nIGFuZCByZWxl
YXNpbmcgc3dpdGNoZGV2IGVudmlyb25tZW50Cj4gPiAgICBieSBtb3ZpbmcgY2FsbCBvZiBpY2Vf
dnNpX3NldHVwIHRvIG5leHQgcGF0Y2ggd2hpY2ggaGF2ZSBkZWZpbml0aW9uCj4gPiAgICBmb3Ig
c3dpdGNoZGV2IFZTSQo+ID4gCj4gPiBHcnplZ29yeiBOaXRrYSAoNSk6Cj4gPiAgICBpY2U6IHNl
dHRpbmcgYW5kIHJlbGVhc2luZyBzd2l0Y2hkZXYgZW52aXJvbm1lbnQKPiAKPiBJdOKAmWQgYmUg
Z3JlYXQgaWYgeW91IGNvdWxkIHVzZSB2ZXJicyBpbiBpbXBlcmF0aXZlIG1vb2QuCj4KCkkgd2ls
bCBmaXggdGhpcyBhbmQgdHJ5IHRvIHVzZSBpbXBlcmF0aXZlIG1vb2QuCgo+IAo+IEtpbmQgcmVn
YXJkcywKPiAKPiBQYXVsCj4gCj4gCj4gPiAgICBpY2U6IGludHJvZHVjZSBuZXcgdHlwZSBvZiBW
U0kgZm9yIHN3aXRjaGRldgo+ID4gICAgaWNlOiBlbmFibGUvZGlzYWJsZSBzd2l0Y2hkZXYgd2hl
biBtYW5hZ2luZyBWRnMKPiA+ICAgIGljZTogcmVidWlsZCBzd2l0Y2hkZXYgd2hlbiByZXNldHRp
bmcgYWxsIFZGcwo+ID4gICAgaWNlOiBzd2l0Y2hkZXYgc2xvdyBwYXRoCj4gPiAKPiA+IE1pY2hh
bCBTd2lhdGtvd3NraSAoNSk6Cj4gPiAgICBpY2U6IGJhc2ljIHN1cHBvcnQgZm9yIGVzd2l0Y2gg
bW9kZSBtYW5hZ2VtZW50Cj4gPiAgICBpY2U6IGludHJvZHVjZSBWRiBwb3J0IHJlcHJlc2VudG9y
Cj4gPiAgICBpY2U6IGFsbG93IHByb2Nlc3MgdmYgb3Bjb2RlcyBpbiBkaWZmZXJlbnQgd2F5cwo+
ID4gICAgaWNlOiBtYW5hZ2UgVlNJIGFudGlzcG9vZiBhbmQgZGVzdGluYXRpb24gb3ZlcnJpZGUK
PiA+ICAgIGljZTogYWxsb3cgY2hhbmdpbmcgbGFuX2VuIGFuZCBsYl9lbiBvbiBkZmx0IHJ1bGVz
Cj4gPiAKPiA+IFdvamNpZWNoIERyZXdlayAoMik6Cj4gPiAgICBpY2U6IE1vdmUgZGV2bGluayBw
b3J0IHRvIFBGL1ZGIHN0cnVjdAo+ID4gICAgaWNlOiBhZGQgcG9ydCByZXByZXNlbnRvciBldGh0
b29sIG9wcyBhbmQgc3RhdHMKPiA+IAo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9L
Y29uZmlnICAgICAgICAgICAgfCAgMTAgKwo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvTWFrZWZpbGUgICAgICAgfCAgIDQgKy0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZS5oICAgICAgICAgIHwgIDQ4ICstCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfYmFzZS5jICAgICB8ICAzNyArLQo+ID4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RldmxpbmsuYyAgfCAxMDkgKystCj4gPiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGV2bGluay5oICB8ICAgNiArLQo+ID4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Vzd2l0Y2guYyAgfCA2NTYgKysrKysrKysr
KysrKysrKysrCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRj
aC5oICB8ICA4MiArKysKPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9l
dGh0b29sLmMgIHwgIDMyICstCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfZmx0ci5jICAgICB8ICA4MCArKysKPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9mbHRyLmggICAgIHwgICA3ICsKPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2xhbl90eF9yeC5oICAgIHwgIDQzICsrCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfbGliLmMgICAgICB8IDExMiArKy0KPiA+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9saWIuaCAgICAgIHwgIDExICsKPiA+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmMgICAgIHwgIDQ3ICstCj4gPiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcmVwci5jICAgICB8IDMyOSArKysrKysrKysKPiA+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9yZXByLmggICAgIHwgIDI3ICsK
PiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyAgIHwgICAy
ICstCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfc3dpdGNoLmggICB8
ICAgNiArCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeC5jICAg
ICB8ICAgMyArCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdHhyeF9s
aWIuYyB8ICAgNCArLQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R5
cGUuaCAgICAgfCAgIDEgKwo+ID4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vfdmly
dGNobmxfcGYuYyAgfCAxOTYgKysrKystCj4gPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV92aXJ0Y2hubF9wZi5oICB8ICA0NSArKwo+ID4gICAyNCBmaWxlcyBjaGFuZ2VkLCAxODE3
IGluc2VydGlvbnMoKyksIDgwIGRlbGV0aW9ucygtKQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9lc3dpdGNoLmMKPiA+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZXN3aXRjaC5o
Cj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3JlcHIuYwo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9yZXByLmgKPiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
